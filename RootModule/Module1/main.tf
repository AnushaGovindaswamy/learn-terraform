resource "null_resource" "provisioner" {

provisioner "local-exec" {
command ="echo hello ${input}"
}
}
resource "null_resource" "provisioner2" {

provisioner "local-exec" {
command ="echo hello"
}
}
resource "null_resource" "provisioner3" {

provisioner "local-exec" {
command ="echo hello"
}
}
variable "input"{}