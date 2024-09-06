#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common euclid stuff.
$(call inherit-product, vendor/aurora/config/common_full_phone.mk)


PRODUCT_NAME := aurora_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := google/husky/husky:14/AP2A.240705.005/11942872:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="husky-user 14 AP2A.240705.005 11942872 release-keys"

#Euclid official stuff
TARGET_BOOT_ANIMATION_RES := 1080
#Maintainer
AURORA_BUILD_TYPE := OFFICIAL

#Gapps
WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
