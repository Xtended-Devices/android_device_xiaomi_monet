#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Include firmware
$(call inherit-product, vendor/xiaomi-firmware/monet/firmware.mk)

# MIUI Camera
$(call inherit-product, vendor/xiaomi/monet-miuicamera/products/miuicamera.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := xtended_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true


# Xtended Stuffs
XTENDED_BUILD_MAINTAINER := alecchangod
XTENDED_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
XTENDED_BUILD_DONATE_URL := https://www.paypal.com/paypalme/Alec174

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230605.012/10204971:user/release-keys
