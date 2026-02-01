# Ansible-365

Ansible-365 is a hands-on collection of **Ansible playbooks, roles, and automation scripts** designed for daily DevOps practice.  
This repository covers real-world system administration, server configuration, security, process management, and automation use cases.

It is ideal for:
- DevOps beginners
- System Administrators
- Linux automation learners
- Interview and lab practice

---

## 📌 Features

- Server setup (Nginx, Apache, Tomcat, Caddy, Lighttpd)
- User & password management
- Process & cron job automation
- File copy & backup
- Firewall configuration
- Remote server automation
- Conditional logic, loops, and tags
- SSH password handling
- System cleanup & downloads

---

## 📁 Repository Structure

```text
Ansible-365/
├── Apache-Server/
├── Backup-File/
├── Caddy-Server/
├── Condition/
├── Copy-Remote/
├── Cron_Job_Creates/
├── Delete_download/
├── Download_Net/
├── File-Module-Demo/
├── Firewall/
├── First-Pb/
├── Kill-Process/
├── Lighttpd-Server/
├── Nginx-Server/
├── Remove-User-Remotely/
├── Remove_Cron/
├── SSH-Pass/
├── Set-Password/
├── Tags-Ex/
├── Tomcat-server/
├── Use-Loop/
└── User on Remote Server/
````

Each folder contains:

* Ansible playbook (`.yaml`)
* Supporting shell scripts (if required)
* A README (where applicable)

---

## 🚀 Getting Started

### 1️⃣ Install Ansible

```bash
sudo apt update
sudo apt install ansible -y
```

### 2️⃣ Clone the Repository

```bash
git clone https://github.com/abhijitray7810/Ansible-365.git
cd Ansible-365
```

### 3️⃣ Update Inventory

Edit your inventory file:

```bash
/etc/ansible/hosts
```

Example:

```ini
[web]
192.168.1.10 ansible_user=root
```

---

## ▶ Run a Playbook

```bash
ansible-playbook Nginx-Server/Nginx-Server.yaml
```

With sudo:

```bash
ansible-playbook playbook.yaml -b
```

With tags:

```bash
ansible-playbook playbook.yaml --tags install
```

---

## 🧪 Example Use Cases

| Folder               | Purpose                   |
| -------------------- | ------------------------- |
| Nginx-Server         | Install & configure Nginx |
| Apache-Server        | Setup Apache web server   |
| Firewall             | Configure firewall rules  |
| Kill-Process         | Kill running services     |
| Remove-User-Remotely | Delete users from servers |
| Backup-File          | Backup remote files       |
| Cron_Job_Creates     | Schedule cron jobs        |
| SSH-Pass             | Handle SSH password auth  |
| Use-Loop             | Loop examples             |
| Tags-Ex              | Playbook tagging demo     |

---

## 🔐 Requirements

* Linux (Ubuntu / CentOS / Amazon Linux)
* SSH access to target servers
* Python installed on managed nodes

---

## 👨‍💻 Author

**Abhijit Ray**
GitHub: [https://github.com/abhijitray7810](https://github.com/abhijitray7810)

---

## ⭐ Support

If you find this repo useful:

* Star ⭐ the repository
* Fork 🍴 and practice
* Share with others

```

---

## GitHub “About” Description

> **Daily Ansible automation labs with real-world DevOps playbooks for Linux and server management.**

---

## Topics (paste in GitHub)

```

ansible devops automation linux yaml system-administration server-management ssh firewall nginx apache tomcat cron

```

---

If you want, I can:
- Write README files for each folder
- Or create a portfolio-style description for your GitHub profile.
```
