resource "azurerm_linux_web_app_slot" "prod" {
  name           = "prod-slot"
  app_service_id = azurerm_linux_web_app.main.id

  site_config {
    application_stack {
      python_version = 3.8
    }
  }
}

resource "azurerm_linux_web_app_slot" "beta" {
  name           = "beta-slot"
  app_service_id = azurerm_linux_web_app.main.id

  site_config {
    application_stack {
      python_version = 3.8
    }
  }
}