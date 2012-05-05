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

COMPONENT_NAME=		xkeyboard-config
COMPONENT_VERSION=	2.5.1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH= \
    sha256:eb80e8dc38c389728bfca1f041af7658e7dd67faca8c763de02d5014ffd2cc92
COMPONENT_ARCHIVE_URL=	http://xorg.freedesktop.org/archive/individual/data/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://www.freedesktop.org/wiki/Software/XKeyboardConfig

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

PATH= /usr/gnu/bin:/usr/bin

COMPONENT_PREP_ACTION = \
	(cd $(@D); aclocal; automake --copy; autoconf )


build: $(BUILD_32)

install: $(INSTALL_32)

test: $(NO_TESTS)
