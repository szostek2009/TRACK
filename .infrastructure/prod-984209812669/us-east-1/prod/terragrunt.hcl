terraform {
  after_hook "add_local_backend" {
    commands = ["init", "init-from-module"]
    execute = ["cp", "${get_terragrunt_dir()}/${find_in_parent_folders("backend.tf", "ignore")}", "."]
  }

  extra_arguments "autoload_varfiles" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      "${get_terragrunt_dir()}/terraform.tfvars",
    ]

    optional_var_files = [
      "${get_terragrunt_dir()}/${find_in_parent_folders("account.tfvars", "ignore")}",
      "${get_terragrunt_dir()}/${find_in_parent_folders("region.tfvars", "ignore")}",
      "${get_terragrunt_dir()}/${find_in_parent_folders("env.tfvars", "ignore")}",
    ]
  }
}

remote_state {
   backend = "local"
   config = {
     path = "${get_terragrunt_dir()}.terraform.tfstate"
   }
}
