#!/usr/bin/env bash
set -xeEuo pipefail
configdir=$(dirname $0)

mkdir -p /var/lib/rancher/k3os/config.d
cp "${configdir}"/*.yaml /var/lib/rancher/k3os/config.d/
sleep 10
k3os config
