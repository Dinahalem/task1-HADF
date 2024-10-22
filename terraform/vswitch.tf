resource "alicloud_vpc" "vpc" {
  vpc_name   = "my-vpc"
  cidr_block = "10.0.0.0/16"
}
resource "alicloud_vswitch" "vswitch" {
  vpc_id       = alicloud_vpc.vpc.id
  vswitch_name = "Lower_Test_01"
  cidr_block   = "10.130.3.0/24"
  zone_id      = "me-east-1-a"
}
