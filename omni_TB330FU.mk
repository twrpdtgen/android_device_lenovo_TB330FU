#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB330FU device
$(call inherit-product, device/lenovo/TB330FU/device.mk)

PRODUCT_DEVICE := TB330FU
PRODUCT_NAME := omni_TB330FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB330FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_barley_row_wifi-user 12 SP1A.210812.016 18 release-keys"

BUILD_FINGERPRINT := Lenovo/TB330FU/TB330FU:12/SP1A.210812.016/_231020_ROW:user/release-keys
