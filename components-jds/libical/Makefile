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

COMPONENT_NAME=		libical
COMPONENT_VERSION=	0.46
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:000762efb81501421d94ec56343648a62b3bd2884e7cdf6f638e2c207dd8f6a1
COMPONENT_ARCHIVE_URL= \
     http://downloads.sourceforge.net/freeassociation/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

LIB_SUFFIX.32 =
LIB_SUFFIX.64 = /$(MACH64)

COMPONENT_BUILD_ENV += CC="$(CC) $(CC_BITS)" CXX="$(CXX) $(CC_BITS)"

COMPONENT_PRE_BUILD_ACTION += \
	(cd $(@D); $(ENV) $(COMPONENT_BUILD_ENV) cmake \
	-DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=On -DICAL_ERRORS_ARE_FATAL=false \
	-DLIB_SUFFIX=$(LIB_SUFFIX.$(BITS)))

COMPONENT_BUILD_ARGS += VERBOSE=1

COMPONENT_POST_INSTALL_ACTION += \
	$(RM) $(PROTO_DIR)/usr/lib/$(LIB_SUFFIX.$(BITS))/*.{a,la}

build:	$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)
