resource "aws_instance" "nexus" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.medium"
  key_name = "moba-key"
  user_data = file("nexus.sh")
  security_groups = ["sunni_secure"]

  tags = {
    Name = "nexus"
  }
}