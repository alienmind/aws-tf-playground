/*
resource "aws_s3_bucket" "state_bucket" {
  bucket = "aws-tf-bucket-state"
  tags = {
    Name = "Terraform state Bucket"
  }
}
*/

resource "aws_instance" "my_vm" {
  ami           = var.ami           // local.ami
  instance_type = var.instance_type // local.instance_type
  tags = {
    Name = var.name_tag, // local.name_tag
  }
}