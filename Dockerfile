FROM alpine:latest

RUN apk add --no-cache nginx nginx-mod-rtmp

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 1935 8080

CMD ["nginx", "-g", "daemon off;"]
