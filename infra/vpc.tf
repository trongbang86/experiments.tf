variable publicSubnetCidrs {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "public subnet cidrs"
}

variable azs {
    type = list(string)
    default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

resource "aws_vpc" "vpcMain" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "vpcMain"
    }
}

resource "aws_subnet" "publicSubnets" {
    count = length(var.publicSubnetCidrs)
    vpc_id = aws_vpc.vpcMain.id
    availability_zone = element(var.azs, count.index)
    cidr_block = element(var.publicSubnetCidrs, count.index)
    
    tags = {
        Name = "Public Subnet ${count.index + 1}"
    }

}