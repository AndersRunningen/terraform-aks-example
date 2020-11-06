terraform {
  backend "azurerm" {
    storage_account_name    = "tfstate37589"
    container_name          = "tfstate"
    key                     = "terraform.tfstate"
    access_key              = "SUPERSECRETKEY"
  }
}