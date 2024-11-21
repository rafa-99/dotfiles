# dotfiles
My personal system configuration, deployed by Ansible and Managed using GNU Stow

## Requirements
### Host Machine
* ansible
* openssh (if using ssh instead of localhost)
* sshpass (if using ssh instead of localhost)

### Client Machine
* python3.8 (minimum)
* openssh (if using ssh instead of localhost)

## Deployment
1. Edit the inventory variables to match the correct information
2. Configure your git user inside of the `deploy.yml` file
3. Run `ansible-playbook -i inventory.ini deploy.yml`
