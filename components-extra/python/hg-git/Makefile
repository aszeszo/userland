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

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		schacon-hg-git
COMPONENT_VERSION=	7e75e79
IPS_COMPONENT_VERSION=	0.3.1.20120421
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_URL=	https://nodeload.github.com/schacon/hg-git/tarball/$(COMPONENT_VERSION)

include ../../../make-rules/prep.mk
include ../../../make-rules/setup.py.mk
include ../../../make-rules/ips.mk

build:		$(BUILD_32)

install:	$(INSTALL_32)

test:		$(NO_TESTS)
