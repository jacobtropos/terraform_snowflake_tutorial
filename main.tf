 terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "~> 0.59"
    }
  }
 }


provider "snowflake" {
      #account = "https://ec57383.eu-west-3.aws.snowflakecomputing.com"
      role     = "SYSADMIN"
    }

resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"

  auto_suspend = 60
}
