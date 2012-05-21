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

COMPONENT_NAME=		evince
COMPONENT_VERSION=	2.30.3
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
#COMPONENT_ARCHIVE_HASH= \
    sha256:e9aabfac83f6480896da0686e9c911989f896fbad634821b7771ed84a446172b
COMPONENT_ARCHIVE_URL= \
     http://ftp.gnome.org/pub/GNOME/sources/evince/2.30/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION += \
    cd $(@D); autoreconf --install --force

# required for configure to use the right xgettext
CONFIGURE_ENV += PATH=/usr/gnu/bin:$(PATH)

CONFIGURE_OPTIONS += CXX="$(CXX) $($(COMPILER)_NORUNPATH)"
CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --libexecdir=$(CONFIGURE_LIBDIR.$(BITS))
CONFIGURE_OPTIONS += --disable-comics
CONFIGURE_OPTIONS += --enable-thumbnailer

#COMPONENT_POST_INSTALL_ACTION += \
#	$(RM) $(PROTO_DIR)$(CONFIGURE_LIBDIR.$(BITS))/*.{a,la}

$(COMPONENT_DIR)/../libspectre/build/$(MACH32)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../libspectre install

$(COMPONENT_DIR)/../poppler/build/$(MACH32)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../poppler install

$(COMPONENT_DIR)/../poppler-data/build/$(MACH32)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../poppler-data install

PKG_PROTO_DIRS += $(COMPONENT_DIR)/../libspectre/build/prototype/$(MACH)
PKG_PROTO_DIRS += $(COMPONENT_DIR)/../poppler/build/prototype/$(MACH)
PKG_PROTO_DIRS += $(COMPONENT_DIR)/../poppler-data/build/prototype/$(MACH)

build: $(COMPONENT_DIR)/../libspectre/build/$(MACH32)/.installed \
	$(COMPONENT_DIR)/../poppler/build/$(MACH32)/.installed \
	$(COMPONENT_DIR)/../poppler-data/build/$(MACH32)/.installed \
	$(BUILD_32)

install:  $(COMPONENT_DIR)/../libspectre/build/$(MACH32)/.installed \
	$(COMPONENT_DIR)/../poppler/build/$(MACH32)/.installed \
	$(COMPONENT_DIR)/../poppler-data/build/$(MACH32)/.installed \
	$(INSTALL_32)
