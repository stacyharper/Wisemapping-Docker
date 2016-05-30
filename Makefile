


default: start

start:
	docker-compose start

stop:
	docker-compose stop

restart: stop start


up:
	docker-compose up -d

kill: stop
	docker-compose kill

remove: kill
	yes | docker-compose rm

rebuild: remove
	docker-compose build
	docker-compose up -d

