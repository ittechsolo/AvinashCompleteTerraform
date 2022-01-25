
resource "aws_instance" "test" {
  ami           = var.ami_ids["linux"]
  instance_type = var.listexample[1]
  tags = {
    Name = var.ec2_name_tag
  }
}
resource "aws_instance" "test2" {
  ami           = var.ami_ids["ubuntu"]
  instance_type = var.listexample[2]
  tags = {
    Name = var.ec2_name_tag
  }
}

resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket-jjtech"
  acl    = "private"
}
