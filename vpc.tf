resource "aws_vpc" "my_vpc" {
    cidr_block = "10.50.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "mytestvpc"
	Owner = "Dumpala Bharathraj"
	environment = "Prod"
    }
}

resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = "${aws_vpc.my_vpc.id}"
	tags = {
        Name = "mytestvpc-igw"
    }
}