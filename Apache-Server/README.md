# Ansible Playbook: Install and Configure Apache Web Server

This project contains an **Ansible playbook** to install, start, and configure the **Apache Web Server** on both **Debian/Ubuntu** and **RedHat/CentOS** based systems.  
It also deploys a simple **HTML test page** to verify that the server is running correctly.

---
 
## 📂 Playbook File
`ansible playbook apache-playbook.yml`

## 🔧 Features
- Installs **Apache2** on Debian/Ubuntu.  
- Installs **httpd** on RedHat/CentOS.  
- Starts and enables the Apache service on boot.  
- Deploys a sample **`index.html`** page to `/var/www/html/`.  


