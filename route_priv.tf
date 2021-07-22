#Certo

resource "aws_route_table" "router_priv_a" {
  vpc_id = aws_vpc.terraform-leo.id
  

  route {
      cidr_block =  "0.0.0.0/0"
      gateway_id = aws_nat_gateway.nat_gtw_a.id
  }

}
#### C
resource "aws_route_table" "router_priv_c" {
  vpc_id = aws_vpc.terraform-leo.id
  

  route {
      cidr_block =  "0.0.0.0/0"
      gateway_id = aws_nat_gateway.nat_gtw_c.id
  }

}
###
resource "aws_route_table_association" "priv_app_a" {
  subnet_id = aws_subnet.private_subnet_app_a.id
  route_table_id = aws_route_table.router_priv_a.id
}

resource "aws_route_table_association" "priv_app_c" {
  subnet_id = aws_subnet.private_subnet_app_c.id
  route_table_id = aws_route_table.router_priv_c.id
}

resource "aws_route_table_association" "priv_db_a" {
  subnet_id = aws_subnet.private_subnet_db_a.id
  route_table_id = aws_route_table.router_priv_a.id
}

resource "aws_route_table_association" "priv_db_c" {
  subnet_id = aws_subnet.private_subnet_db_c.id
  route_table_id = aws_route_table.router_priv_c.id
}

