# My awesome TF module
This is an example

## Usage
~~~
module "my_ec2_instance" {
   source = "github.com/seacow188/tf-module-example"

  ec2_instance_type  = "t3.micro"
  ec2_instance_name  = "My instance"
  number_of_instance = 1
  ec2_ami_id         = < AMI id to launch the instance>
}
~~~