output "printfile" {
  //value = "${path.module}"
  value = file("${path.module}/first.txt")


}

