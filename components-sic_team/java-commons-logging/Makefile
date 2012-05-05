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

COMPONENT_NAME=		commons-logging
COMPONENT_VERSION=	1.0.4
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	\
	sha256:6e5dcdda5ad1c5f686e7fb4f9c7ef8a7f40bd1a7a80956377bad82854f0d54c1
COMPONENT_ARCHIVE_URL=	http://archive.apache.org/dist/commons/logging/binaries/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

build:

install: prep
	@$(MKDIR) $(PROTO_DIR)/usr/share/lib
	@$(CP) $(SOURCE_DIR)/commons-logging.jar $(PROTO_DIR)/usr/share/lib

clean::
	[ -d $(BUILD_DIR) ] && rm -rf $(BUILD_DIR)
