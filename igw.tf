resource "aws_internet_gateway" "igw_geico" {
  vpc_id = aws_vpc.geico.id

  tags = {
    Name = "igw_geico"
  }
}