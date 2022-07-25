// creating ssh-key
resource "aws_key_pair" "key-tf" {
  key_name   = "terraform-key-first"
  public_key = file("${path.module}/id_rsa.pub")
}