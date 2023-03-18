#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

PRODUCT_DEVICE := diting
PRODUCT_NAME := twrp_diting
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := diting
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diting-user 12 SKQ1.220303.001 V13.1.22.8.29.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/diting/diting:12/SKQ1.220303.001/V13.1.22.8.29.DEV:user/release-keys
