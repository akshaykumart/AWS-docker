provider "aws" {
region= "us-east-1"
access_key= "AKIAWFCL3LBEJVYA5X64"      
secret_key= "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"
}

resource "aws_instance" "my-instance" {
ami= "ami-052efd3df9dad4825"
instance_type= "t2.micro"
key_name= "devops"
security_groups= ["subnet1"]
tags= {
Name= "my-instance"
}
}
