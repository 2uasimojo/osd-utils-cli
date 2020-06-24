GOOS := $(if $(GOOS),$(GOOS),linux)
GOARCH := $(if $(GOARCH),$(GOARCH),amd64)
GO=CGO_ENABLED=0 GOOS=$(GOOS) GOARCH=$(GOARCH) GO111MODULE=on go
GOVERSION = $(shell $(GO) version | cut -c 14- | cut -d' ' -f1)

REPOSITORY = github.com/openshift/osd-utils-cli

GIT_COMMIT = $(shell git rev-parse --short HEAD)

BUILDFLAGS ?=
LDFLAGS = -ldflags="-X '${REPOSITORY}/cmd.GitCommit=${GIT_COMMIT}'"

ifeq ($(shell expr ${GOVERSION} \>= 1.14), 1)
	BUILDFLAGS += -mod=mod
endif

FILES_TO_FMT  := $(shell find . -path -prune -o -name '*.go' -print)

all: format build

format: vet fmt docs

fmt:
	@echo "gofmt"
	@gofmt -w ${FILES_TO_FMT}
	@git diff --exit-code .

build: mod
	$(GO) build ${BUILDFLAGS} ${LDFLAGS} -o ./bin/osd-utils-cli main.go

vet:
	$(GO) vet ${BUILDFLAGS} ./...

mod:
	@echo "go mod tidy"
	$(GO) mod tidy
	@git diff --exit-code -- go.mod

docs: build
	./bin/osd-utils-cli docs ./docs/command
	@git diff --exit-code -- ./docs/command/
