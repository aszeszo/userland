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

COMPONENT_NAME=		gst-plugins-base
COMPONENT_VERSION=	0.10.32
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH= \
    sha256:e9aabfac83f6480896da0686e9c911989f896fbad634821b7771ed84a446172b
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
COMPONENT_BUILD_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)
COMPONENT_INSTALL_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)

COMPONENT_INSTALL_ENV += GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1

COMPONENT_POST_INSTALL_ACTION += \
	$(RM) $(PROTO_DIR)$(CONFIGURE_BINDIR.$(BITS))/gst-visualise-0.10

CONFIGURE_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_BUILD_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_INSTALL_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"

CONFIGURE_OPTIONS += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --enable-external
CONFIGURE_OPTIONS += --enable-experimental

build:	$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
