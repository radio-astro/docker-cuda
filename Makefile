DOCKER_REPO=radioastro/cuda:7.5-runtime

.PHONY: build clean

all: run

build:
	    docker build -t ${DOCKER_REPO} .

run: build
	    docker run -ti ${DOCKER_REPO}

clean:
	    docker rmi ${DOCKER_REPO}
