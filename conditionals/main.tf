

#istest = true  -->   test environment
#
#istest = false -->   prod environment



provider "aws" {
  region     = "us-west-2"
}

variable "istest" {
   default = "dobie"
}

#resource "aws_instance" "test" {
#   ami = "ami-066333d9c572b0680"
#   instance_type = "t2.micro"
#   count=var.istest == true ? 3 : 0
#}
#
#resource "aws_instance" "prod" {
#   ami = "ami-0ecf760d3d7e1fefa"
#   instance_type = "t2.large"
#   count = var.istest == false ? 1 : 0
#}

resource "aws_instance" "second_example" {
   ami = var.istest == "dobie" ? "ami-066333d9c572b0680" : "ami-0b28dfc7adc325ef4"
   instance_type = "t2.micro"
}