# Remove any preexisting instance of minikube
minikube delete

# Install a new cluster
minikube start --vm-driver hyperv --hyperv-virtual-switch "Default Switch" --kubernetes-version=v1.19.0 --memory=4g --bootstrapper=kubeadm --extra-config=kubelet.authentication-token-webhook=true --extra-config=kubelet.authorization-mode=Webhook --extra-config=scheduler.address=0.0.0.0 --extra-config=controller-manager.address=0.0.0.0

# Deploy the monitoring stack foundational services
kubectl apply -f Monitoring/

# Deploy RabbitMQ
kubectl apply -f RabbitMQ/

# Deploy the RabbitMQ monitoring stack
kubectl apply -f RabbitMQ/Monitoring/