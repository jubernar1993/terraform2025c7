resource "aws_ebs_volume" "ebs_geico" {
  availability_zone = "us-east-1a"
  count             = 5
  size              = 20

  tags = {
    Name = "ebs_geico"
  }
}
resource "aws_volume_attachment" "ebs_geico_attachment" {
  count       = 5
  volume_id   = aws_ebs_volume.ebs_geico[count.index].id
  instance_id = aws_instance.geico_web[count.index].id
  device_name = "/dev/sdh"
}