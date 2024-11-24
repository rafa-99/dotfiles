# dotfiles
My personal system configuration, deployed by Ansible and Managed using GNU Stow

## Requirements & Dependencies
* User in the sudo group
* ansible

## Deployment
1. Edit the `inventory.ini` variables to match the correct information
2. Configure your git user inside of the `dotfiles.yml` file
3. Run `./deploy`
