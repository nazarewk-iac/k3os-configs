METALLB_VERSION ?= v0.9.3

all: deps

apply: deps
	kubectl apply -k .

deps: partials/secretkey metallb.yaml namespace.yaml

partials/secretkey:
	openssl rand -base64 128 > "$@"

namespace.yaml:
	curl -L https://raw.githubusercontent.com/$(METALLB_VERSION)/manifests/namespace.yaml > "$@"

metallb.yaml:
	curl -L https://raw.githubusercontent.com/$(METALLB_VERSION)/manifests/metallb.yaml > "$@"

clean:
	rm namespace.yaml metallb.yaml partials/secretkey

