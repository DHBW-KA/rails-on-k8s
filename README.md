# Cluster Setup
 * Any Hyperscaler - https://gardener.cloud/
 * https://k3s.io/
 * https://minikube.sigs.k8s.io/docs/
 * https://docs.docker.com/get-docker/ Docker Desktop (Mit K8s)
 
# Docker Build
 * Build Image: `docker build -t hello-k8s-world .` 
 * Upload Image to Registry: `docker push hello-k8s-world` (_optional_)
  
# Deploy
 * `kubectl apply -f lib/deployment.yml`
 * Wait for deployment to finish `kubectl rollout status deployment/hello-k8s-world`

 Visist http://hello.example.com