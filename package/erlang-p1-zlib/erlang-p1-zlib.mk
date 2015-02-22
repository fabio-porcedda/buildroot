################################################################################
#
# erlang-p1-zlib
#
################################################################################

ERLANG_P1_ZLIB_VERSION = a10356b28eff3ff7080e1559fd0e43c525993606
ERLANG_P1_ZLIB_SITE = $(call github,fabio-porcedda,zlib,$(ERLANG_P1_ZLIB_VERSION))
ERLANG_P1_ZLIB_LICENSE = GPLv2+
ERLANG_P1_ZLIB_LICENSE_FILES = COPYING
ERLANG_P1_ZLIB_DEPENDENCIES = zlib

$(eval $(rebar-package))
