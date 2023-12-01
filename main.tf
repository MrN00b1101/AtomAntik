output "test" {
  value = "test"
}

resource "local_file" "first_file" {
  content = "This is my text"
  filename = "./first_file.txt"
}
