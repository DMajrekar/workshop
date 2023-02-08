# Scaling the cluster

1. Update the node pool count in cluster.tf from `1` to `2`
   ```
   vim cluster.tf
   ```
2. View the plan
   ```
   terraform plan
   ```
3. Apply the change
   ```
   terraform apply
   ```
4. Wait for the node to join the cluster
   ```
   kubectl get nodes --watch
   ```
