terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.20.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "main" {
  name     = "dev-lab22"
  location = "eastus2"
}

resource "azurerm_service_plan" "main" {
  name                = "demo-svc"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "main" {
  name                = "ukpono-demo-app"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_service_plan.main.location
  service_plan_id     = azurerm_service_plan.main.id


  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = azurerm_application_insights.main.instrumentation_key
  }
  site_config {
    application_stack {
      python_version = 3.8
    }
  }
}


resource "azurerm_app_service_source_control" "example" {
  app_id   = azurerm_linux_web_app.main.id
  repo_url = "https://github.com/ukponoobott/test-code"
  branch   = "main"
  use_manual_integration = true
  
}

resource "azurerm_application_insights" "main" {
  name                = "tf-test-appinsights"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  application_type    = "web"
}


output "test" {
    description = "ydydy"
    value = azurerm_linux_web_app.main.default_hostname
}