#!/bin/bash

USERNAME=$(whoami)

rm -rf /home/$USERNAME/.cache
rm -rf /home/$USERNAME/.mozilla
rm -rf /home/$USERNAME/.bash_history
rm -rf /home/$USERNAME/.wget*
rm -rf /home/$USERNAME/.Xsession-erro*
rm -rf /home/$USERNAME/.local/share/nautilus
rm -rf /home/$USERNAME/.local/share/qutebrowser
