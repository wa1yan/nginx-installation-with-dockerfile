FROM alpine:latest

RUN apk update && \
    apk add nginx && \
    rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/http.d/default.conf

RUN mkdir -p /var/www/html

COPY index.html /var/www/html

RUN chown -R nginx:nginx /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]