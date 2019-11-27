provider "aws" {
        access_key = "AKIA25RAIVBCSETZEH6O"
        secret_key = "DkmEPvDO3puyLdmbcs8B6o9+ODmytWtK7QH0RB1m"
        region = "us-east-1"

}
resource "aws_instance" "example" {
        ami = "ami-00068cd7555f543d5"
        instance_type = "t2.micro"
        key_name = "terraform_lab"
        security_groups = ["${aws_security_group.allow_ssh.name}"]

}

resource "aws_security_group" "allow_ssh" {
	
	name = "allow_ssh"
	description = "Allow ssh to this server"
	ingress {

	from_port = 22
	to_port = 22
	protocol = "tcp"

	cidr_blocks = ["0.0.0.0/0"]

	}
}

