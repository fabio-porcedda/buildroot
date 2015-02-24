################################################################################
#
# popt
#
################################################################################

POPT_VERSION = 1.16
# rpm5.org down
POPT_SITE = http://anduin.linuxfromscratch.org/sources/BLFS/svn/p
POPT_INSTALL_STAGING = YES
POPT_LICENSE = MIT
POPT_LICENSE_FILES = COPYING
POPT_AUTORECONF = YES
POPT_GETTEXTIZE = YES

POPT_CONF_ENV = ac_cv_va_copy=yes

define POPT_POST_PATCH_FIX_PC
	$(SED) "s/Libs:/Libs.private: -lintl\nLibs:/" $(@D)/popt.pc.in
endef

ifeq ($(BR2_PACKAGE_LIBICONV),y)
POPT_CONF_ENV += am_cv_lib_iconv=yes
POPT_CONF_OPTS += --with-libiconv-prefix=$(STAGING_DIR)/usr
endif

ifeq ($(BR2_PACKAGE_GETTEXT),y)
 POPT_DEPENDENCIES += gettext
 POPT_POST_PATCH_HOOKS += POPT_POST_PATCH_FIX_PC
endif

$(eval $(autotools-package))
$(eval $(host-autotools-package))
