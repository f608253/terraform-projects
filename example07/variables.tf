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
 # type = map
  default = ["first.txt","second.txt"]
}

variable "gcp-gce-object" {
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string
  })
  default = {
    name = "my-gce-instance"
    instances = 0
    keys = ["keys1.pem","keys2.pem"]
    ami = "ami-76664cdeesa11"
  }
}