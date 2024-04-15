##******************************************##
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
##*****************************************##
##** Device Information **##
PRODUCT_DEVICE := RMX2155L1
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2155

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=RMX2155 \
    BUILD_PRODUCT=RMX2155L1 \
    TARGET_DEVICE=RMX2155L1 

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

##** Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

##** Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

##** Inherit from RMX2155L1 device **##
$(call inherit-product, device/oplus/RMX2155L1/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
##************************************************************************##
