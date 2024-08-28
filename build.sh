#!/bin/sh

DIR=$1

#git clone https://github.com/jestabro/vyatta-cfg.git /tmp/vyatta-cfg
#cd /tmp/vyatta-cfg && git checkout vy-adapter

#mk-build-deps -i -r -s sudo -t 'apt-get -y -o Debug::pkgProblemResolver=yes --no-install-recommends'
#dpkg-buildpackage -uc -us -tc -b
#sudo sh -c 'dpkg --force-all -i /tmp/libvyatta-cfg1_*.deb /tmp/libvyatta-cfg-dev_*.deb'

#cd ${OLDPWD}

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#3f5f21ce0e821 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-adapter https://github.com/jestabro/vyos1x-adapter.git#418c3f6f97eec -y'

eval `opam config env`
make clean
make
