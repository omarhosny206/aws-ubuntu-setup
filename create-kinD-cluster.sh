#!/bin/bash
kind create cluster --name mycluster --config kinD-multi-node-cluster.yaml
kind get kubeconfig --name="mycluster" > ~/.kube/config
export KUBECONFIG=~/.kube/config
sleep 5
kubectl get nodes
kubectl cluster-info
