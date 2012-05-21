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

COMPONENT_NAME=		gst-plugins-good
COMPONENT_VERSION=	0.10.27
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH= \
    sha256:a9d801c3d42b456a6ebc0b95f68c44f153f756ec0fbd4877197c469cc67771fa
COMPONENT_ARCHIVE_URL= \
    http://gstreamer.freedesktop.org/src/$(COMPONENT_NAME)/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION += \
	cd $(@D); autoreconf --install --force

# required for configure to use the right xgettext
CONFIGURE_ENV += PATH=/usr/gnu/bin:$(PATH)

# required for g-ir-scanner to find cc
#COMPONENT_BUILD_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)
#COMPONENT_INSTALL_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)

COMPONENT_INSTALL_ENV += GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1

CONFIGURE_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_BUILD_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_INSTALL_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"

CONFIGURE_OPTIONS += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
CONFIGURE_OPTIONS += --disable-cdio
CONFIGURE_OPTIONS += --disable-oss
CONFIGURE_OPTIONS += --enable-external

build:	$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
