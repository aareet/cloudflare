terraform {
  cloud {
    organization = "aareet"
    workspaces {
      name = "cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.9.0"
    }
  }
  required_version = "~> 1.5"
}

provider "cloudflare" {
  # uses environment variable for API token
}
