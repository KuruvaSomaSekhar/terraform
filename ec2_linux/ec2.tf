provider "aws" {
	access_key = "AKIA25RAIVBCSETZEH6O"
	secret_key = "DkmEPvDO3puyLdmbcs8B6o9+ODmytWtK7QH0RB1m"
	region = "us-east-1"
	
}
resource "aws_instance" "example" {
	ami = "ami-00068cd7555f543d5"
	instance_type = "t2.micro"

}
