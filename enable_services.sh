#!/bin/bash
#disown - alternative to nohup.

declare services=("
        /etc/sv/acpid
        /etc/sv/chronyd
        /etc/sv/dbus
        /etc/sv/dhcpcd
        /etc/sv/elogind
        /etc/sv/polkitd
        /etc/sv/sshd
        /etc/sv/udevd
        /etc/sv/wpa_supplicant
        ")

for s in $services; do
        sudo ln -s $s /var/service
done
