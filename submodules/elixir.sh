#!/bin/bash
my_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
root_dir=$my_dir/../
cp -f $root_dir/resources/apt/lists/elixir.list /etc/apt/sources.list.d/
wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc -P $root_dir/temp/
apt-key add $root_dir/temp/erlang_solutions.asc && rm $root_dir/temp/erlang_solutions.asc
apt-get update
apt-get install -y erlang-mini
rm -rf $root_dir/src/elixir/
git clone https://github.com/elixir-lang/elixir.git $root_dir/src/elixir
cd $root_dir/src/elixir
git checkout v1.0.2 
make clean install
