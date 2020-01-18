# Cluster Setup
 * k3s
 * helm
    `helm repo add stable https://kubernetes-charts.storage.googleapis.com/`
 * install registry
    `helm install registry stable/docker-registry --set ingress.enabled=true --set "ingress.hosts={reg.smutje.inline.de}"`
 * build
   `pack build reg.smutje.inline.de/hello-k8s-world --publish` 