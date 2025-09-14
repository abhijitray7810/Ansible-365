# 🌐 Ansible Playbook: Install and Start Nginx Server

This repository contains an **Ansible playbook** to install and start the **Nginx web server** on a Linux machine.

---

## 📌 Prerequisites

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html) installed  
- A Linux system with `yum` package manager (e.g., CentOS, RHEL, Fedora, Amazon Linux)  
- Sudo/root privileges (playbook uses `become: true`)  

Check if Ansible is installed:

```bash
ansible --version

```
#📜 Playbook: nginx_install.yml
yaml
Copy code
---
- name: Nginx server install and start 
  hosts: localhost
  become: true   # Run tasks with root privileges

  tasks:
    - name: Install Nginx server
      yum:
        name: nginx
        state: present

    - name: Starting the nginx service
      service: 
        name: nginx
        state: started
        enabled: true
# 🛠 Explanation of the Playbook
hosts: localhost → Runs on the local machine.

become: true → Grants root privileges for package installation and service management.

Tasks:

Install Nginx server

Uses the yum module to install the nginx package.

state: present ensures the package is installed.

Start and enable Nginx service

Uses the service module to start Nginx.

state: started ensures the service is running.

enabled: true ensures it starts automatically on boot.

# ▶️ Running the Playbook
Run the playbook with:

```bash

ansible-playbook nginx_install.yml

```
# 📋 Sample Output
bash
Copy code
PLAY [Nginx server install and start] ******************************************

TASK [Install Nginx server] ****************************************************
changed: [localhost]

TASK [Starting the nginx service] **********************************************
changed: [localhost]

PLAY RECAP *********************************************************************
localhost                  : ok=2    changed=2    unreachable=0    failed=0
# ✅ Verify Installation
Check the status of Nginx:

```bash

systemctl status nginx

```
Open a browser and visit:

arduino
Copy code
http://localhost
# ✔️ You should see the Nginx welcome page 🎉

# 🧹 Cleanup (Optional)
If you want to remove Nginx:

```bash

sudo yum remove nginx -y
```
# ✅ Summary
Installed Nginx web server

Started and enabled the service

Verified it’s running successfully

🎯 This playbook ensures your Nginx server is up and running automatically!

---

👉 Do you want me to also add a **Debian/Ubuntu task (using apt instead of yum)** in the playbook
