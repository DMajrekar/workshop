variable "civo_token" {}

variable "region" {
  type        = string
  default     = "FRA1"
  description = "The region to provision the cluster against"
}
