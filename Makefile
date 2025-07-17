PACKAGE_NAME ?= temp.vsix
TAG_NUMBER ?= v0.0.0
LDFLAGS=-s -w -X 'main.Version=$(TAG_NUMBER)'


build-all-binaries:
	GOOS=windows GOARCH=amd64 go build -ldflags "$(LDFLAGS)" -o temp.exe
	GOOS=darwin GOARCH=amd64 go build -ldflags "$(LDFLAGS)" -o temp_darwin_amd64
	GOOS=darwin GOARCH=arm64 go build -ldflags "$(LDFLAGS)" -o temp_darwin_arm64
	GOOS=linux GOARCH=amd64 go build -ldflags "$(LDFLAGS)" -o temp_linux_amd64
	GOOS=linux GOARCH=arm64 go build -ldflags "$(LDFLAGS)" -o temp_linux_arm64