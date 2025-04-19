#List of all the major providers and how to install them - set the environment

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
     azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
     google = {
      source = "hashicorp/google"
      version = "6.29.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.36.0"
    }
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.248.0"
    }
     oci = {
      source = "oracle/oci"
      version = "6.35.0"
    }
     helm = {
      source = "hashicorp/helm"
      version = "3.0.0-pre2"
    }
  }
}

resource "local_file" "my_file" {
  filename = "automated.txt"
  content = "This is automated content from Terraform"
}
