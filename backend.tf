terraform{
    backend "s3"{
      bucket = var.bucket
      region = "ap-south-1"
      key = "Nodes/terraform.tfstate" 
  }
}