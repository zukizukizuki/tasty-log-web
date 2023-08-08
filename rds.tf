# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "tastylog-dev-mysql-multiaz"
resource "aws_db_instance" "tastylog_dev_mysql_multiaz" {
  allocated_storage                     = 20
  allow_major_version_upgrade           = null
  apply_immediately                     = null
  auto_minor_version_upgrade            = true
  availability_zone                     = "ap-northeast-1a"
  backup_retention_period               = 1
  backup_target                         = "region"
  backup_window                         = "19:39-20:09"
  ca_cert_identifier                    = "rds-ca-2019"
  character_set_name                    = null
  copy_tags_to_snapshot                 = true
  custom_iam_instance_profile           = null
  customer_owned_ip_enabled             = false
  db_name                               = "tastylog"
  db_subnet_group_name                  = "tastylog-dev-mysql-multiaz-subnetgroup"
  delete_automated_backups              = true
  deletion_protection                   = false
  domain                                = null
  domain_iam_role_name                  = null
  enabled_cloudwatch_logs_exports       = []
  engine                                = "mysql"
  engine_version                        = "8.0.34"
  final_snapshot_identifier             = null
  iam_database_authentication_enabled   = false
  identifier                            = "tastylog-dev-mysql-multiaz"
  identifier_prefix                     = null
  instance_class                        = "db.t3.micro"
  iops                                  = 0
  kms_key_id                            = "arn:aws:kms:ap-northeast-1:776811705601:key/22ec2d56-e252-4c09-ba12-6c20088e7f4d"
  license_model                         = "general-public-license"
  maintenance_window                    = "sat:15:30-sat:16:00"
  manage_master_user_password           = null
  master_user_secret_kms_key_id         = null
  max_allocated_storage                 = 1000
  monitoring_interval                   = 0
  monitoring_role_arn                   = null
  multi_az                              = false
  nchar_character_set_name              = null
  network_type                          = "IPV4"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "tastylog-dev-mysql-multiaz-parametergroup"
  password                              = null # sensitive
  performance_insights_enabled          = false
  performance_insights_kms_key_id       = null
  performance_insights_retention_period = 0
  port                                  = 3306
  publicly_accessible                   = false
  replica_mode                          = null
  replicate_source_db                   = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = null
  storage_encrypted                     = true
  storage_throughput                    = 0
  storage_type                          = "gp2"
  tags                                  = {}
  tags_all                              = {}
  timezone                              = null
  username                              = "admin"
  vpc_security_group_ids                = ["sg-073c0e9d835a3d818"]
}
