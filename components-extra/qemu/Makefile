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
# Copyright 2012, Andrzej Szeszo
# Copyright 2011 Alasdair Lumsden <alasdairrr@gmail.com>
# Copyright 2012, Piotr Jasiukajtis
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		qemu
COMPONENT_VERSION=	0.15.1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	30cf3b4dabb4b5d8efadb20f364eb8181f317681
COMPONENT_ARCHIVE_URL=	http://wiki.qemu.org/download/$(COMPONENT_ARCHIVE)

ifeq ($(MACH), sparc)
PUBLISH_STAMP=
endif

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

PATH= /usr/gnu/bin:/usr/bin

# Documentation requires pod2man
CONFIGURE_ENV +=	PATH=$(PATH):/usr/perl5/$(PERL_VERSION)/bin
COMPONENT_BUILD_ENV +=	PATH=$(PATH):/usr/perl5/$(PERL_VERSION)/bin

COMPONENT_PRE_CONFIGURE_ACTION = \
	$(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_OPTIONS  = --prefix=/usr
CONFIGURE_OPTIONS += --mandir=/usr/share/man
CONFIGURE_OPTIONS.32 += --bindir=/usr/bin
CONFIGURE_OPTIONS.64 += --bindir=/usr/bin/$(MACH64)
CONFIGURE_OPTIONS.32 += --libdir=/usr/lib
CONFIGURE_OPTIONS.64 += --libdir=/usr/lib/$(MACH64)
CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --enable-vnc-png
CONFIGURE_OPTIONS += --enable-docs
CONFIGURE_OPTIONS += --disable-smartcard

CONFIGURE_OPTIONS.32 += --cpu=i386
CONFIGURE_OPTIONS.64 += --cpu=x86_64

CONFIGURE_OPTIONS += $(CONFIGURE_OPTIONS.$(BITS))

build_sparc:
	@echo "Not available."

build_i386:	$(BUILD_32_and_64)

build:		build_$(MACH)

install_sparc:
	@echo "Not available."

install_i386:	$(INSTALL_32_and_64)

install:	install_$(MACH)
