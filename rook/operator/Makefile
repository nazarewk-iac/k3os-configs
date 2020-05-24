.ONESHELL:

apply: operator.yaml
	kubectl apply -k .

operator.yaml:
	echo "# Downloaded from https://raw.githubusercontent.com/rook/rook/${CEPH_RELEASE}/cluster/examples/kubernetes/ceph/operator.yaml" > $@
	curl -L "https://raw.githubusercontent.com/rook/rook/${CEPH_RELEASE}/cluster/examples/kubernetes/ceph/operator.yaml" >> $@

.PHONY: logs
logs:
	kubectl -n rook-ceph logs -l app=rook-ceph,component=operator -f

.PHONY: restart
restart:
	kubectl -n rook-ceph delete pod -l app=rook-ceph,component=operator
