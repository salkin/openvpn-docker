REGISTRY=nwik
IMAGE=openvpn-docker
TAG=$(shell cat VERSION)

build:
	docker build --build-arg=http_proxy=${http_proxy} --build-arg=https_proxy=${https_proxy}  -t ${REGISTRY}/${IMAGE}:${TAG} .

push:
	docker push ${REGISTRY}/${IMAGE}:${TAG} 
