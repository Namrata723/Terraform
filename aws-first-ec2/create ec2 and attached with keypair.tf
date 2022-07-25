# creating instance and attached SG and keypairs
resource "aws_instance" "web" {
  // if workspace == aws then plz launch one instance other wise not launch 
  count         = terraform.workspace == "aws" ? 1 : 0
  key_name      = "${aws_key_pair.key-tf.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  ami           = "${var.image_id}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "first-tf-instance"
  }
}










































