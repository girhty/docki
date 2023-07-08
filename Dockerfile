FROM alpine:latest
WORKDIR /app
RUN apk add --update --no-cache redis
RUN apk add --update --no-cache nginx
COPY . .
ADD redis.conf /usr/local/etc/redis/redis.conf
ADD ./conf.d/defualt.conf /etc/nginx/conf.d/
EXPOSE 443
CMD redis-server ./redis.conf && \
    nginx -g "daemon off;"
