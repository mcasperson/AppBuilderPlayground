terraform {
  required_providers {
    aws = {
      source  = "octopusdeploy"
      version = "~> 0.7.68"
    }
  }

  backend "s3" {
    bucket = "app-builder-badecc9f-ddcf-498c-b2ea-aa6e20387d56"
    key    = "appbuilder-shared-space"
    region = "us-east-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
}