resource "aws_route_table" "router_pub" {
  vpc_id = aws_vpc.terraform-leo.id
  

  route {
      cidr_block =  "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
  }

}

resource "aws_route_table_association" "pub_a" {
  subnet_id = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.router_pub.id
}

resource "aws_route_table_association" "pub_c" {
  subnet_id = aws_subnet.public_subnet_c.id
  route_table_id = aws_route_table.router_pub.id
}