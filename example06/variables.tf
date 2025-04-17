variable "filename" {
  default = "hello.txt"
}

variable "content_map" {
  type = map
  default = {
    "content1" = "This is coming from map and content1"
    "content2" = "This is coming from map and content2"
  }
}

variable "devops_op_trainer" {
    default = "devops_op_trainer=MSY"
}

variable "file_list" {
  type = list
  default = ["first.txt","second.txt"]
}