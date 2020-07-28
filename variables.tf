variable "ami"{
  type = map

   default = {
   us-east-1 = "ami-08f3d892de259504d"
   us-west-1 = "ami-01311df3780ebd33e"
}
}
variable "env"{}
variable "region"{}
variable "inst_type"{
    type = map
 
   default = {
   dev = "t2.micro"
   test = "t2.medium" 
}
}
