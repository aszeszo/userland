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
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		avant-window-navigator
COMPONENT_VERSION=	0.3.2.1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
    sha256:f10d728afcdf35c3f7e6cff57f478114f14d5db4b1c9bdc2dc2e582bcaedc21a
COMPONENT_ARCHIVE_URL=	http://launchpad.net/awn/0.2/$(COMPONENT_VERSION)/+download/$(COMPONENT_ARCHIVE)

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

PATH = /usr/gnu/bin:/usr/bin
CONFIGURE_OPTIONS += --sysconfdir=/etc

build:		$(BUILD_32)

install:	$(INSTALL_32)
	@echo Generating manpages...
	@$(MKDIR) $(PROTOUSRSHAREMAN1DIR) $(PROTOUSRSHAREMAN3DIR)
	@for manpage in `cd Solaris/manpages; echo */*`; do \
	    $(SGML2ROFF) Solaris/manpages/$$manpage > \
	    $(PROTOUSRSHAREMANDIR)/$$manpage; \
	    grep "<!--ARC" Solaris/manpages/$$manpage | awk '{ \
		idx1 = index($$0, "ARC "); \
		idx2 = index($$0, "-->"); \
		if (idx1 > 0 && idx2 > 0) { \
		    print "...\\\" " substr($$0, idx1+6, idx2-(idx1+6)); \
		} \
	    }' >> $(PROTOUSRSHAREMANDIR)/$$manpage; \
	done
	@$(MKDIR) $(PROTOUSRSHAREDOCDIR)/SUNWavant
	for i in COPYING.LIB COPYING ChangeLog NEWS; do \
	    bzip2 -c $(COMPONENT_SRC)/$$i >$(PROTOUSRSHAREDOCDIR)/SUNWavant/$$i.bz2; \
	done
	@$(CP) $(COMPONENT_SRC)/AUTHORS $(COMPONENT_SRC)/README \
	    $(PROTOUSRSHAREDOCDIR)/SUNWavant
