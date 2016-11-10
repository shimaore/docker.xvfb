NAME := $(shell jq -r .docker_name package.json)
TAG := $(shell jq -r .version package.json)

image: Dockerfile
	docker build -t ${NAME}:${TAG} .

tests:
	echo 'No tests.'

push: image tests
	docker push ${NAME}:${TAG}
