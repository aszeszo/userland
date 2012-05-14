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

COMPONENT_NAME=		popt
COMPONENT_VERSION=	1.7
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:4e75cb28793f0d44134f71fae53057d5f250805e6268fbd9c9780654b73b0dc1
#COMPONENT_ARCHIVE_URL=	http://rpm5.org/files/popt/$(COMPONENT_ARCHIVE)
COMPONENT_ARCHIVE_URL= \
    http://ftp.mirrorservice.org/sites/ftp.rpm.org/pub/rpm/dist/rpm-4.1.x/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
    cd $(@D); $(TOUCH) config.rpath; autoreconf --install --force

CONFIGURE_ENV += PATH=/usr/gnu/bin:$(PATH)

CONFIGURE_OPTIONS += CC="$(CC) $(CC_BITS)"
CONFIGURE_OPTIONS += --disable-static
CONFIGURE_OPTIONS += --disable-nls

COMPONENT_BUILD_ENV += PATH=/usr/gnu/bin:$(PATH)

build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
