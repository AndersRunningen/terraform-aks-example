provider "azurerm" {
  features {}
}

provider "kubernetes" {
  alias = "aks"

  load_config_file       = "false"
  host                   = module.aks.host
  username               = module.aks.username
  password               = module.aks.password
  client_certificate     = base64decode(module.aks.client_certificate)
  client_key             = base64decode(module.aks.client_key)
  cluster_ca_certificate = base64decode(module.aks.cluster_ca_certificate)
}

provider "helm" {
  alias = "aks"

  kubernetes {
    load_config_file       = "false"
    host                   = module.aks.host
    username               = module.aks.username
    password               = module.aks.password
    client_certificate     = base64decode(module.aks.client_certificate)
    client_key             = base64decode(module.aks.client_key)
    cluster_ca_certificate = base64decode(module.aks.cluster_ca_certificate)
  }
}