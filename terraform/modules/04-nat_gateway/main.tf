resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "CloudOpsKit-NAT-Gateway"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "CloudOpsKit-NAT-Gateway"
  }
}
