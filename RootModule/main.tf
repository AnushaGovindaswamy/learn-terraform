module "sample"{
source ="./Module1"
input = "xyz"
input2=module.dummy.dummy_output

}
module "dummy"{
source ="./Module2"
}