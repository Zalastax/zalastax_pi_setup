#!/bin/bash
my_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
root_dir=$my_dir/..
apt-get install -y nginx
cp $root_dir/resources/nginx/sites-available/zalastax_pi_elixir /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/
mkdir /etc/nginx/sites-enabled/
sudo ln -s /etc/nginx/sites-available/zalastax_pi_elixir /etc/nginx/sites-enabled/elixir_pi_elixir
