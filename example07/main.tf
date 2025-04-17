#How variable as type list can be used in TF

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

output "showing_gce_machine_detail" {
  value = var.gcp-gce-object.*
}

output "showing_gce_machine_name" {
  value = var.gcp-gce-object.name
}

output "showing_gce_machine_instances" {
  value = var.gcp-gce-object.instances
}

output "showing_gce_machine_keys" {
  value = var.gcp-gce-object.keys
}


# $ tf apply
# local_file.devops: Refreshing state... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]
# local_file.devops-var: Refreshing state... [id=321d79e3506d304e51cc9227794e90bc6d625335]

# Changes to Outputs:
#   + showing_gce_machine_detail = [
#       + {
#           + ami       = "ami-76664cdeesa11"
#           + instances = 0
#           + keys      = [
#               + "keys1.pem",
#               + "keys2.pem",
#             ]
#           + name      = "my-gce-instance"
#         },
#     ]

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes


# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

# Outputs:

# devops_op_trainer = "Manvendra Singh Yadav4"
# showing_gce_machine_detail = [
#   {
#     "ami" = "ami-76664cdeesa11"
#     "instances" = 0
#     "keys" = tolist([
#       "keys1.pem",
#       "keys2.pem",
#     ])
#     "name" = "my-gce-instance"
#   },
# ]

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example07 (feature/terraform-variables)
# $ tf plan
# local_file.devops: Refreshing state... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]
# local_file.devops-var: Refreshing state... [id=321d79e3506d304e51cc9227794e90bc6d625335]

# Changes to Outputs:
#   + showing_gce_machine_instances = 0
#   + showing_gce_machine_keys      = [
#       + "keys1.pem",
#       + "keys2.pem",
#     ]
#   + showing_gce_machine_name      = "my-gce-instance"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example07 (feature/terraform-variables)
# $ tf apply
# local_file.devops-var: Refreshing state... [id=321d79e3506d304e51cc9227794e90bc6d625335]
# local_file.devops: Refreshing state... [id=2bfbfa1bd7ba4bdcc24e9361290602caad4db145]

# Changes to Outputs:
#   + showing_gce_machine_instances = 0
#   + showing_gce_machine_keys      = [
#       + "keys1.pem",
#       + "keys2.pem",
#     ]
#   + showing_gce_machine_name      = "my-gce-instance"

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes


# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

# Outputs:

# devops_op_trainer = "Manvendra Singh Yadav4"
# showing_gce_machine_detail = [
#   {
#     "ami" = "ami-76664cdeesa11"
#     "instances" = 0
#     "keys" = tolist([
#       "keys1.pem",
#       "keys2.pem",
#     ])
#     "name" = "my-gce-instance"
#   },
# ]
# showing_gce_machine_instances = 0
# showing_gce_machine_keys = tolist([
#   "keys1.pem",
#   "keys2.pem",
# ])
# showing_gce_machine_name = "my-gce-instance"