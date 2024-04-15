##************************************************************************##
# Copyright (C) 2024 Team Win Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
##************************************************************************##
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
