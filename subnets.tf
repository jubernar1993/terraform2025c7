resource "aws_subnet" "geico_public" {
  vpc_id            = aws_vpc.geico.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"


  tags = {
    Name = "geico_public"
  }
}