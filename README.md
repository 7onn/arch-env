# manjaro-workstation
This repository stores configuration files for bootstrapping my work laptop

# Requirements
```bash
sudo pacman -Sy ansible ansible-lint openssh sshpass
systemctl enable sshd.service
systemctl start sshd.service
```

# Installation
Once the requirements are fulfilled run the following commands
```bash
# Clone the repository
git clone https://github.com/tompsh/manjaro-workstation.git

# Edit the variables accordingly
$EDITOR vars/ansible.yml

# Run the playbook
ansible-playbook -Kk \
		 -u $(whoami) \
		 -i 'localhost,' \
		 --extra-vars "@vars/ansible.yml" \
		 playbook.yml
```

# LICENSE

[GNU General Public License v3.0](./LICENSE)