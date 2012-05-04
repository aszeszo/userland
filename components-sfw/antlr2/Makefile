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

COMPONENT_NAME=		antlr
COMPONENT_VERSION=	2.7.7
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha1:802655c343cc7806aaf1ec2177a0e663ff209de1
COMPONENT_ARCHIVE_URL=	http://www.antlr2.org/download/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://www.antlr2.org/

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_INSTALL_ACTION = $(MKDIR) $(PROTO_DIR)$(CONFIGURE_PREFIX)/sbin

build:		$(BUILD_32)

install:	$(INSTALL_32)

test:		$(NO_TESTS)
