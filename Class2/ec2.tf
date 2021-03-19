resource "aws_instance" "web" {
  ami                         = "ami-0b6b51e397faf2316"
  instance_type               = "t3.micro"
  key_name                    = "Laptop New"
  associate_public_ip_address = true
  availability_zone           = "eu-west-2a"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  user_data                   = file("userdata.sh")
  tags = {
    "Name" = "Kamila"
  }
}

resource "aws_instance" "web2" {
  ami                         = "ami-0b6b51e397faf2316"
  instance_type               = "t3.micro"
  key_name                    = "Laptop New"
  associate_public_ip_address = true
  availability_zone           = "eu-west-2a"
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  user_data                   = file("userdata.sh")
  tags = {
    "Name" = "Kamila"
    "CreatedBy" = "terraform"
  }
}