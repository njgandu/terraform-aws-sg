variable "project_name" {
  type = string
  
}

variable "environment" {
  type = string
  default = "dev"
  
}

variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "common_tags" {
  type = map 
}

variable "sg_tags" {
  type = map
  default = {}
}

variable "vpc_id" {
  type = string
}

variable "ingress_rules" {
  type = list 
  default = []
}

variable "egress_rules" {
  type = list
  default = [
    {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}