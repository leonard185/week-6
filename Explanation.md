# 🧠 EXPLANATION.md
## Automated Microservices Deployment using Vagrant, Ansible, and Terraform

---

## 🎯 Project Objective
The objective of this project is to **automate the provisioning, configuration, and deployment** of a microservices-based application using three key DevOps tools:

- **Vagrant** – For creating a reproducible local virtual environment.
- **Ansible** – For configuration management and service deployment.
- **Terraform** – For defining and provisioning infrastructure as code.

The combined setup demonstrates a real-world DevOps pipeline where infrastructure, environments, and applications are all managed automatically using code.

---

## 🧩 Stage 1 – Vagrant Setup

### 🔹 Purpose:
Vagrant provides a portable and consistent environment for development and testing.  
It allows automation of VM creation using a simple `Vagrantfile`.

### 🔹 Implementation:
1. Created a `Vagrantfile` in the root directory.
2. Configured it to use **VirtualBox** as the provider and **Ubuntu/Bionic64** as the base box.
3. Added provisioning logic for Ansible inside the file.

Example snippet:
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", type: "dhcp"

  # Link to Ansible playbook
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
