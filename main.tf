provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-01816d07b1128cd2d"
instance_type = "t2.medium"
key_name = "tulasi-pair"
vpc_security_group_ids = ["sg-01cf1cf01df9cb190"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
