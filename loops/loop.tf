variable "fruitslist" {
default = ["banana","mango","apple","orange","grapes","avacodo"]
}
resource "null_resource" "test" {

count = length(var.fruitslist)
  provisioner "local-exec" {
command  = "echo ${var.fruitslist[count.index]}"
}

}


