#!/usr/bin/env bash
set -xeEuo pipefail

hosts=(k3os-rpi-{0,1,2})
modules=(block-storage cluster toolbox operator common)

for dir in "${modules[@]}"; do
  pushd "$dir"
  kubectl delete -k . || true
  popd
done

for host in "${hosts[@]}"; do
  ssh "$host" sudo rm -rf /var/lib/rook || true
  ssh "$host" sudo dd if=/dev/zero of=/dev/sda bs=1K count=50000 status=progress || true
done
