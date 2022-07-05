module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

<<<<<<< HEAD
  name           = "Modules-Demo-Server"
  instance_count = 2
=======
  name = "Modules-Demo-Server-${each.key}"
  for_each = toset(["one", "two"])
>>>>>>> 70159c7e8ca202f71bb40cc675a3af6a44d6087e

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-07eecdd15a2c89037"]
  subnet_id              = "subnet-0b858b1296da80504"
  user_data              = file("apache-install.sh")

  tags = {
    Name        = "Modules-Demo-Server"
    Terraform   = "true"
    Environment = "dev"
  }
}