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

COMPONENT_NAME=		gstreamer
COMPONENT_VERSION=	0.10.32
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH= \
    sha256:3bf4e46a186ee9a1f5e212aaf651d67cffb4f5f05345a7c99ae71d5d992be133
COMPONENT_ARCHIVE_URL= \
    http://gstreamer.freedesktop.org/src/$(COMPONENT_NAME)/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
	cd $(@D); autoreconf --install --force

# required for configure to use the right xgettext
CONFIGURE_ENV += PATH=/usr/gnu/bin:$(PATH)

# required for g-ir-scanner to find cc
COMPONENT_BUILD_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)
COMPONENT_INSTALL_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)

CONFIGURE_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_BUILD_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
COMPONENT_INSTALL_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"

CONFIGURE_OPTIONS += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"
CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --libexecdir=$(CONFIGURE_LIBDIR.$(BITS))
CONFIGURE_OPTIONS += --disable-tests --disable-examples
CONFIGURE_OPTIONS += --program-suffix="" --disable-check

# run below only once
COMPONENT_POST_INSTALL_ACTION.64 += \
	$(MKDIR) $(PROTO_DIR)/etc/security/prof_attr.d; \
	$(CP) $(COMPONENT_DIR)/library-audio-gstreamer \
		$(PROTO_DIR)/etc/security/prof_attr.d; \
	$(MKDIR) $(PROTO_DIR)/etc/gconf/schemas; \
	$(CP) $(COMPONENT_DIR)/../gst-plugins-good/build/prototype/$(MACH)/usr/etc/gconf/schemas/gstreamer-0.10.schemas \
		$(PROTO_DIR)/etc/gconf/schemas
COMPONENT_POST_INSTALL_ACTION += $(COMPONENT_POST_INSTALL_ACTION.$(BITS))

$(COMPONENT_DIR)/../gst-plugins-base/build/$(MACH64)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../gst-plugins-base install

$(COMPONENT_DIR)/../gst-plugins-good/build/$(MACH64)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../gst-plugins-good install

GSTPLUGINS = $(COMPONENT_DIR)/../gst-plugins-base/build/$(MACH64)/.installed \
	$(COMPONENT_DIR)/../gst-plugins-good/build/$(MACH64)/.installed

PKG_PROTO_DIRS += $(COMPONENT_DIR)/../gst-plugins-base/build/prototype/$(MACH)
PKG_PROTO_DIRS += $(COMPONENT_DIR)/../gst-plugins-good/build/prototype/$(MACH)

build: $(GSTPLUGINS) $(BUILD_32_and_64)

install: $(GSTPLUGINS) $(INSTALL_32_and_64)
