#!/bin/ksh -p
#
# Copyright 2008 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, and/or sell copies of the Software, and to permit persons
# to whom the Software is furnished to do so, provided that the above
# copyright notice(s) and this permission notice appear in all copies of
# the Software and that both the above copyright notice(s) and this
# permission notice appear in supporting documentation.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT
# OF THIRD PARTY RIGHTS. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# HOLDERS INCLUDED IN THIS NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL
# INDIRECT OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING
# FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
# NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION
# WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
# Except as contained in this notice, the name of a copyright holder
# shall not be used in advertising or otherwise to promote the sale, use
# or other dealings in this Software without prior written authorization
# of the copyright holder.
#
###########################################################################
#

PATH=/usr/bin:/usr/sbin

. /lib/svc/share/smf_include.sh

USAGE="Usage: $0 { start | refresh }"

if [ $# -ne 1 ] ; then
    echo $USAGE
    exit 2
fi

CATALOG_INSTALL=/usr/share/sgml/docbook/docbook-catalog-install.sh
CATALOG_UNINSTALL=/usr/share/sgml/docbook/docbook-catalog-uninstall.sh

fix_empty_catalogs ()
{
  # If the catalog exists, but is empty, we need to initialise it with a basic
  # xml file, otherwise, the updating will fail.
  if [ ! -s /etc/xml/docbook-xmlcatalog ]; then
      cp /etc/xml/docbook-empty-catalog /etc/xml/docbook-xmlcatalog
  fi
  if [ ! -s /etc/xml/catalog ]; then
      cp /etc/xml/docbook-empty-catalog /etc/xml/catalog
  fi
}

start_docbook_catalog_update ()
{
    fix_empty_catalogs
    # is it an empty catalog?
    cmp -s /etc/xml/catalog /etc/xml/docbook-empty-catalog
    # or is there an updated catalog-install script?
    if [ $? == 0 -o $CATALOG_INSTALL -nt /etc/xml/catalog ]; then
	$CATALOG_INSTALL
    fi
}

refresh_docbook_catalog_update ()
{
    $CATALOG_UNINSTALL > /dev/null 2>&1
    fix_empty_catalogs
    $CATALOG_INSTALL
}

METHOD=$1

case "$METHOD" in
    'start')
	# Continue with rest of script
	;;
    'refresh')
	# Continue with rest of script
	;;
    -*)
	echo $USAGE
	exit 2
	;;
    *)
	echo "Invalid method $METHOD"
	exit 2
	;;
esac

${METHOD}_docbook_catalog_update

exit $SMF_EXIT_OK
