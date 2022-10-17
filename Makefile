build:
	docker build -t intern-mysql .

up:
	docker run --name=intern-mysql -v $(shell pwd)/dump:/docker-entrypoint-initdb.d intern-mysql

down:
	docker stop intern-mysql & docker rm intern-mysql

exec:
	docker exec -it intern-mysql mysql -p123456