resource "civo_kubernetes_cluster" "cluster" {
  name        = "workshop-cluster"
  firewall_id = civo_firewall.firewall.id
  pools {
    node_count = 1
    size       = "g4s.kube.medium"
  }
  timeouts {
    create = "5m"
  }

}

