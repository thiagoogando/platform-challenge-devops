resource "aws_security_group" "http-sg" {
  name        = "http allow"
  description = "allow http conections"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "https-sg" {
  name        = "https allow"
  description = "allow https conections"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ssh-sg" {
  name        = "ssh rule"
  description = "allow ssh conections"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ip_ssh}/32"]
  }
}