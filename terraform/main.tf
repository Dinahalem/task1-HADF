# Define an ECS Instance
resource "alicloud_instance" "main_instance" {
  instance_name = "TST-infra-App05"
  instance_type = var.alicloud_instance_type      
  key_name = "mykey"
  image_id = var.alicloud_image_id  
  system_disk_category = "cloud_efficiency" 
  system_disk_size = 40  
  security_groups = ["${alicloud_security_group.main_sg}"]
  
  zone_id = "me-east-1-a"  
  vswitch_id = alicloud_vswitch.vswitch.id

  cpu = 2
  memory = 4

  tags = {
    Environment = "LOW"
  }
}

