
data "aws_ami" "cloud_cobus" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

module "my_ec2_instance" {
  #local source  
  #source = "./new_module"
  # Github source 
  source = "https://github.com/seacow188/tf-module-example.git"

  ec2_instance_type  = var.ec2_instance_type
  ec2_instance_name  = var.ec2_instance_name
  number_of_instance = var.number_of_instance
  ec2_ami_id         = data.aws_ami.cloud_cobus.id
}

output "instance_id" {
  value = module.my_ec2_instance.ec2_instance_id
}

