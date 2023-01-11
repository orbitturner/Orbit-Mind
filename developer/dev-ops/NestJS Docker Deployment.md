
# How to write a NestJS Dockerfile optimized for production

https://www.tomray.dev/nestjs-docker-production

> [!INFO] # **STEP 1 : DOCKERFILE** 

```dockerfile
###################
# BUILD FOR LOCAL DEVELOPMENT
###################

FROM node:18-alpine As development

# Create app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure copying both package.json AND package-lock.json (when available).
# Copying this first prevents re-running npm install on every code change.
COPY --chown=node:node package*.json ./

# Install app dependencies using the `npm ci` command instead of `npm install`
RUN npm ci

# Bundle app source
COPY --chown=node:node . .

# Use the node user from the image (instead of the root user)
USER node

###################
# BUILD FOR PRODUCTION
###################

FROM node:18-alpine As build

WORKDIR /usr/src/app

COPY --chown=node:node package*.json ./

# In order to run `npm run build` we need access to the Nest CLI which is a dev dependency. In the previous development stage we ran `npm ci` which installed all dependencies, so we can copy over the node_modules directory from the development image
COPY --chown=node:node --from=development /usr/src/app/node_modules ./node_modules

COPY --chown=node:node . .

# Run the build command which creates the production bundle
RUN npm run build

# Set NODE_ENV environment variable
ENV NODE_ENV production

# Running `npm ci` removes the existing node_modules directory and passing in --only=production ensures that only the production dependencies are installed. This ensures that the node_modules directory is as optimized as possible
RUN npm ci --only=production && npm cache clean --force

USER node

###################
# PRODUCTION
###################

FROM node:18-alpine As production

# Copy the bundled code from the build stage to the production image
COPY --chown=node:node --from=build /usr/src/app/node_modules ./node_modules
COPY --chown=node:node --from=build /usr/src/app/dist ./dist

# Start the server using the production build
CMD [ "node", "dist/main.js" ]

```


> [!INFO] # **STEP 2 : DOCKER-COMPOSE** 
```docker-compose
version: '3.8'

services:
    dev:
        container_name: nestjs_api_dev
        image: nestjs-api-dev:1.0.0
        build:
            context: .
            target: development
            dockerfile: ./Dockerfile
        command: npm run start:debug
        ports:
            - 3000:3000
            - 9229:9229
        networks:
            - nesjs-network
        volumes:
            - .:/usr/src/app
            - /usr/src/app/node_modules
        restart: unless-stopped
    prod:
        container_name: nestjs_api_prod
        image: nestjs-api-prod:1.0.0
        build:
            context: .
            target: production
            dockerfile: ./Dockerfile
        command: npm run start:prod
        ports:
            - 3000:3000
            - 9229:9229
        networks:
            - nesjs-network
        volumes:
            - .:/usr/src/app
            - /usr/src/app/node_modules
        restart: unless-stopped

networks:
    nesjs-network:
```
___

## DEPLOY NESTJS WITH DOCKER AND PM2
https://medium.com/@phatdev/how-to-build-a-scalable-maintainable-application-with-nestjs-mongodb-apply-the-design-patterns-789df9782959


## From PM2 to Docker: Cluster Mode
https://maximorlov.com/from-pm2-to-docker-cluster-mode/?ref=morioh.com&utm_source=morioh.com