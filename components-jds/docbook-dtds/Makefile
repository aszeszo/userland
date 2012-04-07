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

COMPONENT_ARCHIVE_1=		docbk30.zip
COMPONENT_ARCHIVE_HASH_1=	sha1:83b22b248ed17e686df3a04494ac696b9710e5af
COMPONENT_ARCHIVE_URL_1=	http://www.oasis-open.org/docbook/sgml/3.0/docbk30.zip

COMPONENT_ARCHIVE_2=		docbk31.zip
COMPONENT_ARCHIVE_HASH_2=	sha1:75a5bb4f17b17ff0f7dd1cc2db7112bad0fb89e6
COMPONENT_ARCHIVE_URL_2=	http://www.oasis-open.org/docbook/sgml/3.1/docbk31.zip

COMPONENT_ARCHIVE_3=		docbk40.zip
COMPONENT_ARCHIVE_HASH_3=	sha1:95f9c7d3d339d7d3889bd1f0dabaa6ca55445f26
COMPONENT_ARCHIVE_URL_3=	http://www.oasis-open.org/docbook/sgml/4.0/docbk40.zip

COMPONENT_ARCHIVE_4=		docbk41.zip
COMPONENT_ARCHIVE_HASH_4=	sha1:3009fcc364511d186da40e828bf0d5d1556c020e
COMPONENT_ARCHIVE_URL_4=	http://www.oasis-open.org/docbook/sgml/4.1/docbk41.zip

COMPONENT_ARCHIVE_5=		docbkx412.zip
COMPONENT_ARCHIVE_HASH_5=	sha1:b9ae7a41056bfaf885581812d60651b7b5531519
COMPONENT_ARCHIVE_URL_5=	http://www.oasis-open.org/docbook/xml/4.1.2/docbkx412.zip

COMPONENT_ARCHIVE_6=		docbook-4.2.zip
COMPONENT_ARCHIVE_HASH_6=	sha1:98afcae616ed24edb30e40baa4ddd8cd8731f2c7
COMPONENT_ARCHIVE_URL_6=	http://www.oasis-open.org/docbook/sgml/4.2/docbook-4.2.zip

COMPONENT_ARCHIVE_7=		docbook-xml-4.2.zip
COMPONENT_ARCHIVE_HASH_7=	sha1:5e3a35663cd028c5c5fbb959c3858fec2d7f8b9e
COMPONENT_ARCHIVE_URL_7=	http://www.oasis-open.org/docbook/xml/4.2/docbook-xml-4.2.zip

COMPONENT_ARCHIVE_8=		docbook-4.3.zip
COMPONENT_ARCHIVE_HASH_8=	sha1:c64759d07514a7ab4347b1fc03457664cdf98b3f
COMPONENT_ARCHIVE_URL_8=	http://www.docbook.org/sgml/4.3/docbook-4.3.zip

COMPONENT_ARCHIVE_9=		docbook-xml-4.3.zip
COMPONENT_ARCHIVE_HASH_9=	sha1:e79a59e9164c1013b8cc9f64f96f909a184ca016
COMPONENT_ARCHIVE_URL_9=	http://www.docbook.org/xml/4.3/docbook-xml-4.3.zip

COMPONENT_ARCHIVE_10=		docbook-4.4.zip
COMPONENT_ARCHIVE_HASH_10=	sha1:9a7343709c1f5093f93b234d04f3d7f440a84dd0
COMPONENT_ARCHIVE_URL_10=	http://www.docbook.org/sgml/4.4/docbook-4.4.zip

COMPONENT_ARCHIVE_11=		docbook-xml-4.4.zip
COMPONENT_ARCHIVE_HASH_11=	sha1:7c4d91c82ad3747e1b5600c91782758e5d91c22b
COMPONENT_ARCHIVE_URL_11=	http://www.docbook.org/xml/4.4/docbook-xml-4.4.zip

COMPONENT_ARCHIVE_12=		docbook-4.5.zip
OMPONENT_ARCHIVE_HASH_12=	sha1:5efeb22936ea30cdaf88053337de7966dfda02bd
COMPONENT_ARCHIVE_URL_12=	http://www.docbook.org/sgml/4.5/docbook-4.5.zip

COMPONENT_ARCHIVE_13=		docbook-xml-4.5.zip
OMPONENT_ARCHIVE_HASH_13=	sha1:b9124233b50668fb508773aa2b3ebc631d7c1620
COMPONENT_ARCHIVE_URL_13=	http://www.docbook.org/xml/4.5/docbook-xml-4.5.zip

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

CLEAN_PATHS += $(BUILD_DIR)

PKG_MACROS += V=$(COMPONENT_VERSION)-$(COMPONENT_RELEASE)

$(SOURCE_DIR)/.unpacked:	download Makefile $(PATCHES)
	$(RM) -r $(SOURCE_DIR)
	$(MKDIR) $(SOURCE_DIR)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/3.0-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_1)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/3.1-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_2)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.0-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_3)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.1-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_4)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.1.2-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_5)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.2-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_6)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.2-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_7)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.3-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_8)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.3-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_9)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.4-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_10)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.4-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_11)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.5-sgml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_12)
	$(UNPACK) $(UNPACK_ARGS) -r$(SOURCE_DIR)/4.5-xml $(USERLAND_ARCHIVES)$(COMPONENT_ARCHIVE_13)
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
