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

build_ubuntu18.04_dev: build_ubuntu18.04_essential
	docker build -f Dockerfile_ubuntu18.04_dev -t ubuntu18.04_dev .
.PHONY: build_ubuntu18.04_dev

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
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_basic \
    ubuntu18.04_basic
.PHONY: run_basic

run_dev: build_ubuntu18.04_dev
	docker run   \
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_dev \
    ubuntu18.04_dev
.PHONY: run_dev
