# get rid of old stuff
docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker rm $(docker ps -q -f status=exited)

docker kill archs4dev
docker rm archs4dev

docker build -f DockerfileDev -t maayanlab/archs4dev:cloud10 .

docker push maayanlab/archs4dev:cloud10
