# kubernetes-ci-cd
Continuous integration/deployment to GCP kubernetes cluster POC

## Dependencies
* Kotlin 1.3
* Java 11
* maven 3.6.1

## Link of interest
* [**Branching strategy**](https://jeffkreeftmeijer.com/git-flow/)

## Docker file for local testing
```
docker build --tag kubernetes-ci-cd .
docker run kubernetes-ci-cd --name=kubernetes-ci-cd
docker inspect kubernetes-ci-cd (or container-id)  --> to find out which is the container IP
```
to restart the container
```
docker container start kubernetes-ci-cd
```

#### Environment variables
these variables should be added as part of the CI/CD process within the github project's secrets.
```
DOCKERHUB_PASSWORD
DOCKERHUB_USERNAME
GCP_PROJECT_ID
GCP_SA_KEY --> should be encoded
KUBE_CONFIG_DATA --> should be encoded
```
encoding example:
```
cat $HOME/.kube/config | base64
cat $HOME/Documents/kubernetes-ci-cd/sa_key.json | base64
```

### Reference
* [**CI/CD with github actions tutorial**](https://www.youtube.com/watch?v=MNBf-ylhtK0&t=595s)
* [**GCP Service account key**](https://cloud.google.com/iam/docs/creating-managing-service-account-keys#iam-service-account-keys-list-gcloud)
* [**Kubectl current profile - kubeconfig data (--minify)**](https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/)
