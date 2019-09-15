DIR := ${CURDIR}
NAME=ginza
VERSION?=0.9.0
REGISTRY?=yyaguchi

all: build

release: clean build push clean

build:
	docker build --pull -t "${REGISTRY}/${NAME}:${VERSION}" .

push:
	docker push ${REGISTRY}/${NAME}:${VERSION}

clean:
	docker rmi -f "${REGISTRY}/${NAME}:${VERSION}" || true

