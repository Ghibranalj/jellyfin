.PHONY: build sslcert genpwd

build:
	docker build -t certbot . -f Dockerfile.Certbot

sslcert:
	docker compose -f docker-compose.ssl.yml up

genpwd:
	echo -n "ghibran:" >> .passwd
	openssl passwd -apr1  >> .passwd
