terraform {
  required_version = "~> 1.2.4"
  required_providers {
    cloudfoundry = {
      source = "cloudfoundry-community/cloudfoundry"
      version = "0.15.3"
    }
  }
}

