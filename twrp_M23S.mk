#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from M23S device
$(call inherit-product, device/doogee/M23S/device.mk)

PRODUCT_DEVICE := M23S
PRODUCT_NAME := twrp_M23S
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := V31GT
PRODUCT_MANUFACTURER := doogee

PRODUCT_GMS_CLIENTID_BASE := android-doogee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6877v1_64_k419-user 12 SP1A.210812.016 1rck61v164bspP31 release-keys"

BUILD_FINGERPRINT := DOOGEE/M23S/M23S:12/SP1A.210812.016/1689299329:user/release-keys
