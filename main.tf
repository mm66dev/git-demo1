resource "snowflake_database" "tf_db" {
  name         = "TF_DEMO_DB"
}

resource "snowflake_warehouse" "tf_warehouse" {
  name                      = "TF_DEMO_WH"
  warehouse_size            = "XSMALL"
  max_cluster_count         = 1
  min_cluster_count         = 1
  auto_suspend              = 60
  auto_resume               = true
  initially_suspended       = true
}

resource "snowflake_schema" "tf_schema1" {
  database            = "TF_DEMO_DB"
  name                = "tf_schema"
  data_retention_days = 1
}