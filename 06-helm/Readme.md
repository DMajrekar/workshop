# Deploy a helm chart

1. Add the provider
   ```
   # Used to provision helm charts into the k8s cluster
   helm = {
     source  = "hashicorp/helm"
     version = "2.6.0"
   }
   ```
2. Configure the provider
   ```
   provider "helm" {
     kubernetes {
       host                   = civo_kubernetes_cluster.cluster.api_endpoint
       client_certificate     = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-certificate-data)
       client_key             = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-key-data)
       cluster_ca_certificate = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters[0].cluster.certificate-authority-data)
     }
   }
   ```
3. Download the provider
   ```
   terraform init
   ```