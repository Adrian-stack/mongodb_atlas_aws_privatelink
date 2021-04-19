# VPC
resource "aws_vpc" "test" {
  cidr_block = var.cidr_block

    tags = {
      Name = "test"
  }
}

# Subnets
resource "aws_subnet" "main-private" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.dmz_block
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "DMZ"
  }
}

# Internet GW
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.test.id

  tags = {
    Name = "main"
  }
}

# route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }

  tags = {
    Name = "main-private"
  }
}

# route associations public
resource "aws_route_table_association" "main-public" {
  subnet_id      = aws_subnet.main-private.id
  route_table_id = aws_route_table.main-public.id
}