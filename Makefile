DOCKER_USER := insertusername
DOCKER_REPO := insertrepo
DOCKER_KEY := insertkey

CONTAINER_CPUS := "1"
CONTAINER_MEMORY := 64M

node:
	node index.js
dc-up:
	docker-compose --compatibility up
d-run:
	docker build -t dumpling-image .
	docker run --rm --name lab1 --cpus=${CONTAINER_CPUS} --memory ${CONTAINER_MEMORY} -p=80:80 dumpling-image
d-push:
	docker login -u ${DOCKER_USER} -p ${DOCKER_KEY}
	docker build -t ${DOCKER_USER}/${DOCKER_REPO} .
	docker push ${DOCKER_USER}/${DOCKER_REPO}