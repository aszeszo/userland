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

COMPONENT_NAME=		rdesktop
COMPONENT_VERSION=	1.7.1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
	sha256:d1ea43adeb23ef1ba425983670372a87cd7560baf8c94ba34215105ed2ef8479
COMPONENT_ARCHIVE_URL= \
	http://downloads.sourceforge.net/rdesktop/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_CONFIGURE_ACTION = \
	$(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_OPTIONS += --with-ipv6

build:		$(BUILD_32)

install:	$(INSTALL_32)
