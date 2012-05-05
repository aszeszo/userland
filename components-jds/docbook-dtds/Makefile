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

COMPONENT_NAME=		docbook-dtds
COMPONENT_VERSION=	1.0
COMPONENT_RELEASE=	56
COMPONENT_SRC=docbook-dtds
#IPS_COMPONENT_VERSION=	0.5.11

COMPONENT_ARCHIVE=			docbk30.zip
COMPONENT_ARCHIVE_HASH= \
	sha256:ecf71cbe8ddbad7494ff520d5b4edf73a428c0b159178cb0cb619cba685e61c6
COMPONENT_ARCHIVE_URL=		http://www.oasis-open.org/docbook/sgml/3.0/docbk30.zip

COMPONENT_ARCHIVE_1=		docbk31.zip
COMPONENT_ARCHIVE_HASH_1= \
	sha256:20261d2771b9a052abfa3d8fab1aa62be05791a010281c566f9073bf0e644538
COMPONENT_ARCHIVE_URL_1=	http://www.oasis-open.org/docbook/sgml/3.1/docbk31.zip

COMPONENT_ARCHIVE_2=		docbk40.zip
COMPONENT_ARCHIVE_HASH_2= \
	sha256:dfef22f109779e4cfaafa27b6d381d975ac05eaafb5b3d4407d7043e310817bb
COMPONENT_ARCHIVE_URL_2=	http://www.oasis-open.org/docbook/sgml/4.0/docbk40.zip

COMPONENT_ARCHIVE_3=		docbk41.zip
COMPONENT_ARCHIVE_HASH_3= \
	sha256:deaafcf0a3677692e7ad4412c0e41c1db3e9da6cdcdb3dd32b2cc1f9c97d6311
COMPONENT_ARCHIVE_URL_3=	http://www.oasis-open.org/docbook/sgml/4.1/docbk41.zip

COMPONENT_ARCHIVE_4=		docbkx412.zip
COMPONENT_ARCHIVE_HASH_4= \
	sha256:30f0644064e0ea71751438251940b1431f46acada814a062870f486c772e7772
COMPONENT_ARCHIVE_URL_4=	http://www.oasis-open.org/docbook/xml/4.1.2/docbkx412.zip

COMPONENT_ARCHIVE_5=		docbook-4.2.zip
COMPONENT_ARCHIVE_HASH_5= \
	sha256:67ebd2c94b342718c6865d2de60f5d4ff02d77a7e4b0d9e72a48c45f2b2635c3
COMPONENT_ARCHIVE_URL_5=	http://www.oasis-open.org/docbook/sgml/4.2/docbook-4.2.zip

COMPONENT_ARCHIVE_6=		docbook-xml-4.2.zip
COMPONENT_ARCHIVE_HASH_6= \
	sha256:acc4601e4f97a196076b7e64b368d9248b07c7abf26b34a02cca40eeebe60fa2
COMPONENT_ARCHIVE_URL_6=	http://www.oasis-open.org/docbook/xml/4.2/docbook-xml-4.2.zip

COMPONENT_ARCHIVE_7=		docbook-4.3.zip
COMPONENT_ARCHIVE_HASH_7= \
	sha256:88f52fab7bd49b2e8f40c525014129c26a5a4b8bbd1494e00387556ec76f95ee
COMPONENT_ARCHIVE_URL_7=	http://www.docbook.org/sgml/4.3/docbook-4.3.zip

COMPONENT_ARCHIVE_8=		docbook-xml-4.3.zip
COMPONENT_ARCHIVE_HASH_8= \
	sha256:23068a94ea6fd484b004c5a73ec36a66aa47ea8f0d6b62cc1695931f5c143464
COMPONENT_ARCHIVE_URL_8=	http://www.docbook.org/xml/4.3/docbook-xml-4.3.zip

COMPONENT_ARCHIVE_9=		docbook-4.4.zip
COMPONENT_ARCHIVE_HASH_9= \
	sha256:0ac7960409b032c8e517483523ecb92af4e59196a33b3e2c5617daa22b7a8a6c
COMPONENT_ARCHIVE_URL_9=	http://www.docbook.org/sgml/4.4/docbook-4.4.zip

COMPONENT_ARCHIVE_10=		docbook-xml-4.4.zip
COMPONENT_ARCHIVE_HASH_10= \
	sha256:02f159eb88c4254d95e831c51c144b1863b216d909b5ff45743a1ce6f5273090
