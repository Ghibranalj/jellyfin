.PHONY: build sslcert

build:
	docker build -t cerbot . -f Dockerfile.Certbot

sslcert:
	docker compose -f docker-compose.ssl.yml up
