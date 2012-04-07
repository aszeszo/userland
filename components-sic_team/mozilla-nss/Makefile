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

COMPONENT_NAME=		nss
COMPONENT_VERSION=	3.13.1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
#COMPONENT_ARCHIVE_HASH=	sha1:
COMPONENT_ARCHIVE_URL=	http://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_13_1_RTM/src/$(COMPONENT_ARCHIVE)

# Enable compiler optimizations and disable debugging code
COMPONENT_BUILD_ENV += BUILD_OPT=1

# Generate symbolic info for debuggers
#COMPONENT_BUILD_ENV += XCFLAGS="-g"

COMPONENT_BUILD_ENV += PATH=$(SPRO_VROOT)/bin:$(PATH)
COMPONENT_BUILD_ENV += PKG_CONFIG_ALLOW_SYSTEM_LIBS=1
COMPONENT_BUILD_ENV += PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1
COMPONENT_BUILD_ENV += NSS_USE_SYSTEM_SQLITE=1

MPS.32=/usr/lib/mps
MPS.64=/usr/lib/mps/$(MACH64)
COMPONENT_BUILD_ENV += NSPR_INCLUDE_DIR=/usr/include/mps
COMPONENT_BUILD_ENV += NSPR_LIB_DIR=$(MPS.$(BITS))
COMPONENT_BUILD_ENV += NSS_INCLUDE_DIR=/usr/include/mps
COMPONENT_BUILD_ENV += NSS_LIB_DIR=$(MPS.$(BITS))

COMPONENT_BUILD_ENV.64 += USE_64=1
COMPONENT_BUILD_ENV += $(COMPONENT_BUILD_ENV.$(BITS))


include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

$(BUILD_DIR)/%/.built:	$(SOURCE_DIR)/.prep
	$(MKDIR) $(@D)
	$(CLONEY) $(SOURCE_DIR) $(@D)
	$(COMPONENT_PRE_BUILD_ACTION)
	(cd $(@D); $(ENV) $(COMPONENT_BUILD_ENV) $(GMAKE) -C mozilla/security/coreconf)
	(cd $(@D); $(ENV) $(COMPONENT_BUILD_ENV) $(GMAKE) -C mozilla/security/dbm)
	(cd $(@D); $(ENV) $(COMPONENT_BUILD_ENV) $(GMAKE) -C mozilla/security/nss)
	$(COMPONENT_POST_BUILD_ACTION)
	$(TOUCH) $@

build: $(BUILD_32_and_64)

install: build
	$(MKDIR) -p $(PROTO_DIR)/usr/sfw/bin
	$(MKDIR) -p $(PROTO_DIR)/usr/sfw/bin/$(MACH64)
	$(MKDIR) -p $(PROTO_DIR)/usr/lib/mps
	$(MKDIR) -p $(PROTO_DIR)/usr/lib/mps/$(MACH64)
	$(MKDIR) -p $(PROTO_DIR)/usr/include/mps
	$(MKDIR) -p $(PROTO_DIR)/usr/lib/pkgconfig
	cp $(BUILD_DIR_32)/mozilla/dist/public/nss/*.h $(PROTO_DIR)/usr/include/mps
	cp $(BUILD_DIR_32)/mozilla/dist/SunOS5.11_*_OPT.OBJ/lib/*.so $(PROTO_DIR)/usr/lib/mps
	cp $(BUILD_DIR_32)/mozilla/dist/SunOS5.11_*_OPT.OBJ/lib/*.chk $(PROTO_DIR)/usr/lib/mps
	cp $(BUILD_DIR_64)/mozilla/dist/SunOS5.11_*_OPT.OBJ/lib/*.so $(PROTO_DIR)/usr/lib/mps/$(MACH64)
	cp $(BUILD_DIR_64)/mozilla/dist/SunOS5.11_*_OPT.OBJ/lib/*.chk $(PROTO_DIR)/usr/lib/mps/$(MACH64)
	for i in addbuiltin certutil cmsutil crlutil modutil pk12util signtool signver ssltap; do \
		cp $(BUILD_DIR_32)/mozilla/dist/SunOS5.11_*_OPT.OBJ/bin/$$i $(PROTO_DIR)/usr/sfw/bin; \
		cp $(BUILD_DIR_64)/mozilla/dist/SunOS5.11_*_OPT.OBJ/bin/$$i $(PROTO_DIR)/usr/sfw/bin/$(MACH64); \
		done
	cat $(COMPONENT_DIR)/nss.pc | sed s/^Version:/Version:\ $(COMPONENT_VERSION)/ \
		> $(PROTO_DIR)/usr/lib/pkgconfig/nss.pc
