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

COMPONENT_NAME=			libunique
COMPONENT_VERSION=		1.1.6
COMPONENT_SRC=			$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=		$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH= \
    sha256:e5c8041cef8e33c55732f06a292381cb345db946cf792a4ae18aa5c66cdd4fbb
COMPONENT_ARCHIVE_URL=	http://download.gnome.org/sources/libunique/1.1/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
	(cd $(@D); autoreconf --install --force; )

CONFIGURE_OPTIONS += CC="$(CC) -m$(BITS)"
CONFIGURE_OPTIONS += CXX="$(CXX) -m$(BITS)"
CONFIGURE_OPTIONS += LIBS="-lsocket -lnsl"
CONFIGURE_OPTIONS += --enable-introspection=no

build: $(BUILD_32_and_64)

install: $(INSTALL_32_and_64)
