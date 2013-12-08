build:
	cd nginx && sudo docker build -t foo/nginx .
	cd app && sudo docker build -t foo/app .

