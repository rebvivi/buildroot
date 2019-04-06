KILO_VERSION = 1.0
KILO_SITE = https://github.com/rebvivi/kilo.git

define KILO_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define KILO_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/kilo $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))