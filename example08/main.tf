#This is main config file which is displaying a output variable

#The value = var.no_of_viewers value is coming from the -var-file prod.tfvars.json 

#Thevariable no_of_viewers is defined in variables.tf file

output "batch_students" {
  value = var.no_of_viewers
}

# $ tf plan -var-file=prod.tfvars.json

# Changes to Outputs:
#   + batch_students = 55

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
# ╷
# │ Warning: Value for undeclared variable
# │ 
# │ The root module does not declare a variable named "batch" but a value was found in file "prod.tfvars.json". If you meant to use
# │ this value, add a "variable" block to the configuration.
# │
# │ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your  
# │ organization. To reduce the verbosity of these warnings, use the -compact-warnings option.
# ╵

# ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

# Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
# "terraform apply" now.

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example08 (feature/terraform-variables)
# $

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example08 (feature/terraform-variables)
# $

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example08 (feature/terraform-variables)
# $ tf apply -auto-approve -var-file=prod.tfvars.json 

# Changes to Outputs:
#   + batch_students = 55

# You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
# ╷
# │ Warning: Value for undeclared variable
# │
# │ The root module does not declare a variable named "batch" but a value was found in file "prod.tfvars.json". If you meant to use     
# │ this value, add a "variable" block to the configuration.
# │
# │ To silence these warnings, use TF_VAR_... environment variables to provide certain "global" settings to all configurations in your  
# │ organization. To reduce the verbosity of these warnings, use the -compact-warnings option.
# ╵

# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

# Outputs:

# batch_students = 55

# MANVENDRA@MANAV-PC MINGW64 /d/VS Code/terraform/terraform-variables/example08 (feature/terraform-variables)