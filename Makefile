# KSCT Installer
# License: 3-clause BSD
# Copyright (c) 2024 Radio New Japan Broadcasting Club

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

all:
	printf "Run 'make install' to install KSCT.\n"

install:
	install -vDm 755 ksct -t "$(BIN_DIR)/"

uninstall:
	rm -rf "$(BIN_DIR)/ksct"

.PHONY: check install uninstall
