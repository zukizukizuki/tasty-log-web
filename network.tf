# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0ec60bf73949e9b25"
resource "aws_security_group" "tastylog_dev_web_sg" {
  description = "tastylog-dev-web-sg"
  egress = [{
    cidr_blocks      = []
    description      = ""
    from_port        = 3000
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0bd5ddc543a291905"]
    self             = false
    to_port          = 3000
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "tastylog-dev-web-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform from "sg-0bd5ddc543a291905"
resource "aws_security_group" "tastylog_dev_app_sg" {
  description = "tastylog-dev-app-sg"
  egress = [{
    cidr_blocks      = []
    description      = ""
    from_port        = 3306
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-073c0e9d835a3d818"]
    self             = false
    to_port          = 3306
    }, {
    cidr_blocks      = []
    description      = ""
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = ["pl-61a54008"]
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = []
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = ["pl-61a54008"]
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  ingress = [{
    cidr_blocks      = []
    description      = ""
    from_port        = 3000
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0ec60bf73949e9b25"]
    self             = false
    to_port          = 3000
  }]
  name                   = "tastylog-dev-app-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform from "rtb-0af94323f508c5a0f"
resource "aws_route_table" "tastylog_dev_private_network" {
  propagating_vgws = []
  route            = []
  tags = {
    Name = "tastylog-dev-private-network"
  }
  tags_all = {
    Name = "tastylog-dev-private-network"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_subnet" "tastylog_dev_public_c" {
  assign_ipv6_address_on_creation                = false
  # availability_zone                              = "ap-northeast-1c"
  availability_zone_id                           = "apne1-az1"
  cidr_block                                     = "192.168.2.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "tastylog-dev-public-c"
  }
  tags_all = {
    Name = "tastylog-dev-public-c"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_subnet" "tastylog_dev_private_c" {
  assign_ipv6_address_on_creation                = false
  # availability_zone                              = "ap-northeast-1c"
  availability_zone_id                           = "apne1-az1"
  cidr_block                                     = "192.168.4.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "tastylog-dev-private-c"
  }
  tags_all = {
    Name = "tastylog-dev-private-c"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_subnet" "tastylog_dev_private_a" {
  assign_ipv6_address_on_creation                = false
  # availability_zone                              = "ap-northeast-1a"
  availability_zone_id                           = "apne1-az4"
  cidr_block                                     = "192.168.3.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "tastylog-dev-private-a"
  }
  tags_all = {
    Name = "tastylog-dev-private-a"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform from "sg-073c0e9d835a3d818"
resource "aws_security_group" "tastylog_dev_db_sg" {
  description = "tastylog-dev-db-sg"
  egress      = []
  ingress = [{
    cidr_blocks      = []
    description      = ""
    from_port        = 3306
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0bd5ddc543a291905"]
    self             = false
    to_port          = 3306
  }]
  name                   = "tastylog-dev-db-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform from "sg-04d0b85be0afc91f2"
resource "aws_security_group" "tastylog_dev_mng_sg" {
  description = "tastylog-dev-mng-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 3000
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 3000
  }]
  name                   = "tastylog-dev-mng-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_route_table" "tastylog_dev_public_network" {
  propagating_vgws = []
  route {
    cidr_block                = "0.0.0.0/0"
    gateway_id                = "igw-0fa4972fa047b0968"
  }
  # route = [{
  #   carrier_gateway_id         = ""
  #   cidr_block                 = "0.0.0.0/0"
  #   # cidr_block                 = ""
  #   core_network_arn           = ""
  #   destination_prefix_list_id = ""
  #   egress_only_gateway_id     = ""
  #   gateway_id                 = "igw-0fa4972fa047b0968"
    # ipv6_cidr_block            = "::/0"
  #   local_gateway_id           = ""
  #   nat_gateway_id             = ""
  #   network_interface_id       = ""
  #   transit_gateway_id         = ""
  #   vpc_endpoint_id            = ""
  #   vpc_peering_connection_id  = ""
  # }]
  tags = {
    Name = "tastylog-dev-public-network"
  }
  tags_all = {
    Name = "tastylog-dev-public-network"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_subnet" "tastylog_dev_public_a" {
  assign_ipv6_address_on_creation                = false
  # availability_zone                              = "ap-northeast-1a"
  availability_zone_id                           = "apne1-az4"
  cidr_block                                     = "192.168.1.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "tastylog-dev-public-a"
  }
  tags_all = {
    Name = "tastylog-dev-public-a"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform from "igw-0fa4972fa047b0968"
resource "aws_internet_gateway" "tasty_log_igw" {
  tags = {
    Name = "tasty-log-igw"
  }
  tags_all = {
    Name = "tasty-log-igw"
  }
  vpc_id = "vpc-0bed4951451285dda"
}

# __generated__ by Terraform
resource "aws_vpc" "tastylog-dev-vpc" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "192.168.0.0/20"
  enable_dns_hostnames                 = false
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_cidr_block                      = null
  ipv6_cidr_block_network_border_group = null
  ipv6_ipam_pool_id                    = null
  # ipv6_netmask_length                  = 0
  tags = {
    Name = "tastylog-dev-vpc"
  }
  tags_all = {
    Name = "tastylog-dev-vpc"
  }
}
