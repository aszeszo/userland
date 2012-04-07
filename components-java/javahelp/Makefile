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

COMPONENT_NAME=		javahelp
COMPONENT_VERSION=	2_0_05
COMPONENT_SRC=		jh2.0
COMPONENT_ARCHIVE=	$(COMPONENT_NAME)$(COMPONENT_VERSION).zip
COMPONENT_ARCHIVE_HASH=	sha1:89bad6f314cd83186f5018372ea8c547193154c0
COMPONENT_ARCHIVE_URL=	http://download.java.net/javadesktop/javahelp/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

build: prep

install: build
	[ -d $(PROTO_DIR) ] || mkdir -p $(PROTO_DIR)

clean::
	[ -d $(BUILD_DIR) ] && rm -rf $(BUILD_DIR)
