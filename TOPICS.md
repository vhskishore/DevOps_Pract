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
8. Moving Statefile to central location - Azure Storage Account.