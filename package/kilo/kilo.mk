################################################################################
#
# kilo
#
################################################################################

KILO_SITE = https://github.com/sysprog21/kilo.git
KILO_SITE_METHOD = git
KILO_LICENSE = BSD 2-clause License

define KILO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CFLAGS+="$(TARGET_CFLAGS)" \
		LIBS="$(KILO_EXTRA_LIBS)"
endef

define KILO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0775 -D $(@D)/nano $(HOST_DIR)/usr/bin/nano
endef

$(eval $(generic-package))