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

COMPONENT_NAME=		procmail
COMPONENT_VERSION=	3.22
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= \
	sha256:087c75b34dd33d8b9df5afe9e42801c9395f4bf373a784d9bc97153b0062e117
COMPONENT_ARCHIVE_URL=	http://www.ring.gr.jp/archives/net/mail/procmail/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	http://www.procmail.org/

include ../../make-rules/prep.mk
include ../../make-rules/justmake.mk
include ../../make-rules/ips.mk

COMPONENT_BUILD_ARGS += MANDIR=/usr/share/man
COMPONENT_BUILD_ARGS += LOCKINGTEST="/tmp /var/tmp ."
COMPONENT_BUILD_ARGS += CC="$(CC)"
COMPONENT_BUILD_ARGS += CFLAGS="$(CFLAGS)"
COMPONENT_BUILD_ARGS += LDFLAGS="$(LDFLAGS)"
COMPONENT_BUILD_ARGS += BSHELL=$(SHELL)

build:		$(BUILD_32)

install: build
	@$(MKDIR) $(PROTO_DIR)/usr/bin $(PROTO_DIR)/usr/share/man/man1 \
		$(PROTO_DIR)/usr/share/man/man5
	@$(CP) $(BUILD_DIR_32)/new/{formail,lockfile,mailstat,procmail} \
		$(PROTO_DIR)/usr/bin
	@$(CP) $(BUILD_DIR_32)/new/*.1 $(PROTO_DIR)/usr/share/man/man1
	@$(CP) $(BUILD_DIR_32)/new/*.5 $(PROTO_DIR)/usr/share/man/man5
