GOROOT=/usr/local/go
GOPATH=${PWD}

all: 
	 go build main.go


clean:
	rm -f main 
