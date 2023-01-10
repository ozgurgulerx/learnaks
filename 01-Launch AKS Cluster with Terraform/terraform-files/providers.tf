terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "fd4d699e-3989-4c6b-a710-6a20789454eb"
  tenant_id         = "23b4b90a-b2c2-4ef9-9888-5af93b241573"
  client_id         = "35df0dc5-1067-40bc-8d55-bc64ef7dd209"
  client_secret     = "DuW8Q~qt9VPR~y6ClcPgQVGzGep1qtFOrd3SybHL"


}
