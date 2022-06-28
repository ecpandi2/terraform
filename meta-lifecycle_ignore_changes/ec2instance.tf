# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-3"
  }
<<<<<<< HEAD
=======

>>>>>>> dca64ab8500f4daa493fab2e651332e1f95a30f5
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> dca64ab8500f4daa493fab2e651332e1f95a30f5
