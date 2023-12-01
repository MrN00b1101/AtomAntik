<img src="https://github.com/MrN00b1101/AATeszt/blob/main/documentation/atom_antik_header.png" alt="Team logo" style="height: 300px; width:100%;"/>
  
  [System design](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/system_designe.md)
  | [Pull request mechanism](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/pull_request_mechanism.md)
  | [Issues/projects](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/issues_projects.md)
  | [Terraform code](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/terraform_code.md)
  | [Test code](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/test_code.md)
  | Pipeline workflow
  | [Pull request approval workflow](https://github.com/MrN00b1101/AATeszt/blob/main/documentation/pull_request_aproval_workflow.md)
***

#   Terraform code
Below you can read the detailed explanatoin of the terraform code (content of main.tf).

```
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
```

***  
<img src="https://github.com/MrN00b1101/AATeszt/blob/main/documentation/atom_antik_footer.png" alt="Team logo" style="height: 300px; width:100%;"/>
