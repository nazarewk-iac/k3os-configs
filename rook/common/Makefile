CEPH_RELEASE ?= v1.3.3

.ONESHELL:

apply: common.yaml
	kubectl apply -k .

common.yaml:
	echo "# Downloaded from https://raw.githubusercontent.com/rook/rook/${CEPH_RELEASE}/cluster/examples/kubernetes/ceph/common.yaml" > $@
	curl -L "https://raw.githubusercontent.com/rook/rook/${CEPH_RELEASE}/cluster/examples/kubernetes/ceph/common.yaml" >> $@
