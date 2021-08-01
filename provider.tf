provider "google" {
  region = "us-central1"
}

resource "random_integer" "int" {
  min = 100
  max = 1000000
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.77"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}