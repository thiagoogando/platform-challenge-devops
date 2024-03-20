data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name = var.keypar_name

  tags = {
    Name = "ubuntu"
  }

  vpc_security_group_ids = [aws_security_group.http-sg.id, aws_security_group.https-sg.id, aws_security_group.ssh-sg.id]
}