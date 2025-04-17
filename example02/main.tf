#This is an example on how have variable and tf config in one file


variable "file_name" {
  description = "Name of the file to be created"
  type        = string
  default     = "example.txt"
}

variable "file_content" {
  description = "Content to write into the file"
  type        = string
  default     = "Hello, Terraform!"
}

resource "local_file" "example" {
  filename = var.file_name
  content  = var.file_content
}