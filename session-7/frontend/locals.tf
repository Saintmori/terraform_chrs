# # Local is used for something that is repeated over and over again.
# # warning: do not overuse locals.

# # 1.naming standard
# # 2.taggin standard(common tags)
# Naming Standard:

# aws-ue1-nonprod-dev-cat-${resource_name}
# aws = cloud_provider
# ue1 = us-east-1
# nonprod = account
# dev = environment
# cat = project
# ${resource_name} = asg, alb, route53, rds, etc

# tagging standard:

# env = ""
# project = ""
# team = ""
# owner = ""
# managed_by = ""

locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
  common_tags = {
    env        = var.env
    project    = var.project
    team       = "DevOps"
    owner      = "murtaza"
    managed_by = "terraform"
  }
}