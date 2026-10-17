terraform {
 required_providers {
   azurerm = {
    source = "hashicorp/azurerm"
    version = "4.72.0"
}



 } 
 backend "azurerm" {
 storage_account_name = "pipelinestorageaccount13"
 container_name = "tfstate"
 key = "satyam.tfstate"
 resource_group_name = "backend_pipeline"
 
 
   
 }
 
}
provider "azurerm" {
    features {
      
    }
  
}