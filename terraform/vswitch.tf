resource "alicloud_vswitch" "vswitch" {
  vswitch_name      = "Lower_Test_01"
  cidr_block        = "10.130.3.0/24"
  zone_id           = "me-east-1-a"  
}
