################################################################################
#
# erlang-p1-iconv
#
################################################################################

ERLANG_P1_ICONV_VERSION = a5ca779e75e5c5d92ec944294c95bf2fb154210b
ERLANG_P1_ICONV_SITE = $(call github,fabio-porcedda,eiconv,$(ERLANG_P1_ICONV_VERSION))
ERLANG_P1_ICONV_LICENSE = GPLv2+
ERLANG_P1_ICONV_LICENSE_FILES = COPYING

ifeq ($(BR2_PACKAGE_LIBICONV),y)
ERLANG_P1_ICONV_DEPENDENCIES += libiconv
endif

ERLANG_P1_ICONV_USE_AUTOCONF = YES

$(eval $(rebar-package))
