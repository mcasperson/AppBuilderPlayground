terraform {
  required_providers {
    aws = {
      source  = "octopusdeploy"
      version = "~> 0.7.68"
    }
  }

  backend "s3" {
    bucket = "app-builder-79e3afa2-d929-492e-b303-b653c521e3be"
    key    = "appbuilder-shared-space"
    region = "us-east-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
}