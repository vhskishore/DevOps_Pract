0. Understanding Providers like Azure AWS Mongo
1. Declaring Variables
2. Implicit Dependency
3. Variables vs tfvars files
4. Passing variables as CLI Arrguments.
5. Understanding state file.
6. Random Password Generator.
7. Variable Prresedence.
    -   Environment Variables, If Present.
    -   The terraform.tfvars file, If Present.
    -   The terraform.tfvars.json file, If Present.
    -   Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filename.
    - We can also create storage.auto.tfvars.
    -   Any -var and -var-file options on the command line, in the order they are provided.
8. Terraform State Related Commands
    - ### 
    ```
    terraform state list
    ```
9. Moving Statefile to central location - Azure Storage Account.
10. Renaming master to development branch
11. Created a Feature Branch, Edited the code and push remote.
12. Raised PR and added approvers and merged after approval, delete Branch.
13. Change branch to development and perform git pull to download update code.
14. Delete Resource Individually.
    - terraform destroy -target <resource_name>

15. Linux User GIT Repo Access, Git Pull vs Git Fetch and Git Conflicts.
16. Data Sources for KeyVault
17. Rename Resources
18. Multi User Terraform State Access.