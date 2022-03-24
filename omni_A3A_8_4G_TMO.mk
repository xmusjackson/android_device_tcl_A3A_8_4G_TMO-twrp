#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from A3A_8_4G_TMO device
$(call inherit-product, device/tcl/A3A_8_4G_TMO/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A3A_8_4G_TMO
PRODUCT_NAME := omni_A3A_8_4G_TMO
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 9027W
PRODUCT_MANUFACTURER := tcl

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.vendor.build.security_patch=2025-12-31

PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true \
