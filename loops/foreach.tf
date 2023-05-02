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
 command = "echo  Name - ${each.value["price"]} - ${each.value["name"]}"

# command = "echo ${each.key} -${each.value["price"] -${each.value["name"]}"
}
}