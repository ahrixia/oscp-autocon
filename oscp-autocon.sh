#!/usr/bin/expect -f

set timeout 10
send -- "\n#############################################\n# OSCP-AUTOCON Running...\n# PRESS CTRL + C TO EXIT.\n#############################################\n"
spawn openvpn OS-XXXX-PWK.ovpn

set user OS-XXXXX
set password XXXXXXX

expect "Enter Auth Username:"
send -- "$user\r"

expect "Enter Auth Password: (press TAB for no echo)"
send -- "$password\r"
interact
