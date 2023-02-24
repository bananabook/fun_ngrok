all: build run
build:
	echo buidling:|figlet
	docker build -t container .
run:
	echo running:|figlet
	docker run --rm -it --name=fun_ngrok -d container 
	sleep 1
	docker cp fun_ngrok:/home/user/out .
stop:
	docker kill fun_ngrok
