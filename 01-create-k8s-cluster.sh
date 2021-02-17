#!/bin/sh

k3d cluster create argocd --servers 1 --port 8080:80@loadbalancer --port 8443:443@loadbalancer --image rancher/k3s:v1.19.3-k3s3