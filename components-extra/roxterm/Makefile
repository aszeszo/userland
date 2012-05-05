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

COMPONENT_NAME=		roxterm
COMPONENT_VERSION=	1.18.5
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:414ebb59eb5b004d47da9aed9d04e7da2f73cc78b4819dddd19e392bd6d3e5fe
COMPONENT_ARCHIVE_URL=	http://downloads.sourceforge.net/project/roxterm/roxterm/$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CONFIGURE_ENV += PATH=/usr/gnu/bin:$(PATH)
COMPONENT_BUILD_ENV += PATH=/usr/gnu/bin:$(PATH)

build:		$(BUILD_32)

install:	$(INSTALL_32)

test:		$(NO_TESTS)
