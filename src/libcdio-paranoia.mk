# This file is part of MXE.
# See index.html for further information.

PKG             := libcdio-paranoia
$(PKG)_IGNORE   :=
$(PKG)_VERSION  := 10.2+0.93+1
$(PKG)_CHECKSUM := 7cc0a2b5ce5525f102bc4c15db1fac322559a493
$(PKG)_FILE     := $(PKG)-$($(PKG)_VERSION).tar.bz2
$(PKG)_SUBDIR   := $(PKG)-$($(PKG)_VERSION)
$(PKG)_URL      := http://ftp.gnu.org/gnu/libcdio/$(PKG)-$($(PKG)_VERSION).tar.bz2
$(PKG)_DEPS     := gcc libcdio

define $(PKG)_UPDATE
    echo 'TODO: Updates for package libcdio-paranoia need to be written.' >&2;
    echo $(libcdio-paranoia_VERSION)
endef

define $(PKG)_BUILD
    cd '$(1)' && ./configure \
        $(MXE_CONFIGURE_OPTS)
    $(MAKE) -C '$(1)' -j 1 install
endef
