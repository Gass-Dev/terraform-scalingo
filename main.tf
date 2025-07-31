terraform {
  required_providers {
    scalingo = {
      source  = "Scalingo/scalingo"
      version = "~> 2.3"
    }
  }
}

provider "scalingo" {
  api_token = var.scalingo_token
}

resource "scalingo_app" "portfolio" {
  name = "portfolio-po"
  region = "osc-fr1"
}

output "app_url" {
  value = scalingo_app.portfolio.url
}
