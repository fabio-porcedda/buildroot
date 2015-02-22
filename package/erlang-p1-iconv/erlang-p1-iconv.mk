################################################################################
#
# erlang-p1-iconv
#
################################################################################

ERLANG_P1_ICONV_VERSION = a16ac9b918626665e066534878eab7a878eea275
ERLANG_P1_ICONV_SITE = $(call github,processone,eiconv,$(ERLANG_P1_ICONV_VERSION))
ERLANG_P1_ICONV_LICENSE = GPLv2+
ERLANG_P1_ICONV_LICENSE_FILES = COPYING

ifeq ($(BR2_PACKAGE_LIBICONV),y)
ERLANG_P1_ICONV_DEPENDENCIES += libiconv
endif

ERLANG_P1_ICONV_USE_AUTOCONF = YES

$(eval $(rebar-package))
