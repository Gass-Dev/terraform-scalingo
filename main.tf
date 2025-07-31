terraform {
  required_providers {
    scalingo = {
      source  = "scalingo/scalingo"
      version = "~> 2.4"
    }
  }
}

provider "scalingo" {
  token = var.scalingo_token
}

resource "scalingo_app" "portfolioapp" {
  name      = "portfolioapp"
  region    = "osc-fr1"
  buildpack = "https://github.com/heroku/heroku-buildpack-static.git"
}
