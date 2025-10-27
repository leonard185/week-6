The playbook starts by provisioning infrastructure using Terraform, ensuring the server environment exists before Ansible runs.
The MongoDB role initializes the database, followed by backend and frontend roles that clone, build, and run containers.
Each role uses Docker modules for consistent container management. Variables ensure reusability and clarity.
The sequential order ensures dependencies load in the correct order — DB → Backend → Frontend.