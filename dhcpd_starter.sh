#!/bin/sh
sed -i "s/^ldap-server ".*";$/ldap-server \""$LDAPSERVER"\";/" /etc/dhcp/dhcpd.conf &&
/usr/sbin/dhcpd -f
