#This is example on how to use variables

resource "local_file" "devops" {
  filename = var.filename
  content = var.content
}