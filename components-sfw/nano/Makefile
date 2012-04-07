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

COMPONENT_NAME=		nano
COMPONENT_VERSION=	2.2.6
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha1:f2a628394f8dda1b9f28c7e7b89ccb9a6dbd302a
COMPONENT_ARCHIVE_URL=	http://www.nano-editor.org/dist/v2.2/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://www.nano-editor.org/

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CONFIGURE_OPTIONS += --enable-color
CONFIGURE_OPTIONS += --enable-multibuffer
CONFIGURE_OPTIONS += --enable-nanorc
CONFIGURE_OPTIONS += --enable-utf8
CONFIGURE_OPTIONS += --disable-iberty
CONFIGURE_OPTIONS += get_wch=getwch

build:		$(BUILD_32)

install:	$(INSTALL_32)

test:		$(NO_TESTS)
