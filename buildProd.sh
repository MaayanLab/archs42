# get rid of old stuff
docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker rm $(docker ps -q -f status=exited)

docker kill archs4
docker rm archs4

docker build -f DockerfilePro -t maayanlab/archs4:cloud_apache2 .

docker push maayanlab/archs4:cloud_apache2
docker run -p 5555:80 --name archs4 -it maayanlab/archs4:cloud_apache2
