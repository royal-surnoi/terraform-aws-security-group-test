resource "aws_ssm_parameter" "allow_all_sg_id" {
  name  = "/${var.project}/${var.environment}/allow_all_sg_id"
  type  = "String"
  value = module.main.sg_id
}
