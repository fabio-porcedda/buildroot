################################################################################
#
# logrotate
#
################################################################################

LOGROTATE_VERSION = 3.8.9
LOGROTATE_SITE = https://www.fedorahosted.org/releases/l/o/logrotate
LOGROTATE_LICENSE = GPLv2+
LOGROTATE_LICENSE_FILES = COPYING

LOGROTATE_DEPENDENCIES = popt
LOGROTATE_AUTORECONF = YES

$(eval $(autotools-package))
