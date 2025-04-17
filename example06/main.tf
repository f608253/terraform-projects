resource "local_file" "devops" {
  filename = var.file_list[0]
  content = var.content_map["content1"]
}

resource "local_file" "devops-var" {
  filename = var.file_list[1]
  content = var.content_map["content2"]
}

output "devops_op_trainer" {
  value = var.devops_op_trainer
}


# $ tf init
# Initializing the backend...
# Initializing provider plugins...
# - Reusing previous version of hashicorp/local from the dependency lock file
# - Using previously-installed hashicorp/local v2.5.2

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example06 (feature/terraform-variables)
# $ tf plan
# local_file.devops-var: Refreshing state... [id=321d79e3506d304e51cc9227794e90bc6d625335]
# local_file.devops: Refreshing state... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
# -/+ destroy and then create replacement

# Terraform will perform the following actions:

#   # local_file.devops must be replaced
# -/+ resource "local_file" "devops" {
#       ~ content_base64sha256 = "yMoNj+oiFm4NMuQELEnu3HUCiKSVw0WsRUJ7PYWqNPo=" -> (known after apply)
#       ~ content_base64sha512 = "mwTj+TOri9lzvccv3FcTEH59r0N79r+SjfUrVRZfciR7jE9g+0jruYcPmxBdlQh/h85daRI80fVOnCIpAneVzw==" -> (known after apply)
#       ~ content_md5          = "12794f93efe76a9054888e5b2464b42e" -> (known after apply)
#       ~ content_sha1         = "2bfbfa1bd7ba4bdcc24e9361290602caad4db145" -> (known after apply)
#       ~ content_sha256       = "c8ca0d8fea22166e0d32e4042c49eedc750288a495c345ac45427b3d85aa34fa" -> (known after apply)
#       ~ content_sha512       = "9b04e3f933ab8bd973bdc72fdc5713107e7daf437bf6bf928df52b55165f72247b8c4f60fb48ebb9870f9b105d95087f87ce5d69123cd1f54e9c2229027795cf" -> (known after apply)
#       ~ filename             = "devops-test.txt" -> "first.txt" # forces replacement
#       ~ id                   = "2bfbfa1bd7ba4bdcc24e9361290602caad4db145" -> (known after apply)
#         # (3 unchanged attributes hidden)
#     }

#   # local_file.devops-var must be replaced
# -/+ resource "local_file" "devops-var" {
#       ~ content_base64sha256 = "la0PXIl1ocotTsGYhwJVqZ1AZNSc18LpLtJgPh4mvQ4=" -> (known after apply)
#       ~ content_base64sha512 = "pKACVEJGlAq+f37d+B9317wYf65s1slUW3+iRRhsL747zY+ztqP4+5wmlGAFfAwAxFngLMx55KfY02xxLPsF/A==" -> (known after apply)
#       ~ content_md5          = "d9202de0ee6495ff924b02eb585bdde3" -> (known after apply)
#       ~ content_sha1         = "321d79e3506d304e51cc9227794e90bc6d625335" -> (known after apply)
#       ~ content_sha256       = "95ad0f5c8975a1ca2d4ec198870255a99d4064d49cd7c2e92ed2603e1e26bd0e" -> (known after apply)
#       ~ content_sha512       = "a4a002544246940abe7f7eddf81f77d7bc187fae6cd6c9545b7fa245186c2fbe3bcd8fb3b6a3f8fb9c269460057c0c00c459e02ccc79e4a7d8d36c712cfb05fc" -> (known after apply)
#       ~ filename             = "hello.txt" -> "second.txt" # forces replacement
#       ~ id                   = "321d79e3506d304e51cc9227794e90bc6d625335" -> (known after apply)
#         # (3 unchanged attributes hidden)
#     }

# Plan: 2 to add, 0 to change, 2 to destroy.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example06 (feature/terraform-variables)
# $ tf apply -auto-approve
# local_file.devops-var: Refreshing state... [id=321d79e3506d304e51cc9227794e90bc6d625335]
# local_file.devops: Refreshing state... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
# -/+ destroy and then create replacement

# Terraform will perform the following actions:

#   # local_file.devops must be replaced
# -/+ resource "local_file" "devops" {
#       ~ content_base64sha256 = "yMoNj+oiFm4NMuQELEnu3HUCiKSVw0WsRUJ7PYWqNPo=" -> (known after apply)
#       ~ content_base64sha512 = "mwTj+TOri9lzvccv3FcTEH59r0N79r+SjfUrVRZfciR7jE9g+0jruYcPmxBdlQh/h85daRI80fVOnCIpAneVzw==" -> (known after apply)
#       ~ content_md5          = "12794f93efe76a9054888e5b2464b42e" -> (known after apply)
#       ~ content_sha1         = "2bfbfa1bd7ba4bdcc24e9361290602caad4db145" -> (known after apply)
#       ~ content_sha256       = "c8ca0d8fea22166e0d32e4042c49eedc750288a495c345ac45427b3d85aa34fa" -> (known after apply)
#       ~ content_sha512       = "9b04e3f933ab8bd973bdc72fdc5713107e7daf437bf6bf928df52b55165f72247b8c4f60fb48ebb9870f9b105d95087f87ce5d69123cd1f54e9c2229027795cf" -> (known after apply)
#       ~ filename             = "devops-test.txt" -> "first.txt" # forces replacement
#       ~ id                   = "2bfbfa1bd7ba4bdcc24e9361290602caad4db145" -> (known after apply)
#         # (3 unchanged attributes hidden)
#     }

#   # local_file.devops-var must be replaced
# -/+ resource "local_file" "devops-var" {
#       ~ content_base64sha256 = "la0PXIl1ocotTsGYhwJVqZ1AZNSc18LpLtJgPh4mvQ4=" -> (known after apply)
#       ~ content_base64sha512 = "pKACVEJGlAq+f37d+B9317wYf65s1slUW3+iRRhsL747zY+ztqP4+5wmlGAFfAwAxFngLMx55KfY02xxLPsF/A==" -> (known after apply)
#       ~ content_md5          = "d9202de0ee6495ff924b02eb585bdde3" -> (known after apply)
#       ~ content_sha1         = "321d79e3506d304e51cc9227794e90bc6d625335" -> (known after apply)
#       ~ content_sha256       = "95ad0f5c8975a1ca2d4ec198870255a99d4064d49cd7c2e92ed2603e1e26bd0e" -> (known after apply)
#       ~ content_sha512       = "a4a002544246940abe7f7eddf81f77d7bc187fae6cd6c9545b7fa245186c2fbe3bcd8fb3b6a3f8fb9c269460057c0c00c459e02ccc79e4a7d8d36c712cfb05fc" -> (known after apply)
#       ~ filename             = "hello.txt" -> "second.txt" # forces replacement
#       ~ id                   = "321d79e3506d304e51cc9227794e90bc6d625335" -> (known after apply)
#         # (3 unchanged attributes hidden)
#     }

# Plan: 2 to add, 0 to change, 2 to destroy.
# local_file.devops: Destroying... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]
# local_file.devops-var: Destroying... [id=321d79e3506d304e51cc9227794e90bc6d625335]
# local_file.devops: Destruction complete after 0s
# local_file.devops-var: Destruction complete after 0s
# local_file.devops: Creating...
# local_file.devops-var: Creating...
# local_file.devops-var: Creation complete after 0s [id=321d79e3506d304e51cc9227794e90bc6d625335]
# local_file.devops: Creation complete after 0s [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]

# Apply complete! Resources: 2 added, 0 changed, 2 destroyed.

# Outputs:

# devops_op_trainer = "Manvendra Singh Yadav4"