#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#8c6bbd8bfefde4eada36560a857cb624f86e0e96 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#04c709d537b25ec2ae530b3c7fb36f4f589ce1de -y'

eval `opam config env`
make clean
make
