#module "app" {
 # for_each = var.components
  #source = "./app"
  #ami                    = var.ami
  #instance_type          = each.value["instance_type"]
  #name                   = each.key
  #vpc_security_group_ids = var.vpc_security_group_ids
#}


# frontend = {
# instance_type = "t3.small"
# }

# In the input key is frontend, value is { instance_type = "t3.small"
# since it is been called by for_each prefix is needed like each.key and each.value




