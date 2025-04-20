terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

provider "google" {
  project = "extended-cable-455910-g2"

}

resource "google_compute_instance" "terraform" {
  project = "extended-cable-455910-g2"
  name = "terraform"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

# $ tf init
# Initializing the backend...
# Initializing provider plugins...
# - Finding hashicorp/google versions matching "6.29.0"...
# - Installing hashicorp/google v6.29.0...
# - Installed hashicorp/google v6.29.0 (signed by HashiCorp)
# Terraform has created a lock file .terraform.lock.hcl to record the provider
# selections it made above. Include this file in your version control repository
# so that Terraform can guarantee to make the same selections by default when
# you run "terraform init" in the future.

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/GSWT-TF-With-GCP/ex01



# $ tf plan

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # google_compute_instance.terraform will be created
#   + resource "google_compute_instance" "terraform" {
#       + can_ip_forward       = false
#       + cpu_platform         = (known after apply)
#       + creation_timestamp   = (known after apply)
#       + current_status       = (known after apply)
#       + deletion_protection  = false
#       + effective_labels     = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + id                   = (known after apply)
#       + instance_id          = (known after apply)
#       + label_fingerprint    = (known after apply)
#       + machine_type         = "n1-standard-1"
#       + metadata_fingerprint = (known after apply)
#       + min_cpu_platform     = (known after apply)
#       + name                 = "terraform"
#       + project              = "extended-cable-455910-g2"
#       + self_link            = (known after apply)
#       + tags_fingerprint     = (known after apply)
#       + terraform_labels     = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + zone                 = "us-centrail-1a"

#       + boot_disk {
#           + auto_delete                = true
#           + device_name                = (known after apply)
#           + disk_encryption_key_sha256 = (known after apply)
#           + guest_os_features          = (known after apply)
#           + kms_key_self_link          = (known after apply)
#           + mode                       = "READ_WRITE"
#           + source                     = (known after apply)

#           + initialize_params {
#               + architecture           = (known after apply)
#               + image                  = "debian-cloud/debain-12"
#               + labels                 = (known after apply)
#               + provisioned_iops       = (known after apply)
#               + provisioned_throughput = (known after apply)
#               + resource_policies      = (known after apply)
#               + size                   = (known after apply)
#               + snapshot               = (known after apply)
#               + type                   = (known after apply)
#             }
#         }

#       + confidential_instance_config (known after apply)

#       + guest_accelerator (known after apply)

#       + network_interface {
#           + internal_ipv6_prefix_length = (known after apply)
#           + ipv6_access_type            = (known after apply)
#           + ipv6_address                = (known after apply)
#           + name                        = (known after apply)
#           + network                     = "default"
#           + network_attachment          = (known after apply)
#           + network_ip                  = (known after apply)
#           + stack_type                  = (known after apply)
#           + subnetwork                  = (known after apply)
#           + subnetwork_project          = (known after apply)

#           + access_config {
#               + nat_ip       = (known after apply)
#               + network_tier = (known after apply)
#             }
#         }

#       + reservation_affinity (known after apply)

#       + scheduling (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.



# $ tf apply --auto-approve

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # google_compute_instance.terraform will be created
#   + resource "google_compute_instance" "terraform" {
#       + can_ip_forward       = false
#       + cpu_platform         = (known after apply)
#       + creation_timestamp   = (known after apply)
#       + current_status       = (known after apply)
#       + deletion_protection  = false
#       + effective_labels     = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + id                   = (known after apply)
#       + instance_id          = (known after apply)
#       + label_fingerprint    = (known after apply)
#       + machine_type         = "n1-standard-1"
#       + metadata_fingerprint = (known after apply)
#       + min_cpu_platform     = (known after apply)
#       + name                 = "terraform"
#       + project              = "extended-cable-455910-g2"
#       + self_link            = (known after apply)
#       + tags_fingerprint     = (known after apply)
#       + terraform_labels     = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + zone                 = "us-central1-a"

#       + boot_disk {
#           + auto_delete                = true
#           + device_name                = (known after apply)
#           + disk_encryption_key_sha256 = (known after apply)
#           + guest_os_features          = (known after apply)
#           + kms_key_self_link          = (known after apply)
#           + mode                       = "READ_WRITE"
#           + source                     = (known after apply)

#           + initialize_params {
#               + architecture           = (known after apply)
#               + image                  = "debian-cloud/debian-12"
#               + labels                 = (known after apply)
#               + provisioned_iops       = (known after apply)
#               + provisioned_throughput = (known after apply)
#               + resource_policies      = (known after apply)
#               + size                   = (known after apply)
#               + snapshot               = (known after apply)
#               + type                   = (known after apply)
#             }
#         }

#       + confidential_instance_config (known after apply)

#       + guest_accelerator (known after apply)

#       + network_interface {
#           + internal_ipv6_prefix_length = (known after apply)
#           + ipv6_access_type            = (known after apply)
#           + ipv6_address                = (known after apply)
#           + name                        = (known after apply)
#           + network                     = "default"
#           + network_attachment          = (known after apply)
#           + network_ip                  = (known after apply)
#           + stack_type                  = (known after apply)
#           + subnetwork                  = (known after apply)
#           + subnetwork_project          = (known after apply)

#           + access_config {
#               + nat_ip       = (known after apply)
#               + network_tier = (known after apply)
#             }
#         }

#       + reservation_affinity (known after apply)

#       + scheduling (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.
# google_compute_instance.terraform: Creating...
# google_compute_instance.terraform: Still creating... [10s elapsed]
# google_compute_instance.terraform: Still creating... [20s elapsed]
# google_compute_instance.terraform: Creation complete after 26s [id=projects/extended-cable-455910-g2/zones/us-central1-a/instances/terraform]

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.