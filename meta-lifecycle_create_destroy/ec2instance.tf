# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type     = "t2.micro"
<<<<<<< HEAD
#  availability_zone = "us-east-1a"
#  availability_zone = "us-east-1b"
=======
  #availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
>>>>>>> 543367baeb68c1c5c146999ced81131238da37d4
  availability_zone = "us-east-1c"
  tags = {
    "Name" = "web-1"
  }
<<<<<<< HEAD
  lifecycle {
    create_before_destroy = true
  }
}
=======
 
  lifecycle {
    create_before_destroy = true
  }
}
>>>>>>> 543367baeb68c1c5c146999ced81131238da37d4
