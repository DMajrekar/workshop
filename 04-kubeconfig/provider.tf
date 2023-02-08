terraform {
  required_providers {
    civo = {
      source  = "civo/civo"
      version = "1.0.29"
    }

    local = {
      source = "hashicorp/local"
      version = "2.3.0"
    }
  }
}

# Configure the Civo Provider
provider "civo" {
  token  = var.civo_token
  region = var.region
}