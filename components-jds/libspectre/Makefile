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

COMPONENT_NAME=		libspectre
COMPONENT_VERSION=	0.2.6
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:2f637c62322c8040514284c00f63a5c310a28801e7dcfbe2ba2791be4fac0dd3
COMPONENT_ARCHIVE_URL= \
     http://libspectre.freedesktop.org/releases/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION += \
    cd $(@D); autoreconf --install --force

COMPONENT_POST_INSTALL_ACTION += \
	$(RM) $(PROTO_DIR)$(CONFIGURE_LIBDIR.$(BITS))/*.{a,la}

build:	$(BUILD_32)

install:	$(INSTALL_32)
