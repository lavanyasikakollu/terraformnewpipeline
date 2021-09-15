
provider "azurerm" {
  version = "=2.4.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "East US"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}
