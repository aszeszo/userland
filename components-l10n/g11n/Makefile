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

COMPONENT_NAME=		g11n
COMPONENT_VERSION=	8d7e737
IPS_COMPONENT_VERSION=	0.5.11
COMPONENT_SRC=		aszeszo-g11n-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_URL=	https://nodeload.github.com/aszeszo/g11n/tarball/$(COMPONENT_VERSION)

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

COMPONENT_PREP_ACTION = \
	$(PERL) -pi -e 's/^(FILEROOT.*)/\#\1/; s/^(SPRO_VROOT.*)/\#\1/' \
	$(@D)/Makefile.master

COMPONENT_BUILD_ENV += SRC=$(@D)
COMPONENT_BUILD_ENV += FILEROOT=$(PROTO_DIR)
COMPONENT_BUILD_ENV += SPRO_VROOT=$(SPRO_VROOT)

$(BUILD_DIR)/%/.built:  $(SOURCE_DIR)/.prep
	$(RM) -r $(@D) ; $(MKDIR) $(@D)
	$(CLONEY) $(SOURCE_DIR) $(@D)
	(cd $(@D)/src/lib/iconv ; $(ENV) $(COMPONENT_BUILD_ENV) \
		$(CCSMAKE) $(COMPONENT_BUILD_ARGS) $(COMPONENT_BUILD_TARGETS))
	(cd $(@D)/src/lib/liblayout ; $(ENV) $(COMPONENT_BUILD_ENV) \
		$(CCSMAKE) $(COMPONENT_BUILD_ARGS) $(COMPONENT_BUILD_TARGETS))
#	(cd $(@D)/src/lib/liblcl ; $(ENV) $(COMPONENT_BUILD_ENV) \
#		$(CCSMAKE) $(COMPONENT_BUILD_ARGS) $(COMPONENT_BUILD_TARGETS))
	$(TOUCH) $@

$(BUILD_DIR)/%/.installed:	$(BUILD_DIR)/%/.built
	(cd $(@D)/src/lib/iconv ; $(ENV) $(COMPONENT_BUILD_ENV) \
		$(CCSMAKE) $(COMPONENT_INSTALL_ARGS) $(COMPONENT_INSTALL_TARGETS))
	(cd $(@D)/src/lib/liblayout ; $(ENV) $(COMPONENT_BUILD_ENV) \
		$(CCSMAKE) $(COMPONENT_INSTALL_ARGS) $(COMPONENT_INSTALL_TARGETS))
#	(cd $(@D)/src/lib/liblcl ; $(ENV) $(COMPONENT_BUILD_ENV) \
#		$(CCSMAKE) $(COMPONENT_INSTALL_ARGS) $(COMPONENT_INSTALL_TARGETS))
	$(TOUCH) $@

build:	$(BUILD_32)



install:	$(INSTALL_32)
