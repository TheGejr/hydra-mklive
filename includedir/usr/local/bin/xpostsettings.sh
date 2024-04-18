#!/bin/bash

notify-send --icon=dialog-information "System configuration :" "Please wait..."

gsettings set org.xfce.mousepad.preferences.view show-line-numbers 'true'
gsettings set org.xfce.mousepad.preferences.view highlight-current-line 'true'
gsettings set org.xfce.mousepad.preferences.view word-wrap 'true'
gsettings set org.xfce.mousepad.preferences.view use-default-monospace-font 'false'
gsettings set org.xfce.mousepad.preferences.view font-name 'Ubuntu Mono 13'
gsettings set org.xfce.mousepad.preferences.view color-scheme 'warm'
gsettings set org.xfce.mousepad.preferences.window statusbar-visible 'true'
gsettings set org.xfce.mousepad.preferences.window path-in-title 'true'
gsettings set org.xfce.mousepad.preferences.window menubar-visible 'true'
gsettings set org.xfce.mousepad.preferences.window toolbar-visible 'true'
gsettings set org.xfce.mousepad.preferences.window toolbar-style 'icons'
gsettings set org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'
gsettings set org.xfce.mousepad.preferences.window always-show-tabs 'true'

gsettings set org.gtk.Settings.FileChooser sort-directories-first 'true'
gsettings set org.gtk.Settings.FileChooser startup-mode 'cwd'
sed -i 's/recent/cwd/g' ~/.config/gtk-2.0/gtkfilechooser.ini

. /usr/local/bin/plata-custom-void.sh
. /usr/local/bin/papirus-custom-void.sh

rm ~/.config/autostart/X_PostSettings.desktop

notify-send --icon=dialog-information "System configuration :" "Finished!"

exit 0
