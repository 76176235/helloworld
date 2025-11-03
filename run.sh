#!/bin/bash

#cat /etc/ssh/sshd_config

systemctl restart sshd
ufw allow 2222/tcp
iptables -I INPUT -p tcp --dport 2222 -j ACCEPT

