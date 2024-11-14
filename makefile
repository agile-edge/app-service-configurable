.PHONY: build tidy docker test clean vendor

PLATFORM=linux/amd64,linux/arm64,linux/arm/v7
GO_PROXY=https://goproxy.cn,direct

# VERSION file is not needed for local development, In the CI/CD pipeline, a temporary VERSION file is written
# if you need a specific version, just override below
VERSION=$(shell (git branch --show-current | sed 's/^release\///' | sed 's/^v//') || echo 0.0.0)
#DOCKER_TAG=$(VERSION)-$(shell git log -1 --format=%h)
DOCKER_TAG=$(VERSION)

# This pulls the version of the SDK from the go.mod file. If the SDK is the only required module,
# it must first remove the word 'required' so the offset of $2 is the same if there are multiple required modules
SDKVERSION=$(shell cat ./go.mod | grep 'github.com/agile-edgex/app-functions-sdk-go/v3 v' | sed 's/require//g' | awk '{print $$2}')

MICROSERVICE=app-service-configurable
GOFLAGS=-ldflags "-X github.com/agile-edgex/app-functions-sdk-go/v3/internal.SDKVersion=$(SDKVERSION) \
                   -X github.com/agile-edgex/app-functions-sdk-go/v3/internal.ApplicationVersion=$(VERSION)" \
                   -trimpath -mod=readonly
GOTESTFLAGS?=-race

GIT_SHA=$(shell git rev-parse HEAD)

# CGO is enabled by default and causes docker builds to fail due to no gcc,
# but is required for test with -race, so must disable it for the builds only
build:
	CGO_ENABLED=0 go build -tags "$(ADD_BUILD_TAGS)" $(GOFLAGS) -o $(MICROSERVICE)

build-nats:
	make -e ADD_BUILD_TAGS=include_nats_messaging build

tidy:
	go mod tidy

# NOTE: This is only used for local development. Jenkins CI does not use this make target
docker:
	docker buildx build --platform $(PLATFORM) \
		--build-arg ADD_BUILD_TAGS=$(ADD_BUILD_TAGS) \
		--build-arg GO_PROXY=$(GO_PROXY) \
		-f Dockerfile \
		--label "git_sha=$(GIT_SHA)" \
		--push \
		-t magicletters/app-service-configurable:${DOCKER_TAG} \
		.
	docker buildx build --platform $(PLATFORM) \
		--build-arg ADD_BUILD_TAGS=$(ADD_BUILD_TAGS) \
		--build-arg GO_PROXY=$(GO_PROXY) \
		-f Dockerfile.alpine \
		--label "git_sha=$(GIT_SHA)" \
		--push \
		-t magicletters/app-service-configurable:${DOCKER_TAG}-alpine \
		.

docker-nats:
	make -C . -e ADD_BUILD_TAGS=include_nats_messaging docker

lint:
	@which golangci-lint >/dev/null || echo "WARNING: go linter not installed. To install, run make install-lint"
	@if [ "z${ARCH}" = "zx86_64" ] && which golangci-lint >/dev/null ; then golangci-lint run --config .golangci.yml ; else echo "WARNING: Linting skipped (not on x86_64 or linter not installed)"; fi

install-lint:
	sudo curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $$(go env GOPATH)/bin v1.54.2

unittest:
	go test $(GOTESTFLAGS) -coverprofile=coverage.out ./...

test: unittest lint
	go vet ./...
	gofmt -l $$(find . -type f -name '*.go'| grep -v "/vendor/")
	[ "`gofmt -l $$(find . -type f -name '*.go'| grep -v "/vendor/")`" = "" ]
	./bin/test-attribution-txt.sh

clean:
	rm -f $(MICROSERVICE)
