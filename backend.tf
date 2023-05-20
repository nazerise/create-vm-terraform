terraform {
  backend "http" {
    address = "https://git.example.com/api/v4/projects/project_number/terraform/state/terraform_state_name"
    username = "user"
    password = "Token"
  }
}
