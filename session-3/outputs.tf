output "main_instace_public_ip" {
    value = aws_instance.main.public_ip     # Refrence
    description = "this is the ip address of the instance"
}
output "main_instance_private_public_ip" {
    value = aws_instance.main.private_ip     # Refrence
    description = "this is the ip address of the instance"
}