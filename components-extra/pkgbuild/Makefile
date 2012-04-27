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

COMPONENT_NAME=		pkgbuild
COMPONENT_VERSION=	1.3.104
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
#COMPONENT_ARCHIVE_HASH=	sha1:
COMPONENT_ARCHIVE_URL=	http://downloads.sourceforge.net/project/pkgbuild/pkgbuild/$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk


#COMPONENT_PREP_ACTION += \
#    (cd $(@D); aclocal-1.10 -I m4; automake-1.10 --add-missing; autoconf)

build:		$(BUILD_32)

install:	$(INSTALL_32)

test:		$(NO_TESTS)
