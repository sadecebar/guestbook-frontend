FROM nginx:1.25-alpine

WORKDIR /usr/share/nginx/html

RUN rm -f /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/conf.d/default.conf
