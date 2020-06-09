build_ubuntu18.04_cuda10.2:
	docker build -f Dockerfile_ubuntu18.04_cuda10.2 -t ubuntu18.04_cuda10.2 .
.PHONY: build_ubuntu18.04_cuda10.2

build_ubuntu18.04_miniconda:
	docker build -f Dockerfile_ubuntu18.04_miniconda -t ubuntu18.04_miniconda .
.PHONY: build_ubuntu18.04_miniconda

build_ubuntu18.04_basic: build_ubuntu18.04_miniconda
	docker build -f Dockerfile_ubuntu18.04_basic -t ubuntu18.04_basic .
.PHONY: build_ubuntu18.04_basic

run_basic: build_ubuntu18.04_basic
	docker run   \
    --privileged  \
    -it  \
    --rm  \
    --name ubuntu18.04_basic \
    ubuntu18.04_basic
.PHONY: run_basic
