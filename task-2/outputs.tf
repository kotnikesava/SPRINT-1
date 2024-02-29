output "awsinstancepublicip" {
    description = "the public ip address of ec2 instance"
    value = "${aws_instance.my-ec2-vm.public_ip}"
}

