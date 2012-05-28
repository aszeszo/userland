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

COMPONENT_NAME=		openvpn
COMPONENT_VERSION=	2.2.2
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:54ca8b260e2ea3b26e84c2282ccb5f8cb149edcfd424b686d5fb22b8dbbeac00
COMPONENT_ARCHIVE_URL= \
     http://swupdate.openvpn.org/community/releases/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CONFIGURE_OPTIONS += --sbindir=$(CONFIGURE_PREFIX)/bin
CONFIGURE_OPTIONS += --enable-password-save

build:	$(BUILD_32)

install:	$(INSTALL_32)
