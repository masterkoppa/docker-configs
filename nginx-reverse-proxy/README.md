# Nginx Reverse Proxy + Let's Encrypt

A family of docker containers to manage nginx reverse proxy access to other docker containers.

These services will automatically look at enviorment variables for containers running in the same
docker server and automatically configure a nginx reverse proxy + Let's Encrypt SSL certs.

# Additional Resources
Work is partially based off these awesome resources:

- https://github.com/jwilder/nginx-proxy
- https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion