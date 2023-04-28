variable "fruits" {
default = [banana,mango,apple,orange,grapes,avacodo]
}
resource "nullresource" "test" {

count = length(var.fruits)
tags

{
name = var.fruits[count.index]
}

}


