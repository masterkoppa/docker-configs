FROM nginx:alpine

# Copy env variables
COPY .env /root/.env
# Copy nginx.conf template
COPY nginx.conf /etc/nginx/nginx.conf.tmpl

# Fill in the template with enviorment variables, for now only the PLEX_HOST_NAME is needed
RUN source /root/.env && cat /etc/nginx/nginx.conf.tmpl | PLEX_HOST_NAME=$PLEX_HOST_NAME envsubst > /etc/nginx/nginx.conf