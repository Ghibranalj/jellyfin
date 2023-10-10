#!/usr/bin/env sh


certbot certonly --webroot --webroot-path /var/www/certbot --force-renewal \
    --register-unsafely-without-email -d 'streaming.ghibranjaringan.com' --agree-tos
