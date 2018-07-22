#!/bin/bash

# In this setup I chose flannel, since it supports arm platform

# Since it is required to modify the manifest before applying it, we do so ;)

curl https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.yml -o kube-flannel.yml

sed -i -e 's/amd64/arm/g' kube-flannel.yml

kubeadm init --pod-network-cidr=10.244.0.0/16
