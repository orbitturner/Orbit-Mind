# INSTALL DOCKER
https://docs.docker.com/engine/install/ubuntu/

# INSTALL RANCHER WITH PERSISTANCY
```
docker run -d --restart=unless-stopped --name=RANCHER \
  -p 80:80 -p 443:443 \
  -v /opt/rancher:/var/lib/rancher \
  --privileged \
  rancher/rancher:latest \
  --acme-domain ets.qualitycenter.fr
```