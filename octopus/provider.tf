terraform {
  required_providers {
    aws = {
      source  = "octopusdeploy"
      version = "~> 0.7.68"
    }
  }

  backend "s3" {
    bucket = "app-builder-f9bf51ba-6180-4154-8424-aff6e39cffac"
    key    = "appbuilder-shared-space"
    region = "us-east-1"
  }
}

provider "octopusdeploy" {
  address  = var.octopus_server
  api_key  = var.octopus_apikey
}