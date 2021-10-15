# SPDX-License-Identifier: AGPL-3.0-or-later

all: build-jars

include build.mk

build-jars:
	$(ANT) dist $(ANT_ARG_BUILDINFO)

install:
	mkdir -p $(INSTALL_DIR)/lib/ext/zimbraldaputils
	cp build/zm-ldap-utils-store-*.jar $(INSTALL_DIR)/lib/ext/zimbraldaputils/zimbraldaputils.jar

clean:
	rm -Rf build
