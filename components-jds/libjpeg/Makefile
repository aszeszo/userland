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
# Copyright 2011, Andrzej Szeszo
#

include ../../make-rules/shared-macros.mk

DOC_VERSION=		3070600

COMPONENT_NAME=		libjpeg
COMPONENT_VERSION=	6b
COMPONENT_SRC=		jpeg-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	jpegsrc.v$(COMPONENT_VERSION).tar.gz
COMPONENT_ARCHIVE_HASH= \
	sha256:75c3ec241e9996504fe02a9ed4d12f16b74ade713972f3db9e65ce95cd27e35d
COMPONENT_ARCHIVE_URL=	http://www.ijg.org/files/jpegsrc.v6b.tar.gz

IPS_COMPONENT_VERSION=	6.0.2

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

COMPONENT_BUILD_ENV += PATH=$(SPRO_VROOT)/bin/:$(PATH)

CONFIGURE_OPTIONS	+= --enable-shared CC="$(CC) $(CFLAGS)"

#COMPONENT_POST_CONFIGURE_ACTION = (cd $(@D); $(GSED) -e "s%^CC=\"/.*\"%CC=\"$(CC)\"%" \
#    `which libtool` > libtool; $(CHMOD) a+x libtool)

COMPONENT_POST_CONFIGURE_ACTION = cd $(@D); $(RM) libtool; $(SYMLINK) /usr/bin/libtool .

COMPONENT_PRE_INSTALL_ACTION = $(MKDIR) $(PROTOUSRSHAREMAN1DIR) $(PROTOUSRBINDIR) \
	$(PROTOUSRINCDIR) $(PROTOUSRLIBDIR64)

PROTOLIBDIR.32 = $(PROTOUSRLIBDIR)
PROTOLIBDIR.64 = $(PROTOUSRLIBDIR64)
COMPONENT_INSTALL_ARGS += mandir=$(PROTOUSRSHAREMAN1DIR) bindir=$(PROTOUSRBINDIR)
COMPONENT_INSTALL_ARGS += includedir=$(PROTOUSRINCDIR) libdir=$(PROTOLIBDIR.$(BITS))

build:		$(BUILD_32_and_64)

install:	$(INSTALL_64) $(INSTALL_32)

test:		$(TEST_32_and_64)

