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

COMPONENT_NAME=		Authen-PAM
COMPONENT_VERSION=	0.16
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
	sha256:sha256:0e949bd9a2a9df0f829971030fe9169cbaf6cec78b92faf22f547ff6c6155c9b
COMPONENT_ARCHIVE_URL=	http://www.cpan.org/modules/by-module/Authen/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://search.cpan.org/~nikip/

include ../../../make-rules/prep.mk
include ../../../make-rules/ips.mk
include ../../../make-rules/makemaker.mk

build:		$(BUILD_32)

install:	$(INSTALL_32)
