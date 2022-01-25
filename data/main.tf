provider "aws" {
  region     = "us-west-2"
}


data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

data "aws_s3_bucket" "mys3buck" {
  bucket = "avinash-del-test-1"
}
#below is just an example which doesn't work
#data "aws_ami" "app_ami" {
#  most_recent = true
#  owners = ["464599248654"]
#
#  filter {
#    name   = "name"
#    values = ["golden*"]
#  }
#}

#data "aws_ami" "app_ami" {
#    most_recent = true
#
#    filter {
#        name   = "name"
#        values = ["ubuntu/images/hvm-ssd*"]
#    }
#
#    filter {
#        name   = "virtualization-type"
#        values = ["hvm"]
#    }
#
#    owners = ["099720109477"] # Canonical
#}

resource "aws_instance" "instance-1" {
    ami = data.aws_ami.app_ami.id
   instance_type = "t2.micro"
}

#output "test" {
#  value = data.aws_ami.app_ami
#}

output "s3details" {
  value = data.aws_s3_bucket.mys3buck
}
output "s3detailsarn" {
  value = data.aws_s3_bucket.mys3buck.arn
}




#data --> borowing --> destroy (no)
#
#import --> owning --> update/destroy

