resource "null_resource" "provisioner" {

provisioner "local-exec" {
command ="echo hello ${var.input}"
}
}
resource "null_resource" "provisioner2" {

provisioner "local-exec" {
command ="echo hello ${var.input2}"
}
}
resource "null_resource" "provisioner3" {

provisioner "local-exec" {
command ="echo hello"
}
}
variable "input"{}
variable "input2"{}