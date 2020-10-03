resource "aws_key_pair" "keypair" {

  key_name = "ec2instance"

  public_key = var.ec2key

}

resource "aws_instance" "myec2" {

  ami           = "${var.ami}"

  instance_type = "t2.micro"

  key_name = "ec2instance"

}