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

COMPONENT_NAME=		idnkit
COMPONENT_VERSION=	1.0
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)-src
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	\
	sha256:16cd5fce81a5180d6a2c61cf20572668b3dc59f5c39c272b75fa98edab3391fc
COMPONENT_ARCHIVE_URL=	http://www.nic.ad.jp/ja/idn/idnkit/download/sources/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://www.nic.ad.jp/ja/idn/idnkit/download/

include ../../make-rules/prep.mk
include ../../make-rules/configure.mk
include ../../make-rules/ips.mk

CPPFLAGS += -DIDN_RESCONF_DI=\"/etc/idn\" -DSUN_CHANGE

COMPONENT_PRE_CONFIGURE_ACTION += $(CLONEY) $(COMPONENT_DIR)/idnconv $(@D)

CONFIGURE_ENV += CPPFLAGS="$(CPPFLAGS)"
CONFIGURE_ENV += CC="$(CC) $(CFLAGS)"

CONFIGURE_BINDIR.32 = $(CONFIGURE_PREFIX)/bin
CONFIGURE_BINDIR.64 = $(CONFIGURE_PREFIX)/bin/$(MACH64)
CONFIGURE_LIBDIR.32 = $(CONFIGURE_PREFIX)/lib
CONFIGURE_LIBDIR.64 = $(CONFIGURE_PREFIX)/lib/$(MACH64)

CONFIGURE_OPTIONS = --prefix=$(CONFIGURE_PREFIX)
CONFIGURE_OPTIONS += --bindir=$(CONFIGURE_BINDIR.$(BITS))
CONFIGURE_OPTIONS += --libdir=$(CONFIGURE_LIBDIR.$(BITS))
CONFIGURE_OPTIONS += --sysconfdir=/etc
CONFIGURE_OPTIONS += --with-iconv=no

COMPONENT_POST_BUILD_ACTION += \
	cd $(@D); /usr/bin/xgettext -s -c "TRANSLATION_INFO:" -d SUNW_I18N_CMD idnconv.c; \
	$(CC) $(CFLAGS) -I$(COMPONENT_DIR)/$(COMPONENT_SRC)/include \
	 -DTEXT_DOMAIN=\"SUNW_I18N_CMD\" -o idnconv idnconv.c -lidnkit

build: $(BUILD_32_and_64)

install: $(INSTALL_32_and_64)
	@$(MKDIR) $(PROTO_DIR)$(CONFIGURE_PREFIX)/bin
	@$(CP) $(BUILD_DIR_32)/idnconv $(PROTO_DIR)$(CONFIGURE_PREFIX)/bin

test: $(NO_TESTS)
