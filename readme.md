# Week 6 – Ansible Instrumentation (Stage 1 & Stage 2)

This repo provisions a Vagrant Ubuntu 20.04 VM and uses Ansible to containerize an e-commerce web app (frontend, backend, db) into microservices. Stage 2 demonstrates Terraform ↔︎ Ansible orchestration with a single command.

## Quick start

```bash
# 1) Bring up Vagrant VM
vagrant up

# 2) Stage 1 run (Ansible only)
ansible-playbook playbooks/site.yml

# 3) Access
Frontend: http://192.168.56.10:3000
Backend : http://192.168.56.10:8080
DB Port : 5432

# 4) Stage 2 (Terraform + Ansible)
ansible-playbook playbooks/stage2-site.yml

### Project name
Terraform exposes `project_name` (default: `yolo_ecommerce`). Override via:

```bash
terraform -chdir=stage2/terraform apply -var 'project_name=myproj'