COMPONENT_ARCHIVE_URL_10=	http://www.docbook.org/xml/4.4/docbook-xml-4.4.zip

COMPONENT_ARCHIVE_11=		docbook-4.5.zip
COMPONENT_ARCHIVE_HASH_11= \
	sha256:8043e514e80c6c19cb146b5d37937d1305bf3abf9b0097c36df7f70f611cdf43
COMPONENT_ARCHIVE_URL_11=	http://www.docbook.org/sgml/4.5/docbook-4.5.zip

COMPONENT_ARCHIVE_12=		docbook-xml-4.5.zip
COMPONENT_ARCHIVE_HASH_12= \
	sha256:4e4e037a2b83c98c6c94818390d4bdd3f6e10f6ec62dd79188594e26190dc7b4
COMPONENT_ARCHIVE_URL_12=	http://www.docbook.org/xml/4.5/docbook-xml-4.5.zip

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

CLEAN_PATHS += $(BUILD_DIR)

PKG_MACROS += V=$(COMPONENT_VERSION)-$(COMPONENT_RELEASE)

$(SOURCE_DIR)/.unpacked:	download Makefile $(PATCHES)
	$(RM) -r $(SOURCE_DIR)
	$(MKDIR) $(SOURCE_DIR)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/3.0-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/3.1-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_1)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.0-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_2)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.1-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_3)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.1.2-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_4)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.2-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_5)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.2-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_6)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.3-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_7)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.3-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_8)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.4-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_9)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.4-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_10)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.5-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_11)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.5-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_12)
	$(PERL) -pi -e 's/(NAMELEN.*)44/\1XXXX/; s/XXXX/256/' $(SOURCE_DIR)/*/docbook.dcl
	$(TOUCH) $@

build: prep

S = $(SOURCE_DIR)
D = $(PROTO_DIR)
V = $(COMPONENT_VERSION)-$(COMPONENT_RELEASE)

install: build

	$(MKDIR) $(PROTO_DIR)/etc/sgml
	$(MKDIR) $(PROTO_DIR)/etc/xml

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-3.0-$(V)
	$(CP) $(S)/3.0-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-3.0-$(V)/catalog
	$(CP) $(S)/3.0-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-3.0-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-3.0-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-3.1-$(V)
	$(CP) $(S)/3.1-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-3.1-$(V)/catalog
	$(CP) $(S)/3.1-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-3.1-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-3.1-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.0-$(V)
	$(CP) $(S)/4.0-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.0-$(V)/catalog
	$(CP) $(S)/4.0-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.0-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.0-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.1-$(V)
	$(CP) $(S)/4.1-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.1-$(V)/catalog
	$(CP) $(S)/4.1-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.1-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.1-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/xml-dtd-4.1.2-$(V)/ent
	$(CP) $(S)/4.1.2-xml/docbook.cat $(D)/usr/share/sgml/docbook/xml-dtd-4.1.2-$(V)/catalog
	$(CP) $(S)/4.1.2-xml/{*.dtd,*.mod} $(D)/usr/share/sgml/docbook/xml-dtd-4.1.2-$(V)
	$(CP) $(S)/4.1.2-xml/ent/* $(D)/usr/share/sgml/docbook/xml-dtd-4.1.2-$(V)/ent
	$(TOUCH) $(PROTO_DIR)/etc/sgml/xml-docbook-4.1.2-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.2-$(V)
	$(CP) $(S)/4.2-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.2-$(V)/catalog
	$(CP) $(S)/4.2-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.2-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.2-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/xml-dtd-4.2-$(V)/ent
	$(CP) $(S)/4.2-xml/docbook.cat $(D)/usr/share/sgml/docbook/xml-dtd-4.2-$(V)/catalog
	$(CP) $(S)/4.2-xml/{*.dtd,*.mod} $(D)/usr/share/sgml/docbook/xml-dtd-4.2-$(V)
	$(CP) $(S)/4.2-xml/ent/* $(D)/usr/share/sgml/docbook/xml-dtd-4.2-$(V)/ent
	$(TOUCH) $(PROTO_DIR)/etc/sgml/xml-docbook-4.2-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.3-$(V)
	$(CP) $(S)/4.3-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.3-$(V)/catalog
	$(CP) $(S)/4.3-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.3-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.3-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/xml-dtd-4.3-$(V)/ent
	$(CP) $(S)/4.3-xml/docbook.cat $(D)/usr/share/sgml/docbook/xml-dtd-4.3-$(V)/catalog
	$(CP) $(S)/4.3-xml/{*.dtd,*.mod} $(D)/usr/share/sgml/docbook/xml-dtd-4.3-$(V)
	$(CP) $(S)/4.3-xml/ent/* $(D)/usr/share/sgml/docbook/xml-dtd-4.3-$(V)/ent
	$(TOUCH) $(PROTO_DIR)/etc/sgml/xml-docbook-4.3-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.4-$(V)
	$(CP) $(S)/4.4-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.4-$(V)/catalog
	$(CP) $(S)/4.4-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.4-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.4-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/xml-dtd-4.4-$(V)/ent
	$(CP) $(S)/4.4-xml/docbook.cat $(D)/usr/share/sgml/docbook/xml-dtd-4.4-$(V)/catalog
	$(CP) $(S)/4.4-xml/{*.dtd,*.mod} $(D)/usr/share/sgml/docbook/xml-dtd-4.4-$(V)
	$(CP) $(S)/4.4-xml/ent/* $(D)/usr/share/sgml/docbook/xml-dtd-4.4-$(V)/ent
	$(TOUCH) $(PROTO_DIR)/etc/sgml/xml-docbook-4.4-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/sgml-dtd-4.5-$(V)
	$(CP) $(S)/4.5-sgml/docbook.cat $(D)/usr/share/sgml/docbook/sgml-dtd-4.5-$(V)/catalog
	$(CP) $(S)/4.5-sgml/{*.dcl,*.dtd,*.mod} $(D)/usr/share/sgml/docbook/sgml-dtd-4.5-$(V)
	$(TOUCH) $(PROTO_DIR)/etc/sgml/sgml-docbook-4.5-$(V).cat

	$(MKDIR) $(D)/usr/share/sgml/docbook/xml-dtd-4.5-$(V)/ent
	$(CP) $(S)/4.5-xml/docbook.cat $(D)/usr/share/sgml/docbook/xml-dtd-4.5-$(V)/catalog
	$(CP) $(S)/4.5-xml/{*.dtd,*.mod} $(D)/usr/share/sgml/docbook/xml-dtd-4.5-$(V)
	$(CP) $(S)/4.5-xml/ent/* $(D)/usr/share/sgml/docbook/xml-dtd-4.5-$(V)/ent
	$(TOUCH) $(PROTO_DIR)/etc/sgml/xml-docbook-4.5-$(V).cat

	$(SYMLINK) sgml-docbook-4.5-$(V).cat $(PROTO_DIR)/etc/sgml/sgml-docbook.cat || true
	$(SYMLINK) xml-docbook-4.5-$(V).cat $(PROTO_DIR)/etc/sgml/xml-docbook.cat || true
	
	for i in 3.0 3.1 4.0 4.1 4.2 4.3 4.4 4.5; do \
		$(MKDIR) $(D)/usr/share/doc/docbook-dtds/$$i-sgml; \
		$(CP) $(S)/$$i-sgml/*.txt \
			$(D)/usr/share/doc/docbook-dtds/$$i-sgml 2>/dev/null || true; done
	$(CP) $(S)/3.1-sgml/ChangeLog $(D)/usr/share/doc/docbook-dtds/3.1-sgml
	$(CP) $(S)/4.1-sgml/ChangeLog $(D)/usr/share/doc/docbook-dtds/4.1-sgml

	for i in 4.1.2 4.2 4.3 4.4 4.5; do \
		$(MKDIR) $(D)/usr/share/doc/docbook-dtds/$$i-xml; \
		$(CP) $(S)/$$i-xml/*.txt \
			$(D)/usr/share/doc/docbook-dtds/$$i-xml 2>/dev/null || true; done

	$(CP) files/docbook-empty-catalog $(PROTO_DIR)/etc/xml
	$(CP) files/docbook-dtds-install.sh $(D)/usr/share/sgml/docbook
	$(CP) files/docbook-dtds-uninstall.sh $(D)/usr/share/sgml/docbook

	$(MKDIR) $(PROTO_DIR)/lib/svc/manifest/application/desktop-cache
	$(CP) files/docbook-dtds-update.xml $(PROTO_DIR)/lib/svc/manifest/application/desktop-cache
	$(MKDIR) $(PROTO_DIR)/lib/svc/method
	$(CP) files/docbook-dtds-update.sh $(PROTO_DIR)/lib/svc/method
