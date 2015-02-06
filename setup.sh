#!/bin/bash
if (( EUID != 0 )); then
    echo "You must be root to do this." 1>&2
    exit 1
fi
my_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
$my_dir/submodules/disable_ssh_root.sh
$my_dir/tools/apt-mass-install.sh $my_dir/resources/apt/first-install
$my_dir/submodules/fix_locale.sh
$my_dir/submodules/elixir.sh
$my_dir/submodules/tmux.sh
$my_dir/submodules/phoenix.sh
$my_dir/submodules/nginx.sh

