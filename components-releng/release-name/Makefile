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

COMPONENT_NAME=		release-name
COMPONENT_VERSION=	0.5.11

include ../../make-rules/ips.mk

download:

prep:

configure:

build:

install:
	[ -d $(PROTO_DIR)/etc ] || mkdir -p $(PROTO_DIR)/etc
	@if [ $(MACH) = i386 ]; then \
#	echo "                      OpenIndiana Development oi_175 X86" > \
	echo "                          OI Development oi_175 X86" > \
	$(PROTO_DIR)/etc/release; else \
#	echo "                     OpenIndiana Development oi_175 SPARC" > \
	echo "                         OI Development oi_175 SPARC" > \
	$(PROTO_DIR)/etc/release; fi
	@echo "         Copyright 2010 Oracle and/or its affiliates. All rights reserved." >> $(PROTO_DIR)/etc/release
	@echo "                        Use is subject to license terms." >> $(PROTO_DIR)/etc/release
	@echo "                           Assembled `/usr/bin/env LC_TIME=C date '+%d %B %Y'`" >> $(PROTO_DIR)/etc/release

test:		$(NO_TESTS)

clean:
	[ -d $(BUILD_DIR) ] && rm -rf $(BUILD_DIR)

clobber: clean
