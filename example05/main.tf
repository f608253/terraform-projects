resource "local_file" "devops" {
  filename = "devops-test.txt"
  content = var.content_map["content1"]
}

resource "local_file" "devops-var" {
  filename = var.filename
  content = var.content_map["content2"]
}

output "devops_op_trainer" {
  value = var.devops_op_trainer
}


# $ tf apply

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # local_file.devops will be created
#   + resource "local_file" "devops" {
#       + content              = "this is a cool content1"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "devops-test.txt"
#       + id                   = (known after apply)
#     }

#   # local_file.devops-var will be created
#   + resource "local_file" "devops-var" {
#       + content              = "this is a cooler content2"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "hello.txt"
#       + id                   = (known after apply)
#     }

# Plan: 2 to add, 0 to change, 0 to destroy.

# Changes to Outputs:
#   + devops_op_trainer = "Manvendra Singh Yadav4"

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# local_file.devops-var: Creating...
# local_file.devops: Creating...
# local_file.devops-var: Creation complete after 0s [id=e63949d6ca68af3f97c704695308b628c5587f89]
# local_file.devops: Creation complete after 0s [id=36a5a9eccd3dd422ba02636b9deb35025a0fc83a]

# Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

# Outputs:

# devops_op_trainer = "Manvendra Singh Yadav4"