resource "aws_instance" "instance" {

  ami                    = data.aws_ami.centos.image_id
  instance_type          = "t3.small"
  vpc_security_group_ids = [var.securitygrpid]

  tags = {
    Name = each.value["name"]
  }
  variable "securitygrpid"{}
