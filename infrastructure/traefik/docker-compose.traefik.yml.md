```yml
version: '3'

services:
  traefik:
    image: "traefik:v2.5"
    container_name: "traefik"
    ports:
      - "80:80"
      - "443:443"
      # (Optional) Expose Dashboard
      - "8080:8080"  # Don't do this in production!
    volumes:
      - /etc/traefik:/etc/traefik
      - /var/run/docker.sock:/var/run/docker.sock:ro
```