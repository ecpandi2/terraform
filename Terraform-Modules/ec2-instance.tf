module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "Modules-Demo-Server-${each.key}"
  for_each = toset(["one", "two"])

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-07eecdd15a2c89037"]
  subnet_id              = "subnet-0b858b1296da80504"
  user_data              = file("apache-install.sh")

  tags = {
    Name        = "Modules-Demo-Server-${each.key}"
    Terraform   = "true"
    Environment = "dev"
  }
}