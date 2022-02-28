terraform {
  required_providers {
    aws = {
      source  = "octopusdeploy"
      version = "~> 0.7.68"
    }
  }

  backend "s3" {
    bucket = "app-builder-c1552c4e-2686-46cb-b097-ab91a5284405"
    key    = "appbuilder-shared-space"
    region = "us-east-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
}