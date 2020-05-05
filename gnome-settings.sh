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
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "/usr/bin/nautilus --new-window other-locations:///"
echo && echo

## Set datetime format ##
echo "➤ Set datetime format"
#gsettings set org.gnucash.general clock-24h true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.calendar show-weekdate true
echo && echo

## Disable events sounds ##
echo "➤ Disable events sounds"
gsettings set org.gnome.desktop.sound event-sounds false
echo && echo

## Windows ##
echo "➤ Windows"
gsettings set org.gnome.mutter center-new-windows true

## Modal dialogs ##
echo "➤ Modal dialogs"
gsettings set org.gnome.mutter attach-modal-dialogs false
gsettings set org.gnome.shell.overrides attach-modal-dialogs false

## Docker bar ##
echo "➤ Docker bar"
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false       # remove mounts from docker bar https://askubuntu.com/a/1182043 #
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
echo && echo

## Desktop interface ##
echo "➤ Desktop interface"
gsettings set org.gnome.desktop.interface icon-theme 'ubuntu-mono-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'

## Desktop wallpaper ##
echo "➤ Desktop wallpaper"
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
#gsettings set org.gnome.gedit.preferences.editor display-overview-map true
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
gsettings set org.gnome.gedit.preferences.editor right-margin-position 120
gsettings set org.gnome.gedit.preferences.print print-header false
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
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'type', 'date_modified_with_time', 'detailed_type']"
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences show-create-link true

gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.Settings.FileChooser expand-folders true
echo && echo

## Terminal Settings ##
## https://askubuntu.com/a/957272/939619
echo "➤ Terminal Settings"
UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ visible-name 'profile_name'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ cursor-foreground-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ cursor-background-color 'rgb(0,255,12)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ cursor-shape 'block'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ font 'Monospace 12'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ use-theme-transparency true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ cursor-blink-mode 'on'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ cursor-colors-set true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ use-transparent-background false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ background-transparency-percent 50
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ scrollback-unlimited false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ foreground-color 'rgb(255,255,255)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ background-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ highlight-background-color '#000000'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ text-blink-mode 'always'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ highlight-foreground-color '#ffffff'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$UUID/ audible-bell true

## Archive Manager (File Roller)
echo "➤ Compression settings"
gsettings set org.gnome.FileRoller.General compression-level 'maximum'

## Calculator
echo "➤ Calculator settings"
gsettings set org.gnome.calculator button-mode 'advanced'
gsettings set org.gnome.calculator show-thousands true
gsettings set org.gnome.calculator show-zeroes false
gsettings set org.gnome.calculator number-format 'fixed'
gsettings set org.gnome.calculator number-format 'fixed'

## Finished ##
echo "──────────"
echo " Finished"
echo "──────────"
