<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_header.png" alt="Team logo" style="height: 300px; width:100%;"/>
  
  [System design](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/system_design.md)
  | [Pull request mechanism](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_mechanism.md)
  | [Issues/projects](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/issues_projects.md)
  | [Terraform code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/terraform_code.md)
  | [Test code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/test_code.md)
  | [Pipeline workflow](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pipeline_workflow.md)
  | [Pull request approval workflow](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_aproval_workflow.md)
***
## Test code

 To run the test code, we need to add a new step to the pipeline after writing the code. For this we need to edit the "Terraform.yml" file available in the ".github/workflows" folder.
In our example, we use the following code:
```
 - name: Validate
      run: sudo chmod +x validate.sh ; sudo ./validate.sh
```
In the first line, enter the name of the step, and in the second, enter the command to be run. In this case, two commands are displayed in one line, a
```
sudo chmod +x validate.sh ;
```
adds execute permission to the validate.sh file, so the
```
sudo ./validate.sh
```
we can already run it with a command.


A validation.sh kódja egy egyszerű shell script mely a létrehozott fájlok meglétét ellenőrzi.
Ha minden rendben akkor a "Validation successful. All required files exist." üzenetet írja ki és visszatér a 0 kóddal Ha valami hibát talál a "Error: Some or all required files are missing." üzenettel és 1-es hibakóddal tér vissza.
The validation.sh code is a simple shell script that checks the existence of the created files.
If everything is fine, then "Validation successful. All required files exist." it prints a message and returns with code 0. If you find an error "Error: Some or all required files are missing." it returns with a message and error code 1.

```
#!/bin/bash
    # Check if specific files exist teszt001 first_file.txt
    if   [ -f "./file_3.txt" ] && [ -f "./file_2.txt" ] && [ -f "./file_1.txt" ] && [ -f "./first_file.txt" ] && [ -f "./teszt001.txt" ]; then
        echo "Validation successful. All required files exist."
        exit 0  # Exit with success status
    else
        echo "Error: Some or all required files are missing."
        exit 1  # Exit with failure status
    fi

```
***

<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_footer.png" alt="Team logo" style="height: 300px; width:100%;"/>
