variable "filename" {
  default = "hello.txt"
}

variable "content_map" {
  type = map
  default = {
    "content1" = "this is a cool content1"
    "content2" = "this is a cooler content2"
  }
}

variable "devops_op_trainer" {
    default = "devops_op_trainer=MSY"
}