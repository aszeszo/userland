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

COMPONENT_NAME=		lzo
COMPONENT_VERSION=	2.06
IPS_COMPONENT_VERSION=	2.0.6
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:ff79e6f836d62d3f86ef6ce893ed65d07e638ef4d3cb952963471b4234d43e73
COMPONENT_ARCHIVE_URL= \
     http://www.oberhumer.com/opensource/lzo/download/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

#COMPONENT_PREP_ACTION += \
#    cd $(@D); autoreconf --install --force

COMPONENT_POST_INSTALL_ACTION += \
	$(RM) $(PROTO_DIR)$(CONFIGURE_LIBDIR.$(BITS))/*.{a,la}

CONFIGURE_OPTIONS += CC="$(CC) $(CC_BITS)"
CONFIGURE_OPTIONS += --enable-shared
CONFIGURE_OPTIONS += --disable-static

build:	$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
