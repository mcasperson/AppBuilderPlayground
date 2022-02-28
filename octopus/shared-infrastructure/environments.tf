resource "octopusdeploy_environment" "development_environment" {
  allow_dynamic_infrastructure = true
  description                  = "An environment for the development team."
  name                         = "Development"
  use_guided_failure           = false
}

resource "octopusdeploy_environment" "development_security_environment" {
  allow_dynamic_infrastructure = true
  description                  = "Used to scan the development releases for security issues."
  name                         = "Development (Security)"
  use_guided_failure           = false
}

resource "octopusdeploy_environment" "production_environment" {
  allow_dynamic_infrastructure = true
  description                  = "The production environment."
  name                         = "Production"
  use_guided_failure           = false
}

resource "octopusdeploy_environment" "production_security_environment" {
  allow_dynamic_infrastructure = true
  description                  = "Used to scan the productions releases for security issues."
  name                         = "Production (Security)"
  use_guided_failure           = false
}

resource "octopusdeploy_environment" "administration_environment" {
  allow_dynamic_infrastructure = true
  description                  = "Used for cross cutting administration concerns."
  name                         = "Administration"
  use_guided_failure           = false
}