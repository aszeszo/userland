#!/bin/bash

# borrowed from Fedora spec file:
# http://pkgs.fedoraproject.org/gitweb/?p=docbook-style-xsl.git;a=blob;f=docbook-style-xsl.spec

version=1.76.1

CATALOG=/etc/xml/catalog

/usr/bin/xmlcatalog --noout --del \
 "file:///usr/share/sgml/docbook/xsl-stylesheets-${version}" $CATALOG
