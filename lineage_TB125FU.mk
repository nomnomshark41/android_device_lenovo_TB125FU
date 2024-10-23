#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from TB125FU device
$(call inherit-product, device/lenovo/TB125FU/device.mk)

PRODUCT_DEVICE := TB125FU
PRODUCT_NAME := lineage_TB125FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB125FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_P98980AA1-user 13 TP1A.220624.014 TB125FU_USR_S100155_2408121353_MP1RC_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB125FU/TB125FU:13/TP1A.220624.014/S100155_240812_ROW:user/release-keys
