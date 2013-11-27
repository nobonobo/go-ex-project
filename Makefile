.PHONY: all depends build test clean

all: depends build

depends: src/github.com/nobonobo/unqlitego
	cd src/github.com/nobonobo/unqlitego; make
	cd src/github.com/nobonobo/unqlitego; go install

src/github.com/nobonobo/unqlitego:
	go get -d github.com/nobonobo/unqlitego

build: depends 
	go build

clean:
	-rm -rf src/github.com
	-rm -rf pkg/
	-rm -f go-ex-project

test:
	go test ./
