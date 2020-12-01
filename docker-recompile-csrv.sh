for OUTPUT in $(docker ps -a | grep -o 'csrv-\d-\d')
do
   docker stop atlas-$OUTPUT
	docker rm atlas-$OUTPUT
   docker-compose -f docker-compose.yml build --no-cache $OUTPUT
	docker-compose -f docker-compose.yml up -d $OUTPUT
done
