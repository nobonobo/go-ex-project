PROJECT_NAME=project_name
HERE:=$(shell pwd)

.PHONY: all depends build test clean

all: build

depends: src/github.com/nobonobo/unqlitego/Makefile
	GOPATH=$(HERE) make -C src/github.com/nobonobo/unqlitego

src/github.com/nobonobo/unqlitego:
	GOPATH=$(HERE) go get -d github.com/nobonobo/unqlitego

build: depends 
	GOPATH=$(HERE) go build

clean:
	-rm -rf src/github.com
	-rm -rf pkg/
	-rm -f go-ex-project

test:
	GOPATH=$(HERE) go test src/$(PROJECT_NAME)
