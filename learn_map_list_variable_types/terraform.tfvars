resource_group_location = "westus"
rg_name                 = "learn-7b8e3c18-9b7f-48f1-ad55-baf9d2e9db22"
prefix                  = "test-12-11-2022"
subnet_address          = ["10.0.0.0", "172.0.0.0"]
source_address = {
  "RDPRule"   = "167.220.255.0"
  "MSSQLRule" = "167.220.255.0"
}
