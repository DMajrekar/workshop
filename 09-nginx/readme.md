1. Create the nginx file
   ```
   cp ../09-nginx/kubernetes_deployment-nginx.tf .
   ```
2. Plan the change
   ```
   terraform plan
   ```
3. Apply the config
   ```
   terraform apply
   ```
4. Check the deployment exists
   ```
   kubectl get po -n default
   ```
