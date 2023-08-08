# VPC
import {
  to = aws_vpc.tastylog-dev-vpc
  id = "vpc-0bed4951451285dda"
}

# route table
import {
  to = aws_route_table.tastylog_dev_public_network
  id = "rtb-05104c9e81a695797"
}

import {
  to = aws_route_table.tastylog_dev_private_network
  id = "rtb-0af94323f508c5a0f"
}

# subnet
import {
  to = aws_subnet.tastylog_dev_public_a
  id = "subnet-05accfb1fb9fd2a8c"
}

import {
  to = aws_subnet.tastylog_dev_public_c
  id = "subnet-0c0fd2dd04ca1d57a"
}

import {
  to = aws_subnet.tastylog_dev_private_a
  id = "subnet-04ba5cf058f1be914"
}

import {
  to = aws_subnet.tastylog_dev_private_c
  id = "subnet-0b7f0175e420faf9d"
}

# SG

import {
  to = aws_security_group.tastylog_dev_web_sg
  id = "sg-0ec60bf73949e9b25"
}

import {
  to = aws_security_group.tastylog_dev_app_sg
  id = "sg-0bd5ddc543a291905"
}

import {
  to = aws_security_group.tastylog_dev_db_sg
  id = "sg-073c0e9d835a3d818"
}

import {
  to = aws_security_group.tastylog_dev_mng_sg
  id = "sg-04d0b85be0afc91f2"
}

# igw
import {
  to = aws_internet_gateway.tasty_log_igw
  id = "igw-0fa4972fa047b0968"
}

# EC2
# import {
#   to = aws_instance.tastylog
#   id = "i-08bf51e97ac0074bc"
# }

# RDS
import {
  to = aws_db_instance.tastylog_dev_mysql_multiaz
  id = "tastylog-dev-mysql-multiaz"
}
