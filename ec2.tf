resource "aws_instance" "web" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
}

resource "aws_security_group" "demo" {
  description = "Allow SSH"
}

resource "aws_vpc_security_group_ingress_rule" "ing" {
  security_group_id = aws_instance.web.id
  ip_protocol = "tcp"
  to_port = 22
  from_port = 22
  cidr_ipv4 = "0.0.0.0/0"
}