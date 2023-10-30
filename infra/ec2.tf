resource "aws_instance" publicEC2 {
    count = 3
    ami = "ami-0fa399d9c130ec923"
    instance_type = "t2.small"
    subnet_id = element(aws_subnet.publicSubnets, count.index).id
    tags = {
        Name = "Public EC2 ${count.index + 1}"
    }
}