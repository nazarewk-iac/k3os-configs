OPENEBS_VERSION ?= 1.12.0

all: deps

apply: deps
	kubectl apply -k .

deps: openebs-operator.yaml

openebs-operator.yaml: helm-repo
	helm template --version "${OPENEBS_VERSION}" --values values.yaml --namespace openebs openebs openebs/openebs > "$@"

clean:
	rm openebs-operator.yaml

helm-repo:
	helm repo add openebs https://openebs.github.io/charts && helm repo update

