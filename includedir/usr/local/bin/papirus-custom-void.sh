#!/bin/bash

notify-send --icon=dialog-information "System configuration :" "Installing Papirus from source..."

  sudo xbps-remove -Ry papirus-icon-theme papirus-folders
  wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

sleep 2s

notify-send --icon=dialog-information "System configuration :" "Changing colors..."

  sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/5294e2/478061/gI" {} \;
  sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/4877b1/2F5440/gI" {} \;
  sudo find /usr/share/icons/Papirus/*/places -type f -name "*.svg" -exec sed -i "s/1d344f/1D1D1D/gI" {} \;

notify-send --icon=dialog-information "System configuration :" "Papirus-Custom-Void: done!"
