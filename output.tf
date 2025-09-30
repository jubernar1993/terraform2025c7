output "geico_server_ip" {
  value = {
    for c, ip in aws_instance.geico_web : c => ip.public_ip
  }
}

output "public_subnet_info" {
  value = aws_subnet.geico_public.availability_zone
}