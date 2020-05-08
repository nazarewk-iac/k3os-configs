
all: crds.yaml metallb

metallb:
	$(MAKE) -C "$@"

kernel-modules:
	$(MAKE) -C "$@"

crds.yaml:
	kubectl get crd -o json | jq -r '.items | map(tojson) | join("\n---\n")' > "$@"
