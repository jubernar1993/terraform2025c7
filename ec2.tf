resource "aws_instance" "geico_web" {
    ami = "ami-08982f1c5bf93d976"
    instance_type = "t3.micro"
    key_name = "w7-terraform"
    subnet_id = aws_subnet.geico_public.id
    vpc_security_group_ids = [aws_security_group.geico_sg.id]
    associate_public_ip_address = true
    count = 5

    tags = {
        Name = "geico_Web_server_${count.index}"
    }
}