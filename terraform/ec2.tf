# create instance 1

resource "aws_instance" "app_server1" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.keypair
  security_groups = [aws_security_group.alb-security-group.id]
  subnet_id       = var.subnet_id[0]


  provisioner "local-exec" {
    command = "echo ${self.public_ip} >>  /home/bukola/ansible/host_inventry"
  }

  tags = {
    Name = var.instance1_name
  }
}



# create instance 2
resource "aws_instance" "app_server2" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.keypair
  security_groups = [aws_security_group.alb-security-group.id]
  subnet_id       = var.subnet_id[1]

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >>  /home/bukola/ansible/host_inventry"
  }

  tags = {
    Name = var.instance2_name
  }
}

