resource "aws_instance" "web-1" {
  ami                         = "ami-04505e74c0741db8d"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.nano"
  key_name                    = "Latest"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "Saiki"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSVdQZdDCL75ok6DJYJTDpgoKDvUph5KIyzWUeRl8u0c2o9DC2LZgUSvaT4t18R4EnVZTse7Kn6YYX4wJvsPsMquaoWW4OrGHPLHjcLcZDipeDO3fZOVF7b7FJ8woU+62FIP+7EG3NdTKtMBljENP7WSLcsTTzVGUzbagRsSgVHWzkat/B0xqZ4Nthd0dPajQ4jQEY9oO+ukHs/vLYiFSMCAL5e37uJrIdF2aYFh3RA9CQuRrOR/NbA33Tg80upQycHyOMG/KFPhut6AOWsunoroaGSjES7F6gX5JbIC5BSZluzHXcKfvSnLFB/Q4fKLVPn8mgI9Nl0t8qbGUYnVaW2XAGYRVI3xI5a+OctKTelyNGoc5PdEFJmrxfrpOS57OKnKqvjLQlZJD5LMyMVwro871afDd8c5mw9j3aUynnAJ+DBXVb0aSbbhALcM7PwfryrROVMvE7GMlBvAY2NODtV58kcvjYErhu2xZMHMbGGVDiF+p36g9zBNs2CM+/5Q8= root@ip-10-1-1-130' >> /home/ubuntu/.ssh/authorized_keys
        EOF
}

resource "aws_instance" "web-2" {
  ami                         = "ami-04505e74c0741db8d"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "Latest"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-2"
    Env        = "Prod"
    Owner      = "Saiki"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSVdQZdDCL75ok6DJYJTDpgoKDvUph5KIyzWUeRl8u0c2o9DC2LZgUSvaT4t18R4EnVZTse7Kn6YYX4wJvsPsMquaoWW4OrGHPLHjcLcZDipeDO3fZOVF7b7FJ8woU+62FIP+7EG3NdTKtMBljENP7WSLcsTTzVGUzbagRsSgVHWzkat/B0xqZ4Nthd0dPajQ4jQEY9oO+ukHs/vLYiFSMCAL5e37uJrIdF2aYFh3RA9CQuRrOR/NbA33Tg80upQycHyOMG/KFPhut6AOWsunoroaGSjES7F6gX5JbIC5BSZluzHXcKfvSnLFB/Q4fKLVPn8mgI9Nl0t8qbGUYnVaW2XAGYRVI3xI5a+OctKTelyNGoc5PdEFJmrxfrpOS57OKnKqvjLQlZJD5LMyMVwro871afDd8c5mw9j3aUynnAJ+DBXVb0aSbbhALcM7PwfryrROVMvE7GMlBvAY2NODtV58kcvjYErhu2xZMHMbGGVDiF+p36g9zBNs2CM+/5Q8= root@ip-10-1-1-130' >> /home/ubuntu/.ssh/authorized_keys
        EOF
}

resource "aws_instance" "web-3" {
  ami                         = "ami-04505e74c0741db8d"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "Latest"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-3"
    Env        = "Prod"
    Owner      = "Saiki"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
        #!/bin/bash
        echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSVdQZdDCL75ok6DJYJTDpgoKDvUph5KIyzWUeRl8u0c2o9DC2LZgUSvaT4t18R4EnVZTse7Kn6YYX4wJvsPsMquaoWW4OrGHPLHjcLcZDipeDO3fZOVF7b7FJ8woU+62FIP+7EG3NdTKtMBljENP7WSLcsTTzVGUzbagRsSgVHWzkat/B0xqZ4Nthd0dPajQ4jQEY9oO+ukHs/vLYiFSMCAL5e37uJrIdF2aYFh3RA9CQuRrOR/NbA33Tg80upQycHyOMG/KFPhut6AOWsunoroaGSjES7F6gX5JbIC5BSZluzHXcKfvSnLFB/Q4fKLVPn8mgI9Nl0t8qbGUYnVaW2XAGYRVI3xI5a+OctKTelyNGoc5PdEFJmrxfrpOS57OKnKqvjLQlZJD5LMyMVwro871afDd8c5mw9j3aUynnAJ+DBXVb0aSbbhALcM7PwfryrROVMvE7GMlBvAY2NODtV58kcvjYErhu2xZMHMbGGVDiF+p36g9zBNs2CM+/5Q8= root@ip-10-1-1-130' >> /home/ubuntu/.ssh/authorized_keys
        EOF
}
