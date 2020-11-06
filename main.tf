module "aks" {
  source = "./modules/aks"
  providers = {
    kubernetes = kubernetes.aks
    #helm       = helm.aks
  }

  //dns_project = var.google_project

  aks_enabled = false
}