##Certo

resource "aws_vpc" "terraform-leo" {
    cidr_block = "10.0.0.0/21"
    enable_dns_hostnames = true
  tags = {
    Name = "terraform-leo"
  }
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id     = aws_vpc.terraform-leo.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  

  tags = {
    Name = "Public Subnet-A"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id = aws_vpc.terraform-leo.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1c"

  tags = {
      Name = "Public Subnet C"
  }
}

resource "aws_subnet" "private_subnet_app_a" {
  vpc_id = aws_vpc.terraform-leo.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
      Name = "Private Subnet APP A"
  }
}

resource "aws_subnet" "private_subnet_app_c" {
  vpc_id = aws_vpc.terraform-leo.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-east-1c"

  tags = {
      Name = "Private Subnet APP C"
  }
}

resource "aws_subnet" "private_subnet_db_a" {
  vpc_id = aws_vpc.terraform-leo.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-east-1a"

  tags = {
      Name = "Private Subnet DB A"
  }
}

resource "aws_subnet" "private_subnet_db_c" {
  vpc_id = aws_vpc.terraform-leo.id
  cidr_block = "10.0.7.0/24"
  availability_zone = "us-east-1c"

  tags = {
      Name = "Private Subnet DB C"
  }
}