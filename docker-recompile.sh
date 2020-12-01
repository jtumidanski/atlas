docker stop atlas-$1
docker rm atlas-$1
docker-compose -f docker-compose.yml build --no-cache $1
docker-compose -f docker-compose.yml up -d $1
