#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollon/device.mk)

# Bootanimation.
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
 
# Extras targets.
TARGET_DISABLE_LINEAGE_SDK := false
TARGET_DISABLE_EPPE := false
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_BUILD_DEVICE_AS_WEBCAM := false
TARGET_INCLUDE_ACCORD := false
TARGET_HAS_UDFPS := false
BUILD_BCR := true

PRODUCT_NAME := lineage_apollon
PRODUCT_DEVICE := apollon
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

# GMS
WITH_GMS := true
TARGET_USES_MINI_GAPPS := false
TARGET_USES_PICO_GAPPS := false
TARGET_SUPPORTS_QUICK_TAP := true
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="apollo_global-user 12 RKQ1.211001.001 V14.0.4.0.SJDMIXM release-keys" \
    BuildFingerprint=Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V14.0.4.0.SJDMIXM:user/release-keys
