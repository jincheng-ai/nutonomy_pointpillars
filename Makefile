#!/usr/bin/make -f

IMAGE := pointpillars
# VERSION := onnx
# VERSION := onnx-pytorch1.7.0-cuda11.0-cudnn8
VERSION := onnx-pytorch1.8.0-cuda11.1-cudnn8-devel
NAME := PointPillars-dev
TASK := OpenVINO/OpenVINO-optimization-for-PointPillars
CODEVERSION := nutonomy_pointpillars
ROOT := /home/shuyuanhao
WORKDIR := /workspace
SHM := 8G

.PHONY: build shell

base:
	docker build -t=$(IMAGE):env-$(VERSION) -f $(ROOT)/codes/$(TASK)/$(CODEVERSION)/dockerfiles/Dockerfile-env .

build:
	docker build -t=$(IMAGE):$(VERSION) -f $(ROOT)/codes/$(TASK)/$(CODEVERSION)/dockerfiles/Dockerfile-dev .

shell:
	docker run -u root --rm -it --gpus all --shm-size $(SHM) -e DISPLAY=$(DISPLAY) -v /tmp/.X11-unix:/tmp/.X11-unix -v $(ROOT)/codes/$(TASK)/$(CODEVERSION)/:$(WORKDIR)/$(TASK) -v $(ROOT)/datas/$(TASK):$(WORKDIR)/datas -v $(ROOT)/logs/$(TASK):$(WORKDIR)/logs --name="$(NAME)" $(IMAGE):$(VERSION) bash
