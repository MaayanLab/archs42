# get rid of old stuff
docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker rm $(docker ps -q -f status=exited)

docker kill archs4
docker rm archs4

docker build -f DockerfilePro -t maayanlab/archs4:cloud7 .

docker push maayanlab/archs4:cloud7
