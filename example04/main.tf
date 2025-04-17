resource "local_file" "devops" {
  filename = "devops-test.txt"
  content = "This is devops test file"
}

resource "local_file" "devops-var" {
  filename = var.filename
  content = var.content
}

output "devops_op_trainer" {
  value = var.devops_op_trainer
}

#In this example - we need to define the variable value in below way
#export TF_VAR_devops_op_trainer="Manvendra Singh Yadav4"