# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type - Instance Sizing"
<<<<<<< HEAD
  type        = string
#  default     = "t2.micro"
  default = "t2.small"
}
=======
  type = string
  #default = "t2.micro"
  default = "t2.small"
}
>>>>>>> 08db773c142a829d4f7f7e8355b764b37a1c92e5
