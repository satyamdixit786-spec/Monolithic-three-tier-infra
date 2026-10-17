module "rg" {
    source = "../../Module/Azurerm_resource_group"
    rg =  var.rg

}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../../Module/Azurerm_virtual_network"
    vnet = var.vnet
  
}
module "subnet" {
    depends_on = [ module.vnet ]
    source = "../../Module/Azurerm_Subnet"
    subnet = var.subnet
  
}

module "pip" {
    depends_on = [ module.rg ]
    source = "../../Module/Azurerm_PIP"
    pip = var.pip
  
}

module "bastion" {
    depends_on = [ module.pip,module.subnet ]
    source = "../../Module/Azurerm_Bastion"
    bastion= var.bastion

}

module "vm" {
    depends_on = [ module.subnet ]
    source = "../../Module/Azurerm_Virtual_machine"
    vm = var.vm

  
}