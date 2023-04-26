variable "sample" {
default = "anusha govindaswamy"
}
output "sample" {
value = var.sample
value = "the output = ${var.sample}"
}
variable "number" {
default = 123
}
output "number" {
value= var.number
}
variable "boolean"{
default = true
}
output "boolean"{
value = "the output = ${var.boolean}"
}
variable "list" {
default = [1,2,3,"anusha",1996]
}
variable "dict" {
default = {
string ="anusha"
boolean=true
number = 1234

}
}