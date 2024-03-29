#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/monet/monet-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    XtendedFrameworksResCommon

# Board
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := sm7250

# Screen density
TARGET_SCREEN_DENSITY := 440

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# UDFPS
TARGET_HAS_UDFPS := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from sm7250-common
$(call inherit-product, device/xiaomi/sm7250-common/lito.mk)

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# SoC
PROCESSOR_MODEL := SM7250

