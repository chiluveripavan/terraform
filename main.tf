provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 3
  ami           = "ami-02a53b0d62d37a757"
  instance_type = "t2.micro"
  tags = {
    Name = "raham"
  }
}
