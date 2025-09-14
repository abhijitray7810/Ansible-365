# 🚀 Ansible Playbook: Install Apache HTTP Server

This repository contains an **Ansible playbook** to install the Apache web server on both **RedHat-based** and **Ubuntu-based** systems.

---

## 📌 Prerequisites

- A Linux host (RedHat/CentOS/Fedora or Ubuntu/Debian)  
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html) installed  
- SSH access to target machines  
- Sudo privileges (playbook uses `become: yes`)  

Check if Ansible is installed:

```bash
ansible --version
```
📜 Playbook: install_httpd.yml
yaml
Copy code
---
- name: installing Httpd
  hosts: all
  become: yes

  tasks:
    - name: Installing httpd on Redhat
      yum:
        name: httpd
        state: present
      when: ansible_os_family == "RedHat"

    - name: Installing apache2 on ubuntu
      apt:
        name: apache2
        state: present
      when: ansible_os_family == "Ubuntu"
# 🛠 Explanation of the Playbook
hosts: all → Run on all machines from the inventory file.

become: yes → Run tasks with sudo/root privileges.

Tasks:

Install httpd if the system belongs to RedHat family.

Install apache2 if the system belongs to Ubuntu/Debian family.

The when condition ensures the correct package manager (yum vs apt) and package name are used.

# ▶️ Running the Playbook
Run the playbook with:

bash
Copy code
ansible-playbook -i inventory install_httpd.yml
-i inventory → path to your inventory file (e.g. hosts.ini)

install_httpd.yml → the playbook file

# 📋 Checking Ansible Facts
This playbook uses the fact ansible_os_family to decide whether to use httpd or apache2.
You can check all facts collected by Ansible using the setup module:

```bash

ansible localhost -m setup

```
✔️ This will display all variables (facts) for the host, such as:

ansible_os_family (RedHat / Debian / Ubuntu, etc.)

ansible_distribution (e.g. CentOS, Ubuntu, Fedora)

ansible_hostname

ansible_processor details

and many more system facts.

# 📋 Sample Output (Fact Check)
bash
Copy code
"ansible_os_family": "RedHat"
"ansible_distribution": "CentOS"
"ansible_hostname": "server1"
"ansible_processor": [
    "GenuineIntel",
    "Intel(R) Xeon(R) CPU"
]
# ✅ Summary
This playbook installs Apache HTTP server on both RedHat and Ubuntu systems.

Uses the when condition with ansible_os_family to choose the right package.

You can use ansible localhost -m setup to see all available facts and variables collected by Ansible.

🎉 With this playbook, Apache installation is fully automated across different Linux distributions.

yaml
Copy code

---

👉 Do you want me to also include a **sample `hosts.ini` inventory file** in the README so users ca
