METALLB_VERSION ?= v0.9.3

all: creds

creds: partials/CF_API_EMAIL partials/CF_API_KEY partials/DOMAIN

partials/CF_API_EMAIL partials/CF_API_KEY partials/DOMAIN:
	echo "$@ is missing!"
	exit 1

apply: creds
	kubectl apply -k .
