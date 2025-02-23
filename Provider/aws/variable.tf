variable "aws_access_key" {
  type = string
  default = "ami-053b0d53c279acc90"
  description = "The access key for AWS"
}

variable "size" {
 
  default = "t2.micro"
  description = "The number of instances to launch"
}


variable "name" {
 
  default = "example-server"
  description = "The name of the instance"
}

variable "bucket" {
  type = string
  default = "my-tf-test-bucket"
  description = "The name of the S3 bucket"
}

variable "username"{
 
}