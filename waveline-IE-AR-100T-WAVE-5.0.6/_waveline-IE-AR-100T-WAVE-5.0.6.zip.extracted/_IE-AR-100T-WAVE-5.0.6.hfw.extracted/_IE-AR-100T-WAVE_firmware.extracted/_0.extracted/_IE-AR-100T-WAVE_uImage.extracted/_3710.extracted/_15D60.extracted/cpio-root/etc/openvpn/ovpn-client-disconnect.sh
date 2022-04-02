#!/bin/sh
string="$trusted_ip|$trusted_port|$common_name"
mv /tmp/vpnlist /tmp/vpnlist.old
sed '/^'"$string"'$/ d' </tmp/vpnlist.old >/tmp/vpnlist
rm /tmp/vpnlist.old
exit 0


