output "ec2public" {
  value = aws_instance.test.public_ip
}

