GOROOT=/usr/local/go
GOPATH=${PWD}

all: 
	 go build main.go

install: 
	useradd  go_exp -d /opt/go_exp
	mv main /opt/go_exp/
	cp go_exp.service /usr/lib/systemd/system/
	chmod 644 /usr/lib/systemd/system/go_exp.service

uninstall:
	userdel go_exp
	rm -rf /opt/go_exp
	rm -f /usr/lib/systemd/system/go_exp.service

clean:
	rm -f main 
