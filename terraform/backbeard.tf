provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_vpc" "backbeard_vpc" {
  cidr_block = "10.0.0.0/16"
  tags { Name = "backbeard" }
}
resource "aws_key_pair" "backbeard" {
  key_name   = "${var.key_name}"
  public_key = "${var.ssh_public_key}"
}

resource "aws_subnet" "backbeard_subnet" {
  vpc_id = "${aws_vpc.backbeard_vpc.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "${var.region}a"
  tags {
    Name = "backbeard"
  }
}

resource "aws_network_interface" "backbeard" {
  subnet_id = "${aws_subnet.backbeard_subnet.id}"
  private_ips = ["10.0.0.100"]
  tags {
    Name = "backbeard"
  }
}

resource "aws_internet_gateway" "backbeard" {
  vpc_id = "${aws_vpc.backbeard_vpc.id}"
}

resource "aws_instance" "backbeard" {
  ami           = "ami-0a00ce72"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"

  network_interface {
    network_interface_id = "${aws_network_interface.backbeard.id}"
    device_index = 0
  }
  tags {
    Name = "backbeard"
  }
}

resource "aws_eip" "lb" {
  instance = "${aws_instance.backbeard.id}"
  vpc      = true
}

resource "aws_security_group" "backbeard" {
  name        = "backbeard"
  description = "backbeard security group"
  vpc_id      = "${aws_vpc.backbeard_vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_route_table" "backbeard" {
  vpc_id = "${aws_vpc.backbeard_vpc.id}"

  route {
    cidr_block = "10.0.0.0/0"
    gateway_id = "${aws_internet_gateway.backbeard.id}"
  }

  tags {
    Name = "backbeard"
  }
}
