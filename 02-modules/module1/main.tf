resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo This is local provisioner for example"
  }
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo This is local provisioner for example1"
  }
}