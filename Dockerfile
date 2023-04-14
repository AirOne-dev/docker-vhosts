FROM jwilder/nginx-proxy

COPY default.conf /etc/nginx/conf.d/default.conf
COPY app/ /app/
