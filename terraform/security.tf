resource "alicloud_security_group" "main_sg" {
  name = "TST-infra-sg"
  
  # Optional: add description
  description = "Main security group for ECS instances"
}

resource "alicloud_security_group_rule" "ingress_rule" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "internet"
  policy            = "accept"
  port_range        = "22/22"
  priority          = 1
  security_group_id = alicloud_security_group.main_sg.id
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "egress_rule" {
  type              = "egress"
  ip_protocol       = "all"
  nic_type          = "internet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = alicloud_security_group.main_sg.id
  cidr_ip           = "0.0.0.0/0"
}

# Key pair resource remains unchanged
resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "alicloud_key_pair" "UbuntuKP" {
  key_pair_name = "mykey"
  public_key    = var.public_key

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > ./mykey.pem"
  }
}

