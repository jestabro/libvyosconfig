#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#b8837136f39873663984733080ce006174f957ec -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/vyos/vyconf.git#04c709d537b25ec2ae530b3c7fb36f4f589ce1de -y'

eval `opam config env`
make clean
make
