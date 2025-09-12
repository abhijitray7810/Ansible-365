# 🚀 Ansible Playbook: Install and Start Caddy Server

This repository contains an **Ansible playbook** to install and configure the [Caddy web server](https://caddyserver.com/) on a Linux system.

---

## 📌 Prerequisites

- A Linux system (tested on CentOS/RHEL/Fedora with `yum`)  
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html) installed  
- Sudo/root privileges (`become: true` is used in this playbook)  

Check if Ansible is installed:

```bash
ansible --version
```

🛠 Explanation of Tasks

Install dependencies → Installs curl and gnupg (required for repo and packages).

Add Caddy repository → Adds the official Caddy stable repository.

Install Caddy server → Installs the latest Caddy package.

Start Caddy service → Starts and enables the Caddy service on boot.

Verify Caddy is running → Runs caddy version to check installation.

Display Caddy version → Prints installed version to Ansible output.

▶️ Running the Playbook

Run the playbook with:
```bash
ansible-playbook -i localhost, caddy_install.yml

```
-i localhost, → tells Ansible to run against localhost

caddy_install.yml → the playbook file

📋 Sample Output
PLAY [Caddy server install and start] ******************************************

TASK [Install dependencies] ****************************************************
ok: [localhost]

TASK [Add Caddy repository] ****************************************************
changed: [localhost]

TASK [Install Caddy server] ****************************************************
changed: [localhost]

TASK [Start Caddy service] *****************************************************
changed: [localhost]

TASK [Verify Caddy is running] *************************************************
changed: [localhost]

TASK [Display Caddy version] ***************************************************
ok: [localhost] => {
    "caddy_version.stdout": "v2.8.4"
}

PLAY RECAP *********************************************************************
localhost                  : ok=6    changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

✅ Summary

This playbook:

Installs dependencies (curl, gnupg)

Adds the official Caddy repository

Installs Caddy server

Starts and enables the Caddy service

Verifies and prints the Caddy version

🎉 You now have Caddy installed and running with Ansible automation!


---

👉 Do you also want me to add a **handlers section** (to restart Caddy if configs change), so the R
