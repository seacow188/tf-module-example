variable "ec2_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_instance_name" {
  type    = string
  default = "HG Hello Terraform on AWS"
}

variable "number_of_instance" {
  type = number
}
