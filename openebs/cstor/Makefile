all: deps

apply: deps
	kubectl apply -k .

deps: storage-pool-claim

storage-pool-claim:
	yaml2json < storage-pool-claim.tpl.yaml | jq '.spec.blockDevices.blockDeviceList = $(shell kubectl get blockdevice -n openebs -o json | jq -c '.items | map(.metadata.name)')' | json2yaml > "$@.yaml"

clean:
	rm storage-pool-claim.yaml


