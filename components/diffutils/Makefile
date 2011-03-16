#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#

#
# Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		diffutils
COMPONENT_VERSION=	2.8.7
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha1:b05cfdd651137d46d97872dd646db0dd92077f0d
COMPONENT_ARCHIVE_URL=	http://alpha.gnu.org/gnu/diffutils/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CONFIGURE_OPTIONS  +=		--program-prefix=g
CONFIGURE_OPTIONS  +=		--infodir=$(CONFIGURE_INFODIR)
CONFIGURE_OPTIONS  +=		CFLAGS="$(CFLAGS)"

GNUPROGS =	cmp diff3 diff sdiff
GNUMAN1 =	cmp.1 diff.1 diff3.1 sdiff.1

include ../../make-rules/shared-targets.mk

# common targets
build:		$(BUILD_32)

install:	$(INSTALL_32) \
    $(PROTOGNULINKS) $(PROTOGNUMAN1LINKS)

BUILD_PKG_DEPENDENCIES =	$(BUILD_TOOLS)

test: build
	@cd $(BUILD_DIR_32); $(MAKE) check

include ../../make-rules/depend.mk