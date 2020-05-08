
all: crds.yaml metallb kernel-modules external-dns

metallb:
	$(MAKE) -C "$@"

kernel-modules:
	$(MAKE) -C "$@"

external-dns:
	$(MAKE) -C "$@"

crds.yaml:
	kubectl get crd -o json | jq -r '.items | map(tojson) | join("\n---\n")' > "$@"
