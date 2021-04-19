# data "aws_vpc" "vpc" {
#   filter {
#     name   = "tag:Name"
#     values = ["test"]
#   }
# }

# data "aws_region" "current" {   
# }

# data "aws_subnet" "atlas" {
#   filter {
#     name   = "tag:Name"
#     values = ["DMZ"]
#   }
# }

# data "aws_security_group" "atlas" {
#   filter {
#     name   = "tag:Name"
#     values = ["allow-atlas"]
#   }
# }