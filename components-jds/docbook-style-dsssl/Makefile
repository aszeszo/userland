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

COMPONENT_NAME=		docbook-dsssl
COMPONENT_VERSION=	1.79
COMPONENT_SRC=$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=		$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	\
	sha256:d5a199024a5fe0862bfaff9e3533817cd8d08bddf3cdfb5bfe6088cbb2cd62b3
COMPONENT_ARCHIVE_URL=	http://prdownloads.sourceforge.net/docbook/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
	$(CP) $(COMPONENT_DIR)/files/docbook-style-dsssl.Makefile \
	$(COMPONENT_SRC)/Makefile

COMPONENT_INSTALL_ARGS += BINDIR=$(PROTO_DIR)/usr/bin
COMPONENT_INSTALL_ARGS += \
	DESTDIR=$(PROTO_DIR)/usr/share/sgml/docbook/dsssl-stylesheets-$(COMPONENT_VERSION)

build: $(BUILD_32)

install: $(INSTALL_32)
	$(SYMLINK) dsssl-stylesheets-$(COMPONENT_VERSION) \
		$(PROTO_DIR)/usr/share/sgml/docbook/dsssl-stylesheets || true
