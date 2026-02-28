terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.36.0"
    }
  }
}

provider "snowflake" {
  account  = var.account
  username = var.username
  password = var.password
  role     = var.role
}
