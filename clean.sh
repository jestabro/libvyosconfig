#!/bin/sh

sudo sh -c 'dpkg -r libvyatta-cfg-dev && rm -rf /tmp/vyatta-cfg* && rm -f /tmp/libvyatta-cfg*.deb'
