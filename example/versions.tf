terraform {
  required_version = "~> 1.2.4"
  required_providers {
    cloudfoundry = {
      source = "registry.terraform.io/hashicorp/cloudfoundry"
      version = "0.12.3"
    }
  }
}

