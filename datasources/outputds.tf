output "securitygroups" {
value = data.aws_security_groups.test
}
output "securitygroup" {
value = data.aws_security_group.selected
}