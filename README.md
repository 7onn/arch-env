# arch-env
This repository stores the Ansible roles responsible for bootstrapping my work machines.

> I'm too lazy to install Arch from scratch, so I rely on [ArchLabs](https://archlabslinux.com/), which provides a GUI for partitioning the disk, setting up users, groups, WiFi, etc.


# Requirements
```bash
sudo pacman -Sy ansible ansible-lint openssh sshpass
systemctl enable sshd.service
systemctl start sshd.service
```

# Installation
Run the following commands once fulfilled the requirements
```bash
# Clone the repository
git clone https://github.com/7onn/arch-env.git

# Edit the variables accordingly
$EDITOR vars/ansible.yml

# Install ansible required roles
ansible-galaxy install -r requirements.yml

# Run the playbook
ansible-playbook -Kk \
		 -u $(whoami) \
		 -i 'localhost,' \
		 --extra-vars "@vars/ansible.yml" \
		 playbook.yml
```

# LICENSE

[MIT](./LICENSE)
