module "ec2" {
  source        = "github.com/Saintmori/terraform-session-october//session-9/modules/ec2"
  env           = "dev"
  instance_type = "t2.micro"
  ami           = "ami-09d3b3274b6c5d4aa"
}
# github.com = domain name
# Saintmori = organization
# terraform-session-october = repository
# tree/ = this and the branch should be removed 
# main/ = branch
# session-9/ = directory
# modules/ = directory
# ec2  = subdirectory