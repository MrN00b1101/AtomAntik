<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_header.png" alt="Team logo" style="height: 300px; width:100%;"/>
  
  [System design](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/system_design.md)
  | [Pull request mechanism](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_mechanism.md)
  | [Issues/projects](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/issues_projects.md)
  | [Terraform code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/terraform_code.md)
  | [Test code](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/test_code.md)
  | [Pipeline workflow]([https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pipeline_workflow.md)
  | [Pull request approval workflow](https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/pull_request_aproval_workflow.md)
***
#   Pull request approval workflow

Setting up a pull request (PR) approval workflow is crucial for maintaining code quality and ensuring that changes are reviewed before being merged into the main branch. GitHub provides a simple way to enforce code reviews and approvals through branch protection rules and status checks. Here's a step-by-step guide:

### 1. Branch Protection Rules:

1.  Navigate to your GitHub repository.
    
2.  Go to the "Settings" tab.
    
3.  Click on "Branches" in the left sidebar.
    
4.  Under "Branch protection rules," click on "Add rule."
    
5.  Choose the branch for which you want to enforce protection (e.g., `main`).
    
6.  Enable the following options:
    
    -   **Require pull request reviews before merging**
        
        -   Set the number of required approving reviews.
        -   Optionally, require reviews from code owners.
    -   **Require status checks to pass before merging**
        
        -   Enable "Require branches to be up to date before merging."
        -   Add any required status checks. (You can add these in the next step.)
    -   **Include administrators**
        
7.  Click "Save changes."
    

### 2. Status Checks:

1.  Go to the "Settings" tab of your GitHub repository.
    
2.  Click on "Branches" in the left sidebar.
    
3.  Scroll down to the "Status checks" section.
    
4.  Click on "Add status check" and select the relevant checks that must pass before merging.
    
    -   For example, you can add checks for continuous integration (CI) builds.
5.  Click "Save changes."
    

### 3. CI/CD Configuration:

Ensure that your CI/CD configuration (e.g., GitHub Actions, Travis CI, CircleCI) includes the necessary steps for running tests, linting, and other checks. The status checks configured in the previous step should correspond to these CI/CD workflows.

Here's an example for a GitHub Actions workflow:

```

`name: CI

on:
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repository
      uses: actions/checkout@v2

    - name: Set up Node.js
      uses: actions/setup-node@v3
      with:
        node-version: 14

    - name: Install Dependencies
      run: npm install

    - name: Run Tests
      run: npm test` 
```
### 4. Pull Request Approval:

When contributors create a pull request, they won't be able to merge it until the required number of approving reviews and status checks have passed. Reviewers can comment on the code changes and approve the pull request.

### 5. Merge:

Once the required approvals and status checks are met, the "Merge pull request" button will be enabled. Contributors can then merge their changes into the main branch.

This workflow helps ensure that code changes are reviewed, tested, and approved before being merged, contributing to a more reliable and maintainable codebase. Adjust the specific settings and checks based on your team's needs and coding standards.
***  
<img src="https://github.com/MrN00b1101/AtomAntik/blob/main/documentation/atom_antik_footer.png" alt="Team logo" style="height: 300px; width:100%;"/>
