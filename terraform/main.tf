# Define an ECS Instance
resource "alicloud_instance" "main_instance" {
  instance_name = "TST-infra-App05"
  instance_type = var.alicloud_instance_type      
  key_name = "mykey"
  image_id      = var.alicloud_image_id     
  security_groups = ["${alicloud_security_group.main_sg}"]
}
