# 🔑 Ansible Playbook: Setup Passwordless SSH Access

This repository contains an **Ansible playbook** that configures passwordless SSH access for a user by copying the SSH public key to the remote server’s `authorized_keys`.

---

## 📌 Prerequisites

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html) installed  
- A valid SSH key pair generated on the **control node** (your local machine)  

Generate SSH key pair if you don’t already have one:

```bash
ssh-keygen -t rsa -b 4096

```
The key files will be created at:

~/.ssh/id_rsa (private key)

~/.ssh/id_rsa.pub (public key)

# 📜 Playbook: passwordless_ssh.yml
yaml
Copy code
---
- name: Setup Passwordless SSH access
  hosts: all
  gather_facts: no
  vars:
    ansible_user: abhi
    ansible_ssh_pass: "password"

  tasks:
    - name: Ensure .ssh directory exists
      file:
        path: "/home/{{ ansible_user }}/.ssh"
        state: directory
        mode: '0700'

    - name: Copy SSH public key to authorized_keys
      copy:
        src: "~/.ssh/id_rsa.pub"
        dest: "/home/{{ ansible_user }}/.ssh/authorized_keys"
        owner: "{{ ansible_user }}"
        group: "{{ ansible_user }}"
        mode: '0600'
# 🛠 Explanation of the Playbook
vars section

ansible_user: The target user (abhi in this case)

ansible_ssh_pass: The SSH password (used initially to connect)

Tasks:

Ensure .ssh directory exists → Creates the .ssh folder in the user’s home directory with secure permissions (0700).

Copy SSH public key → Copies the control node’s id_rsa.pub into the remote server’s authorized_keys file with secure permissions (0600).

✔️ After this playbook runs, you should be able to SSH into the server without entering a password.

# ▶️ Running the Playbook
Run the playbook with:

```bash

ansible-playbook -i inventory passwordless_ssh.yml

```
-i inventory → path to your inventory file (e.g., hosts.ini)

passwordless_ssh.yml → the playbook file

# 📋 Sample Output
bash
Copy code
PLAY [Setup Passwordless SSH access] *******************************************

TASK [Ensure .ssh directory exists] ********************************************
changed: [192.168.1.100]

TASK [Copy SSH public key to authorized_keys] **********************************
changed: [192.168.1.100]

PLAY RECAP *********************************************************************
192.168.1.100          : ok=2    changed=2    unreachable=0    failed=0
# ✅ Summary
Creates .ssh directory with secure permissions (0700)

Copies the public SSH key into authorized_keys

Sets correct file ownership and permissions (0600)

Enables passwordless SSH access for the specified user

🎉 After running this playbook, you can log in to the remote server with:

```bash

ssh abhi@<remote-server-ip>

```
# 👉 No password will be required!


---

⚡ Do you want me to also include a **sample `hosts.ini` inventory file** in the README so others can test this playbook quickly?







Ask ChatGPT
