

variable "instancename" {
  type    = string
  default = "terraforminstance"
  sensitive = true
}



variable "image_id" {

type = string

description = "The id of the machine image (AMI) to use for the server"

validation {
  condition = length ( var.image_id) > 4 && substr( var.image_id, 0, 4) == "ami-"
  error_message = "This is a not a valid ami id"

}

}





