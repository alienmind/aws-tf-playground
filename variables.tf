locals {
  //  ami           = "ami-065deacbcaac64cf2"
  //  instance_type = "t2.micro"
  //  name_tag      = "EC2 Instance from Terraform"
}

variable "ami" {
  type        = string
  description = "Ubuntu AMI ID"
  //default     = "ami-065deacbcaac64cf2"   // defaults moved to terraform.tfvars
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  //default     = "t2.micro"                // defaults moved to terraform.tfvars
}

variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
  //default     = "EC2 Instance from Terraform" // defaults moved to terraform.tfvars
}

////// Output variables - known after creation
output "public_ip" {
  value       = aws_instance.my_vm.public_ip
  description = "Public IP Address of EC2 instance"
}

output "instance_id" {
  value       = aws_instance.my_vm.id
  description = "Instance ID"
}