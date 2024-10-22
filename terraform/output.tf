output "instance_private_ip" {
  description = "Private IP address of the ECS instance"
  value       = alicloud_instance.main_instance.private_ip
}
