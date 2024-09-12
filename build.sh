#!/bin/sh

DIR=$1

#git clone https://github.com/jestabro/vyatta-cfg.git /tmp/vyatta-cfg
#cd /tmp/vyatta-cfg && git checkout vy-adapter

#mk-build-deps -i -r -s sudo -t 'apt-get -y -o Debug::pkgProblemResolver=yes --no-install-recommends'
#dpkg-buildpackage -uc -us -tc -b
#sudo sh -c 'dpkg --force-all -i /tmp/libvyatta-cfg1_*.deb /tmp/libvyatta-cfg-dev_*.deb'

#cd ${OLDPWD}

# TODO: make vyconf directories in debian/rules

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/jestabro/vyos1x-config.git#45738970ee -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyconf https://github.com/jestabro/vyconf.git#2e62dddff9 -y'
sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-adapter https://github.com/jestabro/vyos1x-adapter.git#6afd7bfae9e -y'

eval `opam config env`
make clean
make
