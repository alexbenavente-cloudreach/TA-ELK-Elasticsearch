resource "aws_security_group" "elasticsearch_sg" {
  name        = "elasticsearch_sg"
  description = "Allow private access"
  vpc_id      = data.aws_vpc.main_vpc.main.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow private SSH into Elasticsearch server"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.136/32"] # FIND THE IP ADDRESS OF THE PUBLIC SUBNET
  }
  ingress {
    description = "ingress rules"
    from_port = 9200
    to_port = 9300
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "egress rules"
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
  tags={
    Name="elasticsearch_sg"
  }
