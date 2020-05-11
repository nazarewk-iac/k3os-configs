.ONESHELL:

apply-all: cluster common operator toolbox

.PHONY: common
common:
	$(MAKE) -C "$@" apply

.PHONY: operator
operator: common
	$(MAKE) -C "$@" apply

.PHONY: cluster
cluster: operator
	$(MAKE) -C "$@" apply

.PHONY: toolbox
toolbox: operator
	$(MAKE) -C "$@" apply

.PHONY: block-storage
block-storage: cluster
	$(MAKE) -C "$@" apply

.PHONY: clean
clean:
	./clean.sh
