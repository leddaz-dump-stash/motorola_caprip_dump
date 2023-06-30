#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from caprip device
$(call inherit-product, device/motorola/caprip/device.mk)

PRODUCT_DEVICE := caprip
PRODUCT_NAME := lineage_caprip
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(30)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="caprip_retail-user 11 S0RCS32.41-10-19-14 ab266e release-keys"

BUILD_FINGERPRINT := motorola/caprip_retail/caprip:11/S0RCS32.41-10-19-14/ab266e:user/release-keys
