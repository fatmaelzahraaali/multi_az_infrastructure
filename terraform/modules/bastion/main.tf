resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = var.key_name
  tags = {
    Name = "Bastion"
  }
}
