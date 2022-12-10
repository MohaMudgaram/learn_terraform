# Variables

### Pass an Explicit Value for a Variable through Commandline Flags

terraform plan -var="vnet_address_space=10.0.0.1"

### If no Default/Explicit Value is mentioned, it prompts for the Value of the Variable

variable "vnet_address_space" {
type = string
}
terraform plan

### To pass the variables in a File, use terraform.tfvars

terraform plan

### To pass the variables in a Custom File, use variables_dev.tfvars

terraform plan -var-file='variables_dev.tfvars'

### To pass a Variable value using Environment Variables

TF_VAR_vnet_address_space=10.0.0.0

### Precedence

Environment Variables
Command-line flags
From a File
Variable Defaults
