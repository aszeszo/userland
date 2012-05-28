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

COMPONENT_NAME=		tuntap
COMPONENT_VERSION=	1.1.0
COMPONENT_SRC=		$(COMPONENT_NAME)
COMPONENT_ARCHIVE=	$(COMPONENT_NAME).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:7e12c68646f88fc62cf60cde8d6b4c592f86690ed19eeb909fbe75765c1e7d62
COMPONENT_ARCHIVE_URL= \
     http://www.whiteboard.ne.jp/~admin2/tuntap/source/tuntap/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_CONFIGURE_ACTION = \
    $(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_OPTIONS.32 += --disable-64bit

build:	$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
