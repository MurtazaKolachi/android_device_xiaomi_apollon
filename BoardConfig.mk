#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/apollo

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_apollo
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_apollo

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/apollo.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := apollo,apollopro

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Touch
SOONG_CONFIG_NAMESPACES += XIAOMI_TOUCH
SOONG_CONFIG_XIAOMI_TOUCH := HIGH_TOUCH_POLLING_PATH
SOONG_CONFIG_XIAOMI_TOUCH_HIGH_TOUCH_POLLING_PATH := /sys/devices/virtual/touch/touch_dev/bump_sample_rate 

# Inherit from the proprietary version
include vendor/xiaomi/apollo/BoardConfigVendor.mk
