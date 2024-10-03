run:
	docker-compose up -d

stop:
	docker-compose down

build:
	docker-compose build

remove: stop

execute:
	docker exec -it 