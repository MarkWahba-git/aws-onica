
variable "name" {
	description = "base name" 
	default = "AWS-Onica"
}
# Ubuntu Precise 16.04 LTS (x64)
variable "aws_amis" {
  default = {
    us-east-1 = "ami-f4cc1de2"
    us-west-2 = "ami-a58d0dc5"
  }
}
variable "vpc_cidr" {
    description = "CIDR for VPC"
    default = "10.0.0.0/16"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-west-2a"]
  description = "AWS Region Availability Zones"
 
}

variable "public_subnet_cidr" {
  type = "list"
  description = "Public Subnet CIDR Block"
  default =["10.0.1.0/24"]
  
}
variable "private_subnet_cidr" {
  type = "list"
  description = "Private Subnet CIDR Block"
  default = ["10.0.2.0/24"]
}
