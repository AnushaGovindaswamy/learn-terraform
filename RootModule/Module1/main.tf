resource "nullresource" "provisioner" {

provisioner "local-exec" {
command ="echo hello ${input}"
}
}
resource "nullresource" "provisioner2" {

provisioner "local-exec" {
command ="echo hello"
}
}
resource "nullresource" "provisioner3" {

provisioner "local-exec" {
command ="echo hello"
}
}
variable "input"{}