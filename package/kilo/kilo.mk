################################################################################
#
# kilo
#
################################################################################

KILO_VERSION=af3919d68cb2e70a3d9a2309596cf290cf6bc1ac
KILO_SITE = $(call github,sysprog21,kilo,$(KILO_VERSION))
KILO_LICENSE = BSD 2-clause License

define KILO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CFLAGS+="$(TARGET_CFLAGS)" -C \
		$(@D) all
endef

define KILO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0775 -D $(@D)/kilo $(TARGET_DIR)/usr/bin/kilo
endef

$(eval $(generic-package))