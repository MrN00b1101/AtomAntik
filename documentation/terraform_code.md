<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_header.png" alt="Team logo" style="height: 300px; width:100%;"/>
  
  [System design](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/system_design.md)
  | [Pull request mechanism](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_mechanism.md)
  | [Issues/projects](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/issues_projects.md)
  | [Terraform code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/terraform_code.md)
  | [Test code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/test_code.md)
  | [Pipeline workflow](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pipeline_workflow.md)
  | [Pull request approval workflow](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_aproval_workflow.md)
***

#   Terraform code
Below you can read the detailed explanation of the terraform code (content of `main.tf` ).

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
### 1. Variables:
-   `file_count` : numeric variable, the default value is set to 3. Represents the number of files to be created.
-   `file_name` : string variable, the default value is set to "teszt001". Represents the base name for the files.

### 2. Locals:
-   `file_content_template` : string local variable, that is used to generate the content of the created files with "This is file number %d." where `%d` is a placeholder for a numeric value.

### 3. Resources:
-   `"local_file" "first_file_1"` : Defines a local file resource named "first_file_1".
    
    -   **`content = "AtomAntik"` : sets the content of the file as "AtomAntik".**
    -   **`filename = "../first_file_1.txt""` : specifies the path to the file that will be created (if missing parent directories will be created). If the file already exists, it will be          overridden with the given content.**
      
-   `"local_file" "count_file_1"` : Defines a local file resource named "first_file_1".
    
    -   **`count = var.file_count` : Determines how many times the resource will be instantiated (the number is the value stored in `file_count` ).**
    -   **`content = format(local.file_content_template, count.index + 1)` : Dinamically generates formatted content for each file. Incorporates the local variable `file_content_template`          and increments the index. The file contents will be in "This is file number 1.", "This is file number 2.", etc. format.**
    -   **`filename = "file_${count.index + 1}.txt"` : Dinamically generates file names using their indexes. The file names will be in "file_1.txt", "file_2.txt", etc. format.**

## Mechanism:
The terraform code in `main.tf` creates local files. At first it creates a file named "first_file_1.txt" that has a fixed content which is "AtomAntik".
- `first_file_1.txt` : `AtomAntik`

The second set of files are generated dynamically. The number of files created is detrimed by the value of `file_count` variable, 3 in this instance. The file names and the content of the files are incremented with their indexes.
- `file_1.txt` : `This is file number 1.`
- `file_2.txt` : `This is file number 2.`
- `file_3.txt` : `This is file number 3.`
***  
<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_footer.png" alt="Team logo" style="height: 300px; width:100%;"/>
