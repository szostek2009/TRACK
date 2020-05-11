terraform {
  extra_arguments "autoload_varfiles" {
    commands = get_terraform_commands_that_need_vars()

    required_var_files = [
      "${get_terragrunt_dir()}/terraform.tfvars",
    ]

    optional_var_files = [
      find_in_parent_folders("account.tfvars", "ignore"),
      find_in_parent_folders("region.tfvars", "ignore"),
      find_in_parent_folders("env.tfvars", "ignore"),
    ]
  }

  extra_arguments "add_state_path" {
    commands = [
      "taint",
    ]

    arguments = [
      "-state=${get_terragrunt_dir()}.terraform.tfstate"
    ]
  }
}

remote_state {
  backend = "local"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    path = "${get_terragrunt_dir()}.terraform.tfstate"
  }
}
