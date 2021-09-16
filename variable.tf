variable "ami" {
  type = string
  default = "ami-0a23ccb2cdd9286bb"
  
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
variable "bucket" {
  type = string
  default = "statebuck1510"
}

variable "instancetype" {
  type = string
  default = "t2.micro"
}
