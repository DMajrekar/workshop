# Create a firewall
resource "civo_firewall" "firewall" {
  name                 = "workshop-firewall"
  create_default_rules = false

  ingress_rule {
    protocol   = "tcp"
    port_range = "6443"
    cidr       = ["0.0.0.0/0"]
    label      = "kubernetes-api-server"
    action     = "allow"
  }
}
