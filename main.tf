locals {
  tags = {
    env   = "production"
    files = module.files.stdout
  }
}

module "files" {
  source = "git::https://github.com/matti/terraform-shell-resource.git?ref=v1.0.5"
  #source  = "../terraform-shell-resource"
  command = "ls -l"
}

output "tags" {
  value = local.tags
}
