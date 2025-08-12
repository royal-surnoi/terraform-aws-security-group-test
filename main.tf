module "main" {
  source         = "git::https://github.com/royal-surnoi/terraform-aws-security-group.git?ref=main"
  sg_name        = var.sg_name
  sg_description = "Allow SSH HTTP"
  project        = var.project
  environment    = var.environment
  sg_tags        = var.sg_tags
}

resource "aws_security_group_rule" "main_ingress_rules" {
  count             = length(var.backend_ports)
  type              = "ingress"
  from_port         = var.backend_ports[count.index]
  to_port           = var.backend_ports[count.index]
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.main.sg_id
}

resource "aws_security_group_rule" "main_all_traffic_ingress_rules" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.main.sg_id
}