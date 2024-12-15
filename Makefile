run:
	docker-compose up -d
	docker ps


run_with_logs:
	docker-compose up

stop:
	docker-compose down

build:
	docker-compose build

remove: stop

execute:
	docker exec -it 