ECHO OFF
FOR /f %%i IN ('docker ps -a ^| grep -Po "(csrv-\d-\d)"') DO (
	docker stop atlas-%%i
	docker rm atlas-%%i
	docker-compose -f docker-compose.yml build --no-cache %%i
	docker-compose -f docker-compose.yml up -d %%i
)