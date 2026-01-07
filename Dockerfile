FROM ghcr.io/pterodactyl/panel:latest

ENV APP_ENV=production \
    APP_DEBUG=false \
    APP_URL=http://localhost:8080 \
    APP_TIMEZONE=Asia/Jakarta \
    DB_CONNECTION=mysql \
    DB_HOST=db \
    DB_PORT=3306 \
    DB_DATABASE=pterodactyl \
    DB_USERNAME=ptero \
    DB_PASSWORD=secret \
    REDIS_HOST=redis \
    REDIS_PORT=6379 \
    MAIL_DRIVER=log \
    MAIL_FROM_ADDRESS=admin@local.host \
    MAIL_FROM_NAME=Pterodactyl

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
