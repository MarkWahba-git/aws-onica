provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAT4XSPXVPESTZRJFW"
  secret_key = "lF9Wr/xIDwGiw2Oy55fx06DBsIfVY6qav0S2tmum"
}


data "aws_ami" "example" {
   filter {
    name   = "name"
    values = ["amazon-eks-node-v*"]
  }

  most_recent = true
  owners      = ["602401143452"] # Amazon Account ID
}
data "template_file" "userdata" {
  template = "${file("scripts/userdata.sh")}"
  }
data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}
data "aws_availability_zones" "allzones" {}




output "ELB_DNS" {
  value = "${aws_elb.elb.dns_name}"
}
