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
19. Removing resource from statefile using terraform state rm <resource_name>
20. How Terraform state locking works when using Azure Storage Account.
21. Terraform Data Sources for accessing resources which are not part of terraform state.
22. Terraform Data Sources for accessing resources which are not part of terraform state.
    - Create passwords in existing keyvault.
    - Create DNS Records in existing DNS Zone.

23. Git Interactive rebase.
24. Git Reset - hard,soft,mixed = For Deleting Range of Commits.
25. Git Revert
26. Git Stash
27. Git Cherry-pick
28. Git Reflog and restore deleted branches.
29. Git Merge Local
30. Git hooks - Pre-Commit and Post Commit.
31. Git secrets to scan secrets using pre-commit hook.

32. Creating Git Hub Actions Pipeline with Terraform and Azure.