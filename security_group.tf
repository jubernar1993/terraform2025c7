resource "aws_security_group" "geico_sg" {
  name        = "geico_sg"
  description = "Allow ssh traffic and all outbound traffic"
  vpc_id      = aws_vpc.geico.id

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress  {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

  tags = {
    Name = "geico_web"
  }
}

