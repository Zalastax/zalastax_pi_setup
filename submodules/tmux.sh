#!/bin/bash
my_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
root_dir=$my_dir/..
tmux_cpu_dir=$root_dir/src/tmux-mem-cpu-load
apt-get install -y tmux cmake
rm -rf $tmux-cpu_dir
git clone https://github.com/thewtex/tmux-mem-cpu-load.git $tmux_cpu_dir
cd $tmux_cpu_dir
cmake .
make install
cp $root_dir/resources/conf/.tmux.conf ~/
