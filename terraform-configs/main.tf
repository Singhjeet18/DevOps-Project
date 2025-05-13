terraform {
    required_providers {
        minikube = {
            source  = "scott-the-programmer/minikube"
            version = "0.4.2"
        }
    }
}
provider "minikube" {
    kubernetes_version = "v1.30.0"  # Configuration options for the provider
}
resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "devops-project"
    addons = [
        "defult-storageclass",
        "storage-provisioner"
    ] # Specify the driver for the Minikube cluster
    # Add any additional configuion options for the cluster
}