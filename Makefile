start: stop
	docker-compose up -d
stop:
	docker-compose down
install_laravel:
	docker exec -it laravelstarterdocker_phpfpm_1 sh -c 'cd ./../laravel && laravel new'