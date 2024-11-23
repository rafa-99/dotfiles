# dotfiles
My personal system configuration, deployed by Ansible and Managed using GNU Stow

## Requirements
* ansible

## Deployment
1. Edit the `.ansible/inventory.ini` variables to match the correct information
2. Configure your git user inside of the `.ansible/dotfiles.yml` file
3. Run `./deploy`
