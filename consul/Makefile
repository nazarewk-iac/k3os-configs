
.PHONY: apply
apply: manifests.yaml
	kubectl apply -k .

.PHONY: repo
repo:
	helm repo add hashicorp https://helm.releases.hashicorp.com

manifests.yaml: repo
	helm template consul hashicorp/consul --namespace consul-system -f values.yaml > $@
