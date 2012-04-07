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
# Copyright 2011, Andrzej Szeszo
#

include ../../make-rules/shared-macros.mk

COMPONENT_NAME=		jdk
COMPONENT_VERSION=	25
COMPONENT_SRC=		jdk1.6.0_$(COMPONENT_VERSION)

COMPONENT_ARCHIVE_1.i386=	jdk-6u$(COMPONENT_VERSION)-dlj-solaris-i586.sh
COMPONENT_ARCHIVE_HASH_1.i386=	sha1:1a55f742502ce3cebca9cc44288e33f0547aa0b7
COMPONENT_ARCHIVE_URL_1.i386=	http://download.java.net/dlj/binaries/$(COMPONENT_ARCHIVE_1.i386)
COMPONENT_ARCHIVE_2.i386=	jdk-6u$(COMPONENT_VERSION)-dlj-solaris-amd64.sh
COMPONENT_ARCHIVE_HASH_2.i386=	sha1:5d6ea21bb5f968c93c2840e9d02b224e0bf40f75
COMPONENT_ARCHIVE_URL_2.i386=	http://download.java.net/dlj/binaries/$(COMPONENT_ARCHIVE_2.i386)

COMPONENT_ARCHIVE_1.sparc=	jdk-6u$(COMPONENT_VERSION)-dlj-solaris-sparc.sh
#COMPONENT_ARCHIVE_HASH_1.sparc=	sha1:
COMPONENT_ARCHIVE_URL_1.sparc=	http://download.java.net/dlj/binaries/$(COMPONENT_ARCHIVE_1.sparc)
COMPONENT_ARCHIVE_2.sparc=	jdk-6u$(COMPONENT_VERSION)-dlj-solaris-sparcv9.sh
#COMPONENT_ARCHIVE_HASH_2.sparc=	sha1:
COMPONENT_ARCHIVE_URL_2.sparc=	http://download.java.net/dlj/binaries/$(COMPONENT_ARCHIVE_2.sparc)

COMPONENT_ARCHIVE_1=		$(COMPONENT_ARCHIVE_1.$(MACH))
COMPONENT_ARCHIVE_HASH_1=	$(COMPONENT_ARCHIVE_HASH_1.$(MACH))
COMPONENT_ARCHIVE_URL_1=	$(COMPONENT_ARCHIVE_URL_1.$(MACH))

COMPONENT_ARCHIVE_2=		$(COMPONENT_ARCHIVE_2.$(MACH))
COMPONENT_ARCHIVE_HASH_2=	$(COMPONENT_ARCHIVE_HASH_2.$(MACH))
COMPONENT_ARCHIVE_URL_2=	$(COMPONENT_ARCHIVE_URL_2.$(MACH))

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

UNPACK200   = $(SOURCE_DIR)/bin/unpack200

PACK_FILES  = jre/lib/rt.pack jre/lib/jsse.pack jre/lib/charsets.pack
PACK_FILES += lib/tools.pack jre/lib/ext/localedata.pack jre/lib/plugin.pack
PACK_FILES += jre/lib/javaws.pack jre/lib/deploy.pack

$(SOURCE_DIR)/.unpacked: download Makefile $(PATCHES)
	$(RM) -r $(SOURCE_DIR)
	$(CHMOD) +x $(COMPONENT_ARCHIVE_1) $(COMPONENT_ARCHIVE_2)
	./$(COMPONENT_ARCHIVE_1)
	rm -f $(SOURCE_DIR)/{jre/LICENSE,jre/README,LICENSE,README.html}
	./$(COMPONENT_ARCHIVE_2)
	for i in $(PACK_FILES); do \
		$(UNPACK200) $(SOURCE_DIR)/$$i $(SOURCE_DIR)/`echo $$i|sed s/\.pack/\.jar/` && \
		rm $(SOURCE_DIR)/$$i; \
	done
	$(TOUCH) $@

build: prep

install: build
	[ -d $(PROTO_DIR)/usr/jdk/instances ] || mkdir -p $(PROTO_DIR)/usr/jdk/instances
	[ -h $(PROTO_DIR)/usr/jdk/instances/jdk1.6.0 ] || ln -s $(SOURCE_DIR) $(PROTO_DIR)/usr/jdk/instances/jdk1.6.0
	[ -d $(PROTO_DIR)/opt ] || mkdir -p $(PROTO_DIR)/opt
	[ -h $(PROTO_DIR)/opt/SUNWjavadb ] || ln -s $(SOURCE_DIR)/db $(PROTO_DIR)/opt/SUNWjavadb
	touch $(PROTO_DIR)/empty

clean::
	[ -d $(BUILD_DIR) ] && rm -rf $(BUILD_DIR)