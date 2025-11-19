FROM registry.access.redhat.com/ubi10/nginx-126:10.0

RUN rm -rf /opt/app-root/src/*

COPY index.html /opt/app-root/src/index.html

COPY nginx.conf /opt/app-root/etc/nginx.default.d/guestbook.conf

USER 1001

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
