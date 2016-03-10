DOCKER_REPO=radioastro/cuda:devel

.PHONY: build clean

all: run

build:
	    docker build -t ${DOCKER_REPO} .

run: build
	    docker run -ti ${DOCKER_REPO}

clean:
	    docker rmi ${DOCKER_REPO}
