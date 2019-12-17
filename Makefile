build:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build

start:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

stop:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml down

bash:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web bash

restart:
	make stop
	make start

test:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml exec web python manage.py test
