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

COMPONENT_NAME=		nspr
COMPONENT_VERSION=	4.8.9
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha1:509785e68f52542778c770445329cc4db15c749b
COMPONENT_ARCHIVE_URL=	http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v$(COMPONENT_VERSION)/src/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CONFIGURE_SCRIPT = $(SOURCE_DIR)/mozilla/nsprpub/configure

CONFIGURE_ENV = CC=$(CC)

CONFIGURE_LIBDIR.32 = /usr/lib/mps
CONFIGURE_LIBDIR.64 = /usr/lib/mps/$(MACH64)

CONFIGURE_OPTIONS.64 += --enable-64bit

CONFIGURE_OPTIONS = --prefix=$(CONFIGURE_PREFIX)
CONFIGURE_OPTIONS += --libdir=$(CONFIGURE_LIBDIR.$(BITS))
CONFIGURE_OPTIONS += --includedir=/usr/include/mps
CONFIGURE_OPTIONS += --disable-debug
CONFIGURE_OPTIONS += $(CONFIGURE_OPTIONS.$(BITS))

build: $(BUILD_32_and_64)

install: $(INSTALL_32_and_64)
	$(MKDIR) -p $(PROTO_DIR)/usr/lib/pkgconfig
	cat $(COMPONENT_DIR)/nspr.pc | sed s/^Version:/Version:\ $(COMPONENT_VERSION)/ \
		> $(PROTO_DIR)/usr/lib/pkgconfig/nspr.pc
