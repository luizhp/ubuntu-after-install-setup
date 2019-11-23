#!/bin/bash

### Apply custom system properties ##
echo "────────────────────────────────"
echo " Apply custom system properties"
echo "────────────────────────────────"

## Hotkeys ##
##   https://blog.programster.org/using-the-cli-to-set-custom-keyboard-shortcuts ##
echo "➤ Set hotkeys"
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

## Add 'open nautilus' <<SUPER + E>> ##
echo "  → Add 'open nautilus' <<SUPER + E>>"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Nautilus"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Super>e"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "/usr/bin/nautilus --new-window"
echo && echo

## Set datetime format ##
echo "➤ Set datetime format"
gsettings set org.gnucash.general clock-24h true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
echo && echo

## Disable events sounds ##
echo "➤ Disable events sounds"
gsettings set org.gnome.desktop.sound event-sounds false
echo && echo

## Docker bar ##
echo "➤ Docker bar"
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false       # remove mounts from docker bar https://askubuntu.com/a/1182043 #
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
echo && echo

## Desktop wallpaper ##
echo "➤ Desktop Wallpaper"
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'
echo && echo

## Screensaver/Lockscreen Wallpaper ##
echo "➤ Screensaver/Lockscreen Wallpaper"
gsettings set org.gnome.desktop.screensaver picture-uri ''
gsettings set org.gnome.desktop.screensaver color-shading-type 'solid'
gsettings set org.gnome.desktop.screensaver primary-color '#000000'
gsettings set org.gnome.desktop.screensaver secondary-color '#000000'
echo && echo

## Energy management ##
echo "➤ Energy management"
gsettings set org.gnome.settings-daemon.plugins.power button-power 'shutdown'
gsettings set org.gnome.settings-daemon.plugins.power idle-dim true
gsettings set org.gnome.settings-daemon.plugins.power idle-brightness 30
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'suspend'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'
echo && echo

## Screen lock ##
echo "➤ Screen lock"
gsettings set org.gnome.desktop.session idle-delay 600                     ## screen off: 10 minutes ##
gsettings set org.gnome.desktop.screensaver idle-activation-enabled 'true'
gsettings set org.gnome.desktop.screensaver lock-enabled 'true'
gsettings set org.gnome.desktop.screensaver lock-delay 900                 ## screen lock: 15 minutes ##
echo && echo

## Notebook lid ##
echo "➤ Notebook lid"
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-suspend-with-external-monitor false
echo && echo

## gedit settings ##
echo "➤ gedit settings"
gsettings set org.gnome.gedit.state.window size '(900, 700)'
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor auto-save false
gsettings set org.gnome.gedit.preferences.editor auto-save-interval 10
gsettings set org.gnome.gedit.preferences.editor background-pattern 'grid'
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor display-overview-map true
gsettings set org.gnome.gedit.preferences.editor display-right-margin true
gsettings set org.gnome.gedit.preferences.editor editor-font 'Monospace 12'
gsettings set org.gnome.gedit.preferences.editor ensure-trailing-newline true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor scheme 'solarized-dark'
gsettings set org.gnome.gedit.preferences.editor search-highlighting true
gsettings set org.gnome.gedit.preferences.editor smart-home-end 'after'
gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true
gsettings set org.gnome.gedit.preferences.editor tabs-size 8
gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'
gsettings set org.gnome.gedit.preferences.editor wrap-mode 'word'
echo && echo

## Nautilus settings
echo "➤ Nautilus settings"
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences confirm-trash true
gsettings set org.gnome.nautilus.preferences show-delete-permanently true

gsettings set org.gnome.nautilus.window-state initial-size "(1203, 647)"
gsettings set org.gnome.nautilus.window-state maximized false
gsettings set org.gnome.nautilus.window-state sidebar-width 188
gsettings set org.gnome.nautilus.window-state start-with-location-bar true
gsettings set org.gnome.nautilus.window-state start-with-sidebar true

gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.list-view default-column-order "['name', 'size', 'type', 'date_modified_with_time']"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'type', 'date_modified_with_time']"
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
echo && echo

## Finished ##
echo "──────────"
echo " Finished"
echo "──────────"
