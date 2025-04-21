#/bin/bash

killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-kde
killall -e xdg-desktop-portal-gtk
killall -e xdg-desktop-portal

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_ESKTOP=Hyprland

systemctl --user stop pulseaudio
systemctl --user stop pipewire
systemctl --user stop xdg-desktop-portal
systemctl --user stop xdg-desktop-kde
systemctl --user stop xdg-desktop-hyprland

sleep 0.1

/usr/lib/xdg-desktop-portal-hyprland &
sleep 0.1

if [ -f /usr/lib/xdg-desktop-portal-gtk ]; then
    /usr/lib/xdg-desktop-portal-gtk &
    sleep 0.1
fi

/usr/lib/xdg-desktop-portal &
sleep 0.5

systemctl --user start pipewire
systemctl --user start wireplumber
systemctl --user start xdg-desktop-portal
systemctl --user start xdg-desktop-portal-hyprland

sleep 2


