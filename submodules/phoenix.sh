#!/bin/bash
my_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
root_dir=$my_dir/../
phoenix_dir=$root_dir/src/phoenix/
rm -rf $phoenix_dir
git clone https://github.com/phoenixframework/phoenix.git $phoenix_dir
cd $phoenix_dir
git checkout v0.8.0
mix do deps.get, compile
