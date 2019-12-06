folderName = $(notdir $(CURDIR))
start: stop
	docker-compose up -d
stop:
	docker-compose down
install_laravel:
	docker exec -it $(folderName)_phpfpm_1 sh -c 'laravel new'
docker_php:
	docker exec -it $(folderName)_phpfpm_1 sh