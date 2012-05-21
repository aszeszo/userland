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

COMPONENT_NAME=		poppler
COMPONENT_VERSION=	0.14.4
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
#COMPONENT_ARCHIVE_HASH= \
    sha256:e9aabfac83f6480896da0686e9c911989f896fbad634821b7771ed84a446172b
COMPONENT_ARCHIVE_URL= \
     http://poppler.freedesktop.org/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION += \
    cd $(@D); autoreconf --install --force

COMPONENT_POST_INSTALL_ACTION += \
	$(RM) $(PROTO_DIR)$(CONFIGURE_LIBDIR.$(BITS))/*.{a,la}

CONFIGURE_OPTIONS += CXX="$(CXX) $($(COMPILER)_NORUNPATH)"
CONFIGURE_OPTIONS += --enable-poppler-glib
CONFIGURE_OPTIONS += --disable-poppler-qt
CONFIGURE_OPTIONS += --disable-poppler-qt4
CONFIGURE_OPTIONS += --enable-zlib
CONFIGURE_OPTIONS += --enable-xpdf-headers

build:	$(BUILD_32)

install:	$(INSTALL_32)
