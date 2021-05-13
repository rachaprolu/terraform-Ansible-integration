resource "aws_instance" "sample-terraform" {
  ami           = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.PublicAZA.id}"
  vpc_security_group_ids = ["${aws_security_group.security.id}"]
  key_name = "last-key"
tags = {
    Name = "myserver"
  }
}
