# Set up and create a cluster

1. ```
   cp ../04-kubeconfig/* .
   ```
2. Add the provider
   ```
   vim provider.tf
   ```

   ```
   local = {
     source = "hashicorp/local"
     version = "2.3.0"
   }
   ```
3. Run terraform init to downlaod the new provider
   ```
   terraform init
   ```
4. Apply the config
   ```
   terraform apply
   ```
5. Check the kubeconfig is created
   ```
   ls
   ```
6. Export the kubeconfig
   ```
   export KUBECONFIG=`pwd`/kubeconfig
   ```
7. Get nodes from the cluster
   ```
   kubectl get nodes
   ```
