#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2012, Andrzej Szeszo
# Copyright 2011, Alasdair Lumsden <alasdairrr@gmail.com>
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		illumos-kvm
COMPONENT_VERSION=	3d2e6c9
COMPONENT_VERSION=	9621d52
IPS_COMPONENT_VERSION=	0.0.1.20120306
COMPONENT_SRC=		joyent-illumos-kvm-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_URL=	https://nodeload.github.com/joyent/illumos-kvm/tarball/$(COMPONENT_VERSION)

ifeq ($(MACH), sparc)
PUBLISH_STAMP=
endif

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

COMPONENT_PRE_CONFIGURE_ACTION = \
	$(CLONEY) $(SOURCE_DIR) $(@D)

COMPONENT_BUILD_ARGS += KERNEL_SOURCE=$(COMPONENT_DIR)/illumos

COMPONENT_PRE_INSTALL_ACTION = \
	$(MKDIR) $(PROTOUSRLIBDIR)/devfsadm/linkmod

build_sparc:
	@echo "Not available."

build_i386:	$(BUILD_32)

build:		build_$(MACH)

install_sparc:
	@echo "Not available."

install_i386:	$(INSTALL_32)

$(BUILD_DIR)/%/.installed:	$(BUILD_DIR)/%/.built
	$(TOUCH) $@

install:	install_$(MACH)
