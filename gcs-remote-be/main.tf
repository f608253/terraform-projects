provider "google" {
  credentials = "key.json"
  project = "extended-cable-455910-g2"
}

terraform {
  backend "gcs" {
    bucket = "tftestbucket-manav"
  }
}

resource "google_storage_bucket" "tftestbucket" {
  name = "tftestbucket-manav1"
  location = "us-east1"
  storage_class = "COLDLINE"
}


#Output:

# $ tf init
# Initializing the backend...
# Initializing provider plugins...
# - Reusing previous version of hashicorp/google from the dependency lock file
# - Using previously-installed hashicorp/google v6.30.0

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/tf-gcs-remote-backend/gcs-remote-be
# $ tf plan
# Acquiring state lock. This may take a few moments...

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # google_storage_bucket.tftestbucket will be created
#   + resource "google_storage_bucket" "tftestbucket" {
#       + effective_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + force_destroy               = false
#       + id                          = (known after apply)
#       + location                    = "US-EAST1"
#       + name                        = "tftestbucket-manav1"
#       + project                     = (known after apply)
#       + project_number              = (known after apply)
#       + public_access_prevention    = (known after apply)
#       + rpo                         = (known after apply)
#       + self_link                   = (known after apply)
#       + storage_class               = "STANDARD"
#       + terraform_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + uniform_bucket_level_access = (known after apply)
#       + url                         = (known after apply)

#       + soft_delete_policy (known after apply)

#       + versioning (known after apply)

#       + website (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.
# Releasing state lock. This may take a few moments...

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/tf-gcs-remote-backend/gcs-remote-be
# $ tf apply

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # google_storage_bucket.tftestbucket will be created
#   + resource "google_storage_bucket" "tftestbucket" {
#       + effective_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + force_destroy               = false
#       + id                          = (known after apply)
#       + location                    = "US-EAST1"
#       + name                        = "tftestbucket-manav1"
#       + project                     = (known after apply)
#       + project_number              = (known after apply)
#       + public_access_prevention    = (known after apply)
#       + rpo                         = (known after apply)
#       + self_link                   = (known after apply)
#       + storage_class               = "STANDARD"
#       + terraform_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + uniform_bucket_level_access = (known after apply)
#       + url                         = (known after apply)

#       + soft_delete_policy (known after apply)

#       + versioning (known after apply)

#       + website (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# google_storage_bucket.tftestbucket: Creating...
# ╷
# │ Error: googleapi: Error 409: Your previous request to create the named bucket succeeded and you already own it., conflict
# │
# │   with google_storage_bucket.tftestbucket,
# │   on main.tf line 12, in resource "google_storage_bucket" "tftestbucket":
# │   12: resource "google_storage_bucket" "tftestbucket" {
# │
# ╵
# Releasing state lock. This may take a few moments...

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/tf-gcs-remote-backend/gcs-remote-be
# $ tf apply
# Acquiring state lock. This may take a few moments...

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # google_storage_bucket.tftestbucket will be created
#   + resource "google_storage_bucket" "tftestbucket" {
#       + effective_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + force_destroy               = false
#       + id                          = (known after apply)
#       + location                    = "US-EAST1"
#       + name                        = "tftestbucket-manav1"
#       + project                     = (known after apply)
#       + project_number              = (known after apply)
#       + public_access_prevention    = (known after apply)
#       + rpo                         = (known after apply)
#       + self_link                   = (known after apply)
#       + storage_class               = "STANDARD"
#       + terraform_labels            = {
#           + "goog-terraform-provisioned" = "true"
#         }
#       + uniform_bucket_level_access = (known after apply)
#       + url                         = (known after apply)

#       + soft_delete_policy (known after apply)

#       + versioning (known after apply)

#       + website (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# google_storage_bucket.tftestbucket: Creating...
# google_storage_bucket.tftestbucket: Creation complete after 5s [id=tftestbucket-manav1]
# Releasing state lock. This may take a few moments...

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
