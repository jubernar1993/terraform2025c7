resource "aws_route_table" "public_RT_geico" {
  vpc_id = aws_vpc.geico.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_geico.id
  }

  tags = {
    Name = "Public_RTW_geico"
  }
}

/// route_table association for public subnet.


resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.geico_public.id
  route_table_id = aws_route_table.public_RT_geico.id
}