resource "aws_instance" "web" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
}
