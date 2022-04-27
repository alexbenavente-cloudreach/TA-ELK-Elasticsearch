# DEFINING ALL VARIABLES
variable "aws_owner_id" {
  description = "Contains the Owner ID of the ami"
  type        = string
}

variable "aws_ami_name" {
  description = "Name of the ami for my project"
  type        = string
}

variable "vpc_name" {
  description = "Name of the vpc for my project"
  type        = string
}

variable "ec2_type" {
  description = "Type of my ec2 instance"
  type        = string
  default     = "t3.medium"
}


variable "my_keypair" {
  default = "EC2 key pair"
}

variable "number_of_instances" {
  description = "Amount of instances for my public subnet"
}

variable "private_subnet_name" {
  type = string
}