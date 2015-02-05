#!/bin/bash
my_dir="$(dirname "$0")"
$my_dir/../tools/confset.pl -s ' ' -w true "PermitRootLogin no" /etc/ssh/sshd_config
service ssh restart
