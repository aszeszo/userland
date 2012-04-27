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

COMPONENT_NAME=		iconv
COMPONENT_VERSION=	0.5.11
COMPONENT_SRC=		iconv

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

test: $(NO_TESTS)
