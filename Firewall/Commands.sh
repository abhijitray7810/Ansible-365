ansible-galaxy collection install ansible.posix
ansible-playbook -i inventory firewall.yml
sudo firewall-cmd --list-ports
should show 80/tcp.
