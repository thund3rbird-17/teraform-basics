terraform {
  cloud {
    organization = "Praju_Empire" # Replace with your Terraform Cloud organization name

    workspaces {
      name = "teraform-basics" # Replace with your desired workspace name
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "example.txt"
  content  = "Hello, Terraform Cloud! This file was created using the local provider."
}

output "file_path" {
  value = local_file.example.filename
}

