1. Add the provider
   ```
   kubernetes = {
     source  = "hashicorp/kubernetes"
     version = "2.18.0"
   }
   ```
2. Connect the provider
   ```
   provider "kubernetes" {
     host                   = civo_kubernetes_cluster.cluster.api_endpoint
     client_certificate     = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-certificate-data)
     client_key             = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-key-data)
     cluster_ca_certificate = base64decode(yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters[0].cluster.certificate-authority-data)
    }
   ```
3. Download the provider
   ```
   terraform apply
   ```