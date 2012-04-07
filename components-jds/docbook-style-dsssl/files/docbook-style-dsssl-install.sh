#!/bin/bash

# borrowed from Fedora spec file:
# http://pkgs.fedoraproject.org/gitweb/?p=docbook-style-dsssl.git;a=blob;f=docbook-style-dsssl.spec

version=1.79

for centralized in /etc/sgml/*-docbook-*.cat
do
  /usr/bin/install-catalog --add $centralized \
    /usr/share/sgml/docbook/dsssl-stylesheets-%{version}/catalog \
    > /dev/null 2>/dev/null
done
