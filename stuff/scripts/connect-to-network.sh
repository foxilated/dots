#!/bin/bash
SSID=$(nmcli --fields IN-USE,SSID,BARS device wifi | dmenu)

if [ -n "$SSID" ]; then
    BSSID=$(echo $SSID | awk '{print $1}')
   
    if nmcli connection show "$BSSID" | grep -q "802-11-wireless-security.psk"; then
        nmcli connection up "$BSSID"
    else
        PASSWORD=$(echo "" | dmenu -p "Password:")
        nmcli device wifi connect "$BSSID" password "$PASSWORD"
    fi

   else
    echo "Canceled."
fi
