variable "alicloud_region" {
  type        = string
  default     = "me-east-1" 
}

variable "alicloud_image_id" {
  type    = string
  default = "win2022_21H2_x64_dtc_en-us_40G_alibase_20230915.vhd" 
}

variable "alicloud_instance_type" {
  type    = string
  default = "ecs.c6.large" 
}

variable "instance_password" {
  description = "Password for the instance"
  type        = string
  sensitive   = true
}
