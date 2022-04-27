resource "aws_instance" "elasticsearch_server" {
  count                  = 1
  ami                    = data.aws_ami.aws_ubuntu_server.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.elasticsearch_sg.id]
  key_name               = var.aws_keypair
  associate_public_ip_address = true
  

  tags = {
    Name = "talent-academy-elasticsearch-server"
  }
}