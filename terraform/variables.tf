variable "alicloud_region" {
  type        = string
  default     = "me-east-1" 
}

variable "alicloud_image_id" {
  type    = string
  default = "Windows Server 2022 DC" 
}

variable "instance_password" {
  description = "Password for the instance"
  type        = string
  sensitive   = true
}
