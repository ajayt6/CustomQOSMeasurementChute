#!/bin/bash

# Required for forwarding everything so that the clients connected to the AP on this chute have internet connectivity
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# Start the DHCP server
service isc-dhcp-server start

while true; do
    sleep 300
done

# If execution reaches this point, the chute will stop running.
exit 0
