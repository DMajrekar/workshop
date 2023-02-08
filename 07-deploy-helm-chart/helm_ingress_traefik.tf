resource "helm_release" "traefik_ingress" {
  name = "traefik"

  repository = "https://helm.traefik.io/traefik"
  chart      = "traefik"

  create_namespace = true
  namespace        = "traefik"
}
