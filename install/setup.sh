#!/bin/bash
#
# WSL setup script
# Font: https://github.com/samuelramox/wsl-setup
# Main install script

source ./install/utils.sh
keep_sudo_alive

# Install applications
seek_confirmation "Warning: This step install applications."
if is_confirmed; then
  e_header "Please, configure you applications before installation:"
  nano ${DOTFILES_DIRECTORY}/install/apps.sh
  bash ./install/apps.sh
else
  e_warning "Skipped applications install."
fi