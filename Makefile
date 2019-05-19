GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) install
BIN_NAME=$(shell basename $(CURDIR))

all: test build
build:
	$(GOBUILD) -o $(BIN_NAME) -v
test:
	$(GOTEST) -v ./...
clean:
	$(GOCLEAN)
	rm -f $(BIN_NAME)
run:
	$(GOBUILD) -o $(BIN_NAME) -v
	./$(BIN_NAME)
deps:
	$(GOGET) ./...
