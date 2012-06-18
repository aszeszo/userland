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

COMPONENT_NAME=		driver-graphics-nvidia
COMPONENT_VERSION=	302.17
IPS_COMPONENT_VERSION=	0.302.17
COMPONENT_SRC=		NVIDIA-Solaris-x86-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).run
COMPONENT_ARCHIVE_HASH= \
	sha256:a188b1061fa641aea07f2031712cf48e9b603bb1f1a0321ef4723366911fc446
#COMPONENT_ARCHIVE_URL=	http://uk.download.nvidia.com/solaris/$(COMPONENT_VERSION)/NVIDIA-Solaris-x86-$(COMPONENT_VERSION).run
#COMPONENT_ARCHIVE_URL=	ftp://download.nvidia.com/solaris/$(COMPONENT_VERSION)/NVIDIA-Solaris-x86-$(COMPONENT_VERSION).run
#COMPONENT_ARCHIVE_URL=	http://download.nvidia.com/solaris/$(COMPONENT_VERSION)/NVIDIA-Solaris-x86-$(COMPONENT_VERSION).run
COMPONENT_ARCHIVE_URL=	http://us.download.nvidia.com/solaris/302.17/NVIDIA-Solaris-x86-302.17.run

include ../../make-rules/prep.mk
include ../../make-rules/ips.mk

$(SOURCE_DIR)/.unpacked: download Makefile $(PATCHES)
	$(RM) -r $(SOURCE_DIR)
	$(CHMOD) +x $(COMPONENT_ARCHIVE)
	$(SHELL) ./$(COMPONENT_ARCHIVE) -x
	$(TOUCH) $@

build: prep

install: build
	[ -d $(PROTO_DIR)/kernel/drv/amd64 ] || mkdir -p $(PROTO_DIR)/kernel/drv/amd64
	for i in kernel/drv/amd64/nvidia kernel/drv/nvidia kernel/drv/nvidia.conf; do \
	    cp $(SOURCE_DIR)/NVDAgraphicsr/reloc/$$i $(PROTO_DIR)/$$i; done
	ln -sf $(SOURCE_DIR)/NVDAgraphics/reloc $(PROTO_DIR)/usr

clean::
	[ -d $(BUILD_DIR) ] && rm -rf $(BUILD_DIR)
