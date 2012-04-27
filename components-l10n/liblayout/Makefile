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

COMPONENT_NAME=		liblayout
COMPONENT_VERSION=	0.5.11
COMPONENT_SRC=		liblayout

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

PKG_PROTO_DIRS += $(COMPONENT_DIR)/../g11n/build/prototype/$(MACH)

CLEAN_PATHS += $(BUILD_DIR)

$(COMPONENT_DIR)/../g11n/build/$(MACH32)/.installed:
	$(GMAKE) -C $(COMPONENT_DIR)/../g11n install

download::

prep::

build: $(COMPONENT_DIR)/../g11n/build/$(MACH32)/.installed

install: $(COMPONENT_DIR)/../g11n/build/$(MACH32)/.installed
	@$(MKDIR) $(COMPONENT_DIR)/$(COMPONENT_SRC)
	@$(MKDIR) $(PROTO_DIR)

#install: build
#	@$(MKDIR) $(PROTO_DIR)/usr/include/sys
#	@$(MKDIR) $(PROTO_DIR)/usr/lib/$(MACH64)
#	@$(CP) $(COMPONENT_DIR)/files/layout.h $(PROTO_DIR)/usr/include/sys
#	@$(CP) $(BUILD_DIR_32)/liblayout.so.1 $(PROTO_DIR)/usr/lib
#	@$(CP) $(BUILD_DIR_32)/64/liblayout.so.1 $(PROTO_DIR)/usr/lib/$(MACH64)
#	@$(SYMLINK) liblayout.so.1 $(PROTO_DIR)/usr/lib/liblayout.so || true
#	@$(SYMLINK) liblayout.so.1 $(PROTO_DIR)/usr/lib/$(MACH64)/liblayout.so || true

test: $(NO_TESTS)
