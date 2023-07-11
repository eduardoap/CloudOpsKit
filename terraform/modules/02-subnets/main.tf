resource "aws_subnet" "public" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.all.names[count.index]
  tags = merge(
    var.tags,
    {
      Name = "subnetPublicAZ${count.index + 1}"
    }
  )
}

resource "aws_subnet" "private" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = data.aws_availability_zones.all.names[count.index]
  tags = merge(
    var.tags,
    {
      Name = "subnetPrivateAZ${count.index + 1}"
    }
  )
}