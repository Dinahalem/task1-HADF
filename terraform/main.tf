# Define an ECS Instance
resource "alicloud_instance" "main_instance" {
  instance_name = "TST-infra-App05"
  instance_type = "ecs.c6.large"      
  key_name = "mykey"
  image_id      = var.alicloud_image_id     # Use the official Alibaba Cloud images, e.g., Ubuntu, CentOS, etc.
  security_groups = ["${alicloud_security_group.main_sg}"]
}
