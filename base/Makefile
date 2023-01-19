build_ubuntu18.04_cuda10.2:
	docker build -f Dockerfile_ubuntu18.04_cuda10.2 -t ubuntu18.04_cuda10.2 .
.PHONY: build_ubuntu18.04_cuda10.2

build_ubuntu18.04_essential:
	docker build -f Dockerfile_ubuntu18.04_essential -t ubuntu18.04_essential .
.PHONY: build_ubuntu18.04_essential

build_ubuntu18.04_miniconda: build_ubuntu18.04_essential
	docker build -f Dockerfile_ubuntu18.04_miniconda -t ubuntu18.04_miniconda .
.PHONY: build_ubuntu18.04_miniconda

build_ubuntu18.04_basic: build_ubuntu18.04_miniconda
	docker build -f Dockerfile_ubuntu18.04_basic -t ubuntu18.04_basic .
.PHONY: build_ubuntu18.04_basic

build_ubuntu18.04_dev: build_ubuntu18.04_miniconda
	docker build -f Dockerfile_ubuntu18.04_dev -t ubuntu18.04_dev .
.PHONY: build_ubuntu18.04_dev

build_ubuntu18.04_zmq: build_ubuntu18.04_dev
	docker build -f Dockerfile_ubuntu18.04_zmq -t ubuntu18.04_zmq .
.PHONY: build_ubuntu18.04_zmq

build_ubuntu18.04_work: build_ubuntu18.04_dev
	docker build -f Dockerfile_ubuntu18.04_work -t ubuntu18.04_work .
.PHONY: build_ubuntu18.04_work

run_essential: build_ubuntu18.04_essential
	docker run   \
    --platform linux/x86_64 \
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_essential \
    ubuntu18.04_essential
.PHONY: run_essential

run_basic: build_ubuntu18.04_basic
	docker run   \
    --platform linux/x86_64 \
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_basic \
    ubuntu18.04_basic
.PHONY: run_basic

run_dev: build_ubuntu18.04_dev
	docker run   \
    --platform linux/x86_64 \
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_dev \
    ubuntu18.04_dev
.PHONY: run_dev

run_zmq: build_ubuntu18.04_zmq
	docker run   \
    --platform linux/x86_64 \
    --privileged  \
    -it  \
    --rm  \
    -v ~/github/:/github \
    -v ~/gitlab/:/gitlab \
    -v ~/mygit/:/mygit \
    --name ubuntu18.04_zmq \
    ubuntu18.04_zmq
.PHONY: run_zmq

run_work: build_ubuntu18.04_work
	docker run   \
    --platform linux/x86_64 \
    --privileged  \
    -it  \
    --rm  \
    -v ~/github/:/github \
    -v ~/gitlab/:/gitlab \
    -v ~/mygit/:/mygit \
    --name ubuntu18.04_work \
    ubuntu18.04_work
.PHONY: run_work
