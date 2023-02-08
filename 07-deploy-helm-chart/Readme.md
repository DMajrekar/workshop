# Deploy a helm chart

1. Create helm chart
   ```
   cp ../07-helm/helm_ingress_traefik.tf ./
   ```
2. Plan the change
   ```
   terraform plan
   ```
3. Apply the chart
   ```
   terraform apply
   ```
4. Check what is deployed in the cluster
   ```
   kubectl get po -A
   ```