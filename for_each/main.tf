
resource "local_file" "devops3" {
   for_each = toset(["file1","file2","file3","file4","fileN"])
   filename = "${each.value}"
   content = each.value
 }

 #Outout:

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-projects/for_each (feature/loops)
# $ terraform init
# Initializing the backend...
# Initializing provider plugins...
# - Reusing previous version of hashicorp/local from the dependency lock file
# - Installing hashicorp/local v2.5.2...
# - Installed hashicorp/local v2.5.2 (signed by HashiCorp)

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-projects/for_each (feature/loops)
# $ terraform plan
# local_file.devops3["file3"]: Refreshing state... [id=d5b0a58bc47161b1b8a831084b366f757c4f0b11]
# local_file.devops3["file2"]: Refreshing state... [id=cb99b709a1978bd205ab9dfd4c5aaa1fc91c7523]
# local_file.devops3["file1"]: Refreshing state... [id=60b27f004e454aca81b0480209cce5081ec52390]
# local_file.devops3["filen"]: Refreshing state... [id=8e8a1da1d6d1e320294688e003ae2e55a1a74e66]

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create
#   - destroy

# Terraform will perform the following actions:

#   # local_file.devops3["file4"] will be created
#   + resource "local_file" "devops3" {
#       + content              = "file4"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file4"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3["fileN"] will be created
#   + resource "local_file" "devops3" {
#       + content              = "fileN"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "fileN"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3["filen"] will be destroyed
#   # (because key ["filen"] is not in for_each map)
#   - resource "local_file" "devops3" {
#       - content              = "filen" -> null
#       - content_base64sha256 = "yFoY16+iToOZNPQN5nc+BOXW4mrqlY8aJ4uq+xb7TKU=" -> null
#       - content_base64sha512 = "ia5eX2JMSKlH3dyoMVc7xgOaxJvS22Y1lcSsNOvMrhmLO8w8zHEB64QT36AipmPChoUwpQ3MQQWxsMZgnBnERw==" -> null     
#       - content_md5          = "9cec235a46520d34f236a4db04ed22d4" -> null
#       - content_sha1         = "8e8a1da1d6d1e320294688e003ae2e55a1a74e66" -> null
#       - content_sha256       = "c85a18d7afa24e839934f40de6773e04e5d6e26aea958f1a278baafb16fb4ca5" -> null
#       - content_sha512       = "89ae5e5f624c48a947dddca831573bc6039ac49bd2db663595c4ac34ebccae198b3bcc3ccc7101eb8413dfa022a663c2868530a50dcc4105b1b0c6609c19c447" -> null
#       - directory_permission = "0777" -> null
#       - file_permission      = "0777" -> null
#       - filename             = "filen" -> null
#       - id                   = "8e8a1da1d6d1e320294688e003ae2e55a1a74e66" -> null
#     }

# Plan: 2 to add, 0 to change, 1 to destroy.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-projects/for_each (feature/loops)
# $

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-projects/for_each (feature/loops)
# $ terraform apply
# local_file.devops3["file3"]: Refreshing state... [id=d5b0a58bc47161b1b8a831084b366f757c4f0b11]
# local_file.devops3["file2"]: Refreshing state... [id=cb99b709a1978bd205ab9dfd4c5aaa1fc91c7523]
# local_file.devops3["file1"]: Refreshing state... [id=60b27f004e454aca81b0480209cce5081ec52390]
# local_file.devops3["filen"]: Refreshing state... [id=8e8a1da1d6d1e320294688e003ae2e55a1a74e66]

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create
#   - destroy

# Terraform will perform the following actions:

#   # local_file.devops3["file4"] will be created
#   + resource "local_file" "devops3" {
#       + content              = "file4"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file4"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3["fileN"] will be created
#   + resource "local_file" "devops3" {
#       + content              = "fileN"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "fileN"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3["filen"] will be destroyed
#   # (because key ["filen"] is not in for_each map)
#   - resource "local_file" "devops3" {
#       - content              = "filen" -> null
#       - content_base64sha256 = "yFoY16+iToOZNPQN5nc+BOXW4mrqlY8aJ4uq+xb7TKU=" -> null
#       - content_base64sha512 = "ia5eX2JMSKlH3dyoMVc7xgOaxJvS22Y1lcSsNOvMrhmLO8w8zHEB64QT36AipmPChoUwpQ3MQQWxsMZgnBnERw==" -> null     
#       - content_md5          = "9cec235a46520d34f236a4db04ed22d4" -> null
#       - content_sha1         = "8e8a1da1d6d1e320294688e003ae2e55a1a74e66" -> null
#       - content_sha256       = "c85a18d7afa24e839934f40de6773e04e5d6e26aea958f1a278baafb16fb4ca5" -> null
#       - content_sha512       = "89ae5e5f624c48a947dddca831573bc6039ac49bd2db663595c4ac34ebccae198b3bcc3ccc7101eb8413dfa022a663c2868530a50dcc4105b1b0c6609c19c447" -> null
#       - directory_permission = "0777" -> null
#       - file_permission      = "0777" -> null
#       - filename             = "filen" -> null
#       - id                   = "8e8a1da1d6d1e320294688e003ae2e55a1a74e66" -> null
#     }

# Plan: 2 to add, 0 to change, 1 to destroy.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# local_file.devops3["filen"]: Destroying... [id=8e8a1da1d6d1e320294688e003ae2e55a1a74e66]
# local_file.devops3["filen"]: Destruction complete after 0s
# local_file.devops3["file4"]: Creating...
# local_file.devops3["fileN"]: Creating...
# local_file.devops3["file4"]: Creation complete after 0s [id=1b641bf4f6b84efcd42920ff1a88ff2f97fb9d08]
# local_file.devops3["fileN"]: Creation complete after 0s [id=cc0e967eab2f5177aaa53f73074dbeada1a1aab3]

# Apply complete! Resources: 2 added, 0 changed, 1 destroyed.