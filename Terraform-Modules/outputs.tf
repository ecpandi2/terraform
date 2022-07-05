# Output variable definitions

output "ec2_instance_public_ip" {
  description = "Public IP Addressess of EC2 Instances"
  value = values(module.ec2_instance).*.public_ip
}

output "ec2_instance_public_dns" {
  description = "Public DNS for EC2 Instances"
  value = values(module.ec2_instance).*.public_dns
}

output "ec2_instance_private_ip" {
  description = "Private IP Addresses for EC2 Instances"
  value = values(module.ec2_instance).*.private_ip
<<<<<<< HEAD
}
=======
}
>>>>>>> 0f351a005757e2ccd153bd98f48b853e00b5e4f2
