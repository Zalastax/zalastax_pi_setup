#!/bin/bash
if (( EUID != 0 )); then
    echo "You must be root to do this." 1>&2
    exit 1
fi
my_dir="$(dirname "$0")"
$my_dir/submodules/disable_ssh_root.sh
$my_dir/tools/apt-mass-install.sh $my_dir/apt-install-lists/first-install