variable "fruits" {
default = ["banana","mango","apple","orange","grapes","avacodo"]
}
resource "null_resource" "test" {

count = length(var.fruits)
  provisioner "local-exec" {
command  = echo ${var.fruits[count.index]}
}

}


