resource "aws_redshift_cluster" "warehouse" {
  cluster_identifier = "enterprise-warehouse"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = "StrongPass123!"
  cluster_type       = "single-node"
}
