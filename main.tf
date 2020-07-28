
data "aws_availability_zones" "available" {}
resource "aws_instance" "web" {
  ami           = lookup(var.ami,var.region)
  availability_zone = data.aws_availability_zones.available.names[0]  
   instance_type = lookup(var.inst_type,var.env)

  tags = {
    Name = "tf-demo"
  }
}
