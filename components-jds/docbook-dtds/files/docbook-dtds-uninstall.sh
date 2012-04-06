#!/bin/bash

# borrowed from Fedora spec file:
# http://pkgs.fedoraproject.org/gitweb/?p=docbook-dtds.git;a=blob;f=docbook-dtds.spec

PATH=/usr/gnu/bin:/usr/bin

version=1.0
release=56
version_list="{3,4}.{0,1}-sgml 4.1.2-xml 4.{2,3,4,5}-{sgml,xml}"

# remove entries only on removal of package
#if [ "$1" = 0 ]; then
  catcmd='/usr/bin/xmlcatalog --noout'
  xmlcatalog=/usr/share/sgml/docbook/xmlcatalog
  entities="
ent/iso-pub.ent
ent/iso-grk1.ent
dbpoolx.mod
ent/iso-box.ent
docbookx.dtd
ent/iso-grk3.ent
ent/iso-amsn.ent
ent/iso-num.ent
dbcentx.mod
ent/iso-grk4.ent
dbnotnx.mod
ent/iso-dia.ent
ent/iso-grk2.ent
dbgenent.mod
dbhierx.mod
ent/iso-amsa.ent
ent/iso-amso.ent
ent/iso-cyr1.ent
ent/iso-tech.ent
ent/iso-amsc.ent
soextblx.dtd
calstblx.dtd
ent/iso-lat1.ent
ent/iso-amsb.ent
ent/iso-lat2.ent
ent/iso-amsr.ent
ent/iso-cyr2.ent
  "
  eval set ${version_list}
  for dir
  do
    fmt=${dir#*-} ver=${dir%%-*}
    sgmldir=/usr/share/sgml/docbook/$fmt-dtd-$ver-$version-$release
    ## SGML catalog
    # Update the centralized catalog corresponding to this version of the DTD
    $catcmd --sgml --del /etc/sgml/catalog /etc/sgml/$fmt-docbook-$ver-$version-$release.cat
    rm -f /etc/sgml/$fmt-docbook-$ver-$version-$release.cat
    ## XML catalog
    if [ $fmt = xml -a -w $xmlcatalog ]; then
      for f in $entities; do
        case $ver in 4.[45]) f=${f/-/} ;; esac
        $catcmd --del $sgmldir/$f $xmlcatalog
      done
      $catcmd --del $sgmldir $xmlcatalog
    fi
  done

  # See the comment attached to this command in the %%post scriptlet.
  sed -ni '
  /xml-docbook/ H
  /xml-docbook/ !p
  $ {
          g
          s/^\n//p
  }
    ' /etc/sgml/catalog
#fi
