#!/usr/bin/env bash
set -xeEuo pipefail

hosts=(k3os-rpi-{0,1,2})
if [[ "${1:-}" == "--all" ]] ; then
  modules=(block-storage cluster toolbox operator common)
else
  modules=()
fi

for dir in "${modules[@]}"; do
  pushd "$dir"
  kubectl delete -k . || true
  popd
done

for host in "${hosts[@]}"; do
  ssh "$host" sudo rm -rf /var/lib/rook || true
  ssh "$host" sudo dmsetup remove_all || true
  ssh "$host" sudo dd if=/dev/zero of=/dev/sda bs=1K count=50000 status=progress || true
  ssh "$host" sudo sync
done
