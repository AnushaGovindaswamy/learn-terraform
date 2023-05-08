module "ec2" {
source ="./EC2"
securitygrpid=module.sg.sg_idoutput
}
module "sg" {
source ="./SG"
}