
.PHONY: apply
apply: manifests.yaml
	kubectl apply -k .

.PHONY: repo
repo:
	helm repo add hashicorp https://helm.releases.hashicorp.com

manifests.yaml: repo
	helm template vault hashicorp/vault --namespace vault-system -f values.yaml > $@
