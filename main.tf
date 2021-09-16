resource "aws_security_group" "sg77789" {
  name        = var.sgname
  description = "Security group for nodes"

  ingress = [
    {
      description      = "This is for HTTP"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    },

    {
      description      = "This is for SSH"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    }
  ]

  egress = [
    {
      description = "This is Egress"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    }
  ]

  tags = {
    Name = "Security Group"
  }
}



resource "aws_instance" "node1" {
  ami           = var.ami
  instance_type = var.instancetype
  security_groups = [ var.sgname ]
  
tags = {
    Name = var.node1
  }
}

resource "aws_instance" "node2" {
  ami           = var.ami
  instance_type = var.instancetype
  security_groups = [ var.sgname ]

tags = {
    Name = var.node2
  }
}