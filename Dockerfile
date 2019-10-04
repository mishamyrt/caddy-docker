FROM alpine:latest
COPY Caddyfile /etc/Caddyfile
COPY index.html /usr/share/caddy/html/
LABEL maintainer "Mikhael Khrustik <misha@myrt.co>"
RUN set -ex && \
    apk update && \
    apk add caddy && \
    rm -rf /var/cache/apk/*
CMD ["caddy", "--conf", "/etc/Caddyfile", "--log", "stdout", "--agree=true"]

