variable "file_count" {
  type = number
  default = 3
}
variable "file_name" {
  type = string
  default = "teszt001"
}
locals {
  file_content_template = "This is file number %d."
}
resource "local_file" "first_file_1" {
  content = "AtomAntik"
  filename = "../first_file_1.txt"
}
resource "local_file" "count_file_1" {
  count = var.file_count
  content    = format(local.file_content_template, count.index + 1)
  filename   = "file_${count.index + 1}.txt"
}
