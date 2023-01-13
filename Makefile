build:
	docker-compose build
up:
	DB_USER='root' DB_PASSWORD='' docker-compose up -d
upp:
	DB_USER='root' DB_PASSWORD='' docker-compose up
down:
	docker-compose down
serve:
	docker-compose run -e DB_USER='root' -e DB_PASSWORD='' serve /bin/bash
