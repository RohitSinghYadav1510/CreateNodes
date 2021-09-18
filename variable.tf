variable "ami" {
  type = string
  default = "ami-06a0b4e3b7eb7a300"
  
}
variable "region" {
  type = string 
  default = "ap-south-1"
}
#Instance Names
variable "node1" {
  type = string
  default = "Node1"
}
variable "node2" {
  type = string
  default = "Node2"
}

variable "sgname" {
  type = string
  default = "NodeSG"
  
}

variable "instancetype" {
  type = string
  default = "t2.micro"
}

variable "ansiblepass" {
  type = string
  default = "qwertyu"
}

variable "ansibleIP" {
  type = string
  default = "54.169.181.233"
}

variable "ansibleuser" {
  type = string
  default = "ansible"
}


