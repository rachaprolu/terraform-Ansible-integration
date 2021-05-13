resource "aws_subnet" "PublicAZA" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "10.1.3.0/24"
tags = {
    Name = "PublicAZA"
  }
 availability_zone = "us-east-2a"
}

resource "aws_route_table_association" "PublicAZA" {
    subnet_id = "${aws_subnet.PublicAZA.id}"
    route_table_id = "${aws_route_table.public.id}"
}
resource "aws_subnet" "PrivateAZA" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "10.1.4.0/24"
tags = {
    Name = "PrivateAZA"
  }


  availability_zone = "us-east-2b"
}
resource "aws_route_table_association" "PrivateAZA" {
    subnet_id = "${aws_subnet.PrivateAZA.id}"
    route_table_id = "${aws_route_table.private.id}"
}
