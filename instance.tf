resource "aws_instance" "elasticsearch_server" {
  ami                         = data.aws_ami.aws_ubuntu_server.id
  instance_type               = var.ec2_type
  subnet_id                   = data.aws_subnet.private.id
  vpc_security_group_ids      = [aws_security_group.elasticsearch_sg.id]
  key_name                    = var.my_keypair
  associate_public_ip_address = true


  tags = {
    Name = "elk1_elasticsearch_server"
  }
}


resource "aws_ebs_volume" "ebsvolume" {
  availability_zone = "us-east-1a"
  size              = 50
  encrypted         = false
  tags = {
    name = "EBS_Elastic"
  }

}

resource "aws_volume_attachment" "datavol" {
  device_name = "/dev/sdh"
  instance_id = aws_instance.elasticsearch_server.id
  volume_id   = aws_ebs_volume.ebsvolume.id
}




