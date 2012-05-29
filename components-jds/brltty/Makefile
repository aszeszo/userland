#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2011, Andrzej Szeszo
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		brltty
COMPONENT_VERSION=	4.2
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:fc2b1a96255afc26ac43cadd3f730fabb73d0b1d991ffefd4c2214c5e20a8aa2
COMPONENT_ARCHIVE_URL=	http://www.mielke.cc/brltty/releases/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_CONFIGURE_ACTION = \
	$(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_ENV  +=	CC="$(CC) $(CC_BITS)"
CONFIGURE_ENV  +=	CFLAGS="$(CFLAGS)"
CONFIGURE_ENV  +=	LDFLAGS="$(LDFLAGS) $(CFLAGS)"

CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --localstatedir=/var
CONFIGURE_OPTIONS += --disable-tcl-bindings
CONFIGURE_OPTIONS += --disable-caml-bindings
CONFIGURE_OPTIONS.64 += --disable-python-bindings
CONFIGURE_OPTIONS += --disable-speech-support

COMPONENT_BUILD_ENV  +=	CC="$(CC) $(CC_BITS)"
COMPONENT_BUILD_ENV  +=	CFLAGS="$(CFLAGS)"
COMPONENT_BUILD_ENV  +=	LDFLAGS="$(LDFLAGS) $(CFLAGS)"

COMPONENT_INSTALL_ARGS += INSTALL_ROOT=$(PROTO_DIR) sysconfdir=$(PROTO_DIR)/etc

build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
	@$(MKDIR) $(PROTOUSRSHAREDOCDIR)/SUNWbrltty
	@for i in LICENSE-GPL LICENSE-LGPL README; do \
	    bzip2 -c $(COMPONENT_SRC)/$$i >$(PROTOUSRSHAREDOCDIR)/SUNWbrltty/$$i.bz2; \
	done
	@bzip2 -c $(COMPONENT_SRC)/Documents/ChangeLog >$(PROTOUSRSHAREDOCDIR)/SUNWbrltty/ChangeLog.bz2
	@$(CP) $(COMPONENT_SRC)/Documents/CONTRIBUTORS $(COMPONENT_SRC)/Documents/HISTORY \
	    $(PROTOUSRSHAREDOCDIR)/SUNWbrltty
