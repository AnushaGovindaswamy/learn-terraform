variable "fruits" {
default = ["banana","mango","apple","orange","grapes","avacodo"]
}
resource "null_resource" "test" {

count = length(var.fruits)
  provisioner "remote-exec" {
name = var.fruits[count.index]
}

}


