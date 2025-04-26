resource "local_file" "devops3" {
   count = 3
   filename = "file${count.index + 1}"
   content = "filecontent${count.index + 1}"
 }

 #Output

# PS D:\VS Code\terraform\terraform-loops> terraform init
# Terraform initialized in an empty directory!

# The directory has no Terraform configuration files. You may begin working
# with Terraform immediately by creating Terraform configuration files.
# PS D:\VS Code\terraform\terraform-loops> cd .\count\
# PS D:\VS Code\terraform\terraform-loops\count> terraform init
# Initializing the backend...
# Initializing provider plugins...
# - Finding latest version of hashicorp/local...
# - Installing hashicorp/local v2.5.2...
# - Installed hashicorp/local v2.5.2 (signed by HashiCorp)
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
# PS D:\VS Code\terraform\terraform-loops\count> terraform plan

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # local_file.devops3[0] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent1"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file1"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3[1] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent2"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file2"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3[2] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent3"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file3"
#       + id                   = (known after apply)
#     }

# Plan: 3 to add, 0 to change, 0 to destroy.

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.
# PS D:\VS Code\terraform\terraform-loops\count> terraform apply --auto-approve

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following     
# symbols:
#   + create

# Terraform will perform the following actions:

#   # local_file.devops3[0] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent1"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file1"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3[1] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent2"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file2"
#       + id                   = (known after apply)
#     }

#   # local_file.devops3[2] will be created
#   + resource "local_file" "devops3" {
#       + content              = "filecontent3"
#       + content_base64sha256 = (known after apply)
#       + content_base64sha512 = (known after apply)
#       + content_md5          = (known after apply)
#       + content_sha1         = (known after apply)
#       + content_sha256       = (known after apply)
#       + content_sha512       = (known after apply)
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "file3"
#       + id                   = (known after apply)
#     }

# Plan: 3 to add, 0 to change, 0 to destroy.
# local_file.devops3[1]: Creating...
# local_file.devops3[2]: Creating...
# local_file.devops3[0]: Creating...
# local_file.devops3[0]: Creation complete after 0s [id=c37adce2611b79584368d430d52dcdd8a7f9fb21]
# local_file.devops3[2]: Creation complete after 0s [id=b2039247518442aa01786c8b60f04cefafdc2173]
# local_file.devops3[1]: Creation complete after 0s [id=99beaa73cba6f1a35e18f4244bcc647c51ec9057]

# Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
# PS D:\VS Code\terraform\terraform-loops\count> git init
# Initialized empty Git repository in D:/VS Code/terraform/terraform-loops/count/.git/
# PS D:\VS Code\terraform\terraform-loops\count> git remote add origin https://github.com/f608253/terraform-projects.git
# PS D:\VS Code\terraform\terraform-loops\count> git remote -v
# origin  https://github.com/f608253/terraform-projects.git (fetch)
# origin  https://github.com/f608253/terraform-projects.git (push)
# PS D:\VS Code\terraform\terraform-loops\count> 
# PS D:\VS Code\terraform\terraform-loops\count> git checkout -b feature/loops
# Switched to a new branch 'feature/loops'
# PS D:\VS Code\terraform\terraform-loops\count> 
# PS D:\VS Code\terraform\terraform-loops\count> git add .
# warning: in the working copy of '.terraform.lock.hcl', LF will be replaced by CRLF the next time Git touches it
# warning: in the working copy of '.terraform/providers/registry.terraform.io/hashicorp/local/2.5.2/windows_386/LICENSE.txt', LF will be replaced by CRLF the next time Git touches it
# warning: in the working copy of 'terraform.tfstate', LF will be replaced by CRLF the next time Git touches it
# PS D:\VS Code\terraform\terraform-loops\count> git commit -m "count loop"
# [feature/loops (root-commit) 66aa9d4] count loop
#  8 files changed, 506 insertions(+)
#  create mode 100644 .terraform.lock.hcl
#  create mode 100644 .terraform/providers/registry.terraform.io/hashicorp/local/2.5.2/windows_386/LICENSE.txt
#  create mode 100644 .terraform/providers/registry.terraform.io/hashicorp/local/2.5.2/windows_386/terraform-provider-local_v2.5.2_x5.exe
#  create mode 100644 file1
#  create mode 100644 file2
#  create mode 100644 file3
#  create mode 100644 main.tf
#  create mode 100644 terraform.tfstate
# PS D:\VS Code\terraform\terraform-loops\count> git push -u origin feature/loops
# Enumerating objects: 17, done.
# Counting objects: 100% (17/17), done.
# Delta compression using up to 12 threads
# Compressing objects: 100% (8/8), done.
# Writing objects: 100% (17/17), 4.89 MiB | 2.57 MiB/s, done.
# Total 17 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
# remote: 
# remote: Create a pull request for 'feature/loops' on GitHub by visiting:
# remote:      https://github.com/f608253/terraform-projects/pull/new/feature/loops
# remote:
# To https://github.com/f608253/terraform-projects.git
#  * [new branch]      feature/loops -> feature/loops
# branch 'feature/loops' set up to track 'origin/feature/loops'.
# PS D:\VS Code\terraform\terraform-loops\count> 