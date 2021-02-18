# Argo-CD demo

This repository contains the scripts and files necessary to test argo-cd

## Steps


### Create a local K8S cluster using K3D

```
brew install k3d

./01-create-k8s-cluster.sh
```
### Install Argo

```
./02-install-argocd.sh
```

### Log into Argo

1. Port forward 
```
kubectl port-forward -n argocd svc/argocd-server 8080:80
```

2. Navigate to https://localhost:8080/applications

3. Log in using the admin/ _argo server pod name_

### Create app of apps in argo

```
./03-argocd-application.yaml
```

### Confirm application is deployed

Wait a few minutes and demosite should have been deployed

