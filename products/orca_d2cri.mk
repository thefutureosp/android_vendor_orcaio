# Check for target product
ifeq (orca_d2cri,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_d2

# AOKP device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orcaio/overlay/aokp/device/d2-common

# Define Orca bootanimation size
ORCA_BOOTANIMATION_NAME := XHDPI

# include ORCA common configuration
include vendor/orcaio/config/orca_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/d2cri/cm.mk)

PRODUCT_NAME := orca_d2cri

# Update local_manifest.xml
GET_PROJECT_RMS := $(shell vendor/orca/tools/removeprojects.py $(PRODUCT_NAME))
GET_PROJECT_ADDS := $(shell vendor/orca/tools/addprojects.py $(PRODUCT_NAME))

endif