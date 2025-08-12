variable "sg_name" {
  default = "backend"
}

variable "project" {
  default = "fusionIQ"
}

variable "environment" {
  default = "dev"
}

variable "vpc_id" {
  default = ""
}

variable "sg_tags" {
  default = {
    component  = "backend",
    created    = "royal-1158",
    maintained = "devops-team"
  }
}

variable "backend_ports" {
  type    = list(any)
  default = [22, 80, 443, 8080]
}