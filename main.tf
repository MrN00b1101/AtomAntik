variable "file_count" {
  type = number
  default = 3
}
variable "file_name" {
  type = string
  default = "teszt001"
}
resource "local_file" "first_file" {
  content = "AtomAntik"
  filename = "../first_file.txt"
}
