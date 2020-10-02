################################################################################
#
# quectel_cm
#
################################################################################
QUECTEL_CM_VERSION = master
QUECTEL_CM_SITE = $(call github,sensiki,quectel-cm,$(QUECTEL_CM_VERSION))

define QUECTEL_CM_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) CROSS_COMPILE="$(TARGET_CROSS)"
endef

define QUECTEL_CM_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/quectel-CM $(TARGET_DIR)/usr/sbin/quectel-cm
endef

$(eval $(generic-package))
