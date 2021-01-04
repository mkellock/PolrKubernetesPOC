# Create a line header
Set-Variable breaker -option Constant -value "----------------------------------------"


# Remove any preexisting instance of minikube
Write-Output $breaker
Write-Output "Deleting MiniKube cluster"
Write-Output $breaker
minikube delete


# Install a new cluster
Write-Output $breaker
Write-Output "Creating MiniKube cluster"
Write-Output $breaker
minikube start --vm-driver hyperv --hyperv-virtual-switch "Default Switch" --kubernetes-version=v1.19.0 --memory=4g --bootstrapper=kubeadm --extra-config=kubelet.authentication-token-webhook=true --extra-config=kubelet.authorization-mode=Webhook --extra-config=scheduler.address=0.0.0.0 --extra-config=controller-manager.address=0.0.0.0


# Deploy the monitoring stack foundational services
Write-Output $breaker
Write-Output "Applying monitoring stack"
Write-Output $breaker

Set-Location ./MonitoringPOC
./Install.ps1
Set-Location ..


# Deploy RabbitMQ
Write-Output $breaker
Write-Output "Applying RabbitMQ stack"
Write-Output $breaker

Set-Location ./RabbitMQKubernetesPOC
./Install.ps1
Set-Location ..