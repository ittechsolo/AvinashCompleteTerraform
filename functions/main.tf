provider "aws" {
  region     = "us-west-2"

}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

output "timestamp" {
  value = local.time
}
#
#variable "tags" {
#  type = list
#  default = ["firstec2","secondec2"]
#}
#
#variable "ami" {
#  type = map
#  default = {
#    "us-east-1" = "ami-0323c3dd2da7fb37d"
#    "us-west-2" = "ami-0d6621c01e8c2de2c"
#    "ap-south-1" = "ami-0470e33cd681b2476"
#  }
#}

resource "aws_instance" "myec2" {
  ami = "ami-0ecf760d3d7e1fefa"
  instance_type = "t2.micro"
  tags = {
    date_created = local.time
  }
}

