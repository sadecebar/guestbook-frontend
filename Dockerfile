FROM registry.access.redhat.com/ubi10/nginx-126:10.0

COPY index.html /opt/app-root/src/index.html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
