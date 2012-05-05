#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL)". You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2012, Andrzej Szeszo
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=			sgml-common
COMPONENT_VERSION=		0.6.3
COMPONENT_SRC=			$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=		$(COMPONENT_SRC).tgz
COMPONENT_ARCHIVE_HASH= \
    sha256:7dc418c1d361123ffc5e45d61f1b97257940a8eb35d0bfbbc493381cc5b1f959
#COMPONENT_ARCHIVE_URL=	ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/$(COMPONENT_ARCHIVE)
COMPONENT_ARCHIVE_URL=	http://gd.tuwien.ac.at/hci/kde/devel/docbook/SOURCES/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
	(cd $(@D); $(ACLOCAL); $(AUTOMAKE) --add-missing --copy; $(AUTORECONF))

#COMPONENT_PRE_CONFIGURE_ACTION = \
#	($(CLONEY) $(SOURCE_DIR) $(@D))

CONFIGURE_OPTIONS = --prefix=$(CONFIGURE_PREFIX)
CONFIGURE_OPTIONS += --sysconfdir=/etc

build: $(BUILD_32)

XMLCATALOG=$(PROTO_DIR)/etc/xml/catalog

install: $(INSTALL_32)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/catalog
	$(CP) $(SOURCE_DIR)/{AUTHORS,ChangeLog,NEWS,README} \
		$(PROTO_DIR)/$(CONFIGURE_PREFIX)/share/doc/sgml-common
	$(CP) $(COMPONENT_DIR)/files/{*.dcl,*.soc} \
		$(PROTO_DIR)/$(CONFIGURE_PREFIX)/share/sgml

	$(MKDIR) $(PROTO_DIR)/etc/xml

	/usr/bin/xmlcatalog --noout --create $(XMLCATALOG)
	# Now put the common DocBook entries in it
	/usr/bin/xmlcatalog --noout --add "delegatePublic" \
		"-//OASIS//ENTITIES DocBook XML" \
		"file:///usr/share/sgml/docbook/xmlcatalog" $(XMLCATALOG)
	/usr/bin/xmlcatalog --noout --add "delegatePublic" \
		"-//OASIS//DTD DocBook XML" \
		"file:///usr/share/sgml/docbook/xmlcatalog" $(XMLCATALOG)
	/usr/bin/xmlcatalog --noout --add "delegatePublic" \
		"ISO 8879:1986" \
		"file:///usr/share/sgml/docbook/xmlcatalog" $(XMLCATALOG)
	/usr/bin/xmlcatalog --noout --add "delegateSystem" \
		"http://www.oasis-open.org/docbook/" \
		"file:///usr/share/sgml/docbook/xmlcatalog" $(XMLCATALOG)
	/usr/bin/xmlcatalog --noout --add "delegateURI" \
		"http://www.oasis-open.org/docbook/" \
		"file:///usr/share/sgml/docbook/xmlcatalog" $(XMLCATALOG)

	$(MKDIR) $(PROTO_DIR)/etc/sgml/docbook
	# Also create the common DocBook catalog
	/usr/bin/xmlcatalog --noout --create \
		$(PROTO_DIR)/etc/sgml/docbook/xmlcatalog

	$(MKDIR) $(PROTO_DIR)/$(CONFIGURE_PREFIX)/share/sgml/docbook
	$(SYMLINK) ../../../../etc/sgml/docbook/xmlcatalog \
		$(PROTO_DIR)/$(CONFIGURE_PREFIX)/share/sgml/docbook/xmlcatalog || true

	$(RM) -r $(PROTO_DIR)/$(CONFIGURE_PREFIX)/share/xml || true


#	rm -rf $RPM_BUILD_ROOT/usr/share/xml/*
