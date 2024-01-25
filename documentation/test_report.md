# Test documentation
## AtomAntik AFP Project 2023-2024

For testing we crated a test repository on GitHub called **AATeszt**

As the customer requested we crated a validation step (bash script) to see if the needed files were created by the terraform code.

### Test results:

1. 2023.11.18 - Terraform envirement created
  - Terraform configurations were not valid. We needed to upgrade the enviroment.

2. 2023.11.18 - Invalid operators in the Terraform code
  - Terraform configurations were not valid. We needed to upgrade the enviroment.
  - **Error code:** 11: filename = "../"+var.file_name+".txt" _Unsuitable value for left operand: a number is required._

3. 2023.11.18 - Basic Terraform code
  - Terraform code runs without and error code.

4. 2023.11.18 - Basic Terraform code #2
  - Terraform code runs without and error code - Checked this again.

5. 2023.11.18 - Added multiple file cration - Error
  - ![Error in code](https://i.ibb.co/3sRqH7M/111.png)
  - **Error code:** _Expected a newline or comma to mark the beginning of the next attribute._
