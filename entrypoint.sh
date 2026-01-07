#!/bin/bash
set -e

php artisan migrate --seed --force || true

php artisan p:user:make \
  --email admin@admin.com \
  --username admin \
  --name admin \
  --password admin123 \
  --admin=1 || true

exec /init
