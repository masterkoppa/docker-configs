# Plex Reverse Proxy

This docker-compose and Docker image allow us to build a
reverse proxy with access to a Plex Media Server. By
combining this image with the nginx + Let's Encrypt services
we can provide seamless Let's Encrypt HTTPS communication over the
internet to the reverse proxy.

No performance optimizations around streaming or extensive testing with
clients has been done. Use at your own risk.

## Setup Details
This setup is being used to help aleviate a double NAT setup, by having a VPN
connection from the Plex host to a public Docker host we can bypass the double NAT
issue and access Plex remotely as if there was no double NAT to begin with