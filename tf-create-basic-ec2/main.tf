# create an ec2 instance

# where to create - provide cloud provider name
provider "aws" {
  # which region to create the resource/service
  region = "eu-west-1"
}

# which resource to create
resource "aws_instance" "app_instance" {
  # which AMI ID to use
  ami           = "ami-0c1c30571d2dae5c9"
  # which instance type to use
  instance_type = "t3.micro"

  # add a public ip address to this instance
  associate_public_ip_address = true

  # name to the instance
  tags = {
    Name = "tech504-ramon-tf-test-app"
    Environment = "test"
  }
}
