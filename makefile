.PHONY: build sslcert genpwd

run:
	mkdir -p config cache media
	docker compose up -d

build:
	docker build -t certbot-renew . -f Dockerfile.Certbot

sslcert:
	docker compose -f docker-compose.ssl.yml up

genpwd:
	echo -n "ghibran:" >> .passwd
	openssl passwd -apr1  >> .passwd
