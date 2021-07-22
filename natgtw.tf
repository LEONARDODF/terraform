resource "aws_eip" "nat_a" {
  vpc = true
  depends_on = [ aws_internet_gateway.igw ]
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.terraform-leo.id
}

resource "aws_nat_gateway" "nat_gtw_a" {
  allocation_id = aws_eip.nat_a.id
  subnet_id = aws_subnet.public_subnet_a.id

  depends_on = [ aws_internet_gateway.igw ]
}
        
        #########

resource "aws_eip" "nat_c" {
  vpc = true
  depends_on = [ aws_internet_gateway.igw ]
}

resource "aws_nat_gateway" "nat_gtw_c" {
  allocation_id = aws_eip.nat_c.id
  subnet_id = aws_subnet.public_subnet_a.id

  depends_on = [ aws_internet_gateway.igw ]
}


