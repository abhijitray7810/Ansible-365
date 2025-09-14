# 📂 Ansible Playbook: Copy Files to Remote Server

This repository contains an **Ansible playbook** that copies files from the control node (local machine) to a remote server using the Ansible **copy module**.

---

## 📌 Prerequisites

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html) installed  
- SSH access to the remote server (`172.25.174.254` in this case)  
- A valid Ansible **inventory file** containing the remote host  

Check if Ansible is installed:

```bash
ansible --version

```
#📜 Playbook: copy_file.yml
---
- name: Copying files to remote server 172.25.174.254
  hosts: all

  tasks:
    - name: Copy files
      copy:
        src: /home/abhi/Documents/Ansible-365/Playbook/Apache-server.yaml
        dest: /home/abhi/Jenkins-365/Day-16-22/Apache-server-copy.yaml
        mode: ugo=rw
# 🛠 Explanation of the Playbook
hosts: all → Runs on all servers in the inventory file.

copy module → Copies a file from the Ansible control node to the remote server.

src: Path of the file on the local machine (control node).

dest: Destination path on the remote server.

mode: Sets file permissions on the copied file.

# 🔑 About mode
mode: ugo=rw → Grants read & write permissions to user (u), group (g), and others (o).

Equivalent numeric form: 0666.

# 👉 If you want full permissions (read, write, execute), you can use:

yaml
Copy code
mode: 0777
This means:

7 = rwx → read, write, execute for user, group, and others.

# ▶️ Running the Playbook
Run the playbook with:

```bash

ansible-playbook -i inventory copy_file.yml

```
-i inventory → path to your inventory file (e.g. hosts.ini)

copy_file.yml → the playbook file

# 📋 Sample Output
bash
Copy code
PLAY [Copying files to remote server 172.25.174.254] ***************************

TASK [Copy files] **************************************************************
changed: [172.25.174.254]

PLAY RECAP *********************************************************************
172.25.174.254        : ok=1    changed=1    unreachable=0    failed=0    skipped=0
# ✅ Summary
This playbook copies a file from the local system to a remote server.

Permissions can be managed using mode (e.g., ugo=rw or 0777).

Automates file transfers and ensures correct file permissions on the destination system.

# 🎉 With this playbook, you can easily automate file copying across multiple servers.

---

👉 Do you want me to also include a **hosts.ini inventory example** in the README so people can r
