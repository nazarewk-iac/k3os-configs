.ONESHELL:

exec:
	kubectl -n rook-ceph exec -it "$(shell kubectl get pod -l app=rook-ceph,component=toolbox -o name | head -1)" bash

apply:
	kubectl apply -k .
