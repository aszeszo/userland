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

COMPONENT_NAME=		docbook-xsl
COMPONENT_VERSION=	1.76.1
COMPONENT_SRC=$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=		$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha1:f19ea1991c607d0442e5502b4fb67dc882744721
COMPONENT_ARCHIVE_URL=	http://prdownloads.sourceforge.net/docbook/$(COMPONENT_ARCHIVE)

COMPONENT_ARCHIVE_1=		$(COMPONENT_NAME)-doc-$(COMPONENT_VERSION).tar.gz
COMPONENT_ARCHIVE_HASH_1=	sha1:2afbfe277da46f42d59c8599862ef07c9ace25e8
COMPONENT_ARCHIVE_URL_1=	http://prdownloads.sourceforge.net/docbook/$(COMPONENT_ARCHIVE_1)

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

COMPONENT_POST_UNPACK_ACTION += \
	gzip -dc $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_1) | tar -xf -

COMPONENT_PREP_ACTION = \
	$(CP) $(COMPONENT_DIR)/files/docbook-style-xsl.Makefile \
	$(COMPONENT_SRC)/Makefile

COMPONENT_POST_BUILD_ACTION += \
	(cd $(@D); for fhtml in `find doc -name '*.html' -type f`; do \
	iconv -f ISO-8859-1 -t UTF-8 "$fhtml" -o "$fhtml".tmp; \
	mv -f "$fhtml".tmp "$fhtml"; \
	sed -i 's/charset=ISO-8859-1/charset=UTF-8/' "$fhtml"; done)

COMPONENT_INSTALL_ARGS += \
	DESTDIR=$(PROTO_DIR)/usr/share/sgml/docbook/xsl-stylesheets-$(COMPONENT_VERSION)

build: $(BUILD_32)

install: $(INSTALL_32)
	$(SYMLINK) xsl-stylesheets-$(COMPONENT_VERSION) \
		$(PROTO_DIR)/usr/share/sgml/docbook/xsl-stylesheets || true
	$(RM) -r $(PROTO_DIR)/usr/share/sgml/docbook/xsl-stylesheets/extensions || true

	$(MKDIR) $(PROTO_DIR)/usr/share/doc/docbook-style-xsl/doc
	$(CP) $(COMPONENT_SRC)/{BUGS,README,TODO} $(PROTO_DIR)/usr/share/doc/docbook-style-xsl
	$(CP) -r $(COMPONENT_SRC)/doc/* $(PROTO_DIR)/usr/share/doc/docbook-style-xsl/doc
