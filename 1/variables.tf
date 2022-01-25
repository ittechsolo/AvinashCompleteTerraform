variable "ec2_name_tag" {
  default = "JJTech-Example"
}

variable "listexample" {
            #   0          1          2
  default = ["t2.medium", "t2.micro","t2.nano"]
}
variable "ami_ids" {
  default = {
    linux = "ami-00f7e5c52c0f43726",
    ubuntu = "ami-0892d3c7ee96c0bf7"
  }
}



#data types
#string
#list
#map
#number
#bool