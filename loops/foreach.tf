variable "dictionary" {
default = {
telugu ={
 price = 150
 name="tdic"
}
 hindi= {
price =180
 name="hd"
 }
 english ={
 price = 2150
 name = "ed"
 }
}

}

resource "null_resource" "sample" {

for_each = var.dictionary

provisioner "local-exec" {
 command = "echoName - ${each.value["price"]} - ${each.value["name"]}"
}
}
variable "makeup" {
default = ["foundation","concealer","lipstick"]
}
resource "null_resource" "example" {
for_each = toset(var.makeup)
provisioner "local-exec" {
command = "echo ${each.key}"
}
}