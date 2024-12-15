run:
	docker-compose up -d


run_with_logs:
	docker-compose up

stop:
	docker-compose down

build:
	docker-compose build

remove: stop

execute:
	docker exec -it 