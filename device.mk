##************************************************************************##
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
##************************************************************************##
LOCAL_PATH := device/oplus/RMX2155L1

##** Soong namespaces **##
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

##** Shipping API level **##
PRODUCT_SHIPPING_API_LEVEL := 29
BOARD_SHIPPING_API_LEVEL := 29
BOARD_API_LEVEL := 29
SHIPPING_API_LEVEL := 29

##** HACK: Set vendor patch level **##
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

##** Enable updating of APEXes **##
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

##** Configure gsi_keys.mk **##
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

##** Property **##
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.rc,$(LOCAL_PATH)/recovery/root,recovery/root)

##** Partitions && Property **##
PRODUCT_USE_DYNAMIC_PARTITIONS := true

##** Health **##
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

##** fastbootd **##
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

##** HIDL **##
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \

##** USB **##
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0.vendor \
    android.hardware.usb@1.1.vendor \
    android.hardware.usb@1.2.vendor \
    android.hardware.usb@1.3.vendor \
    android.hardware.usb.gadget@1.0.vendor \
    android.hardware.usb.gadget@1.1.vendor

##** Vibrator **##
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek

##** Recovery **##
PRODUCT_PACKAGES += \
    init.recovery.mt6785.rc \
    init.recovery.service.rc \
    init.trustonic.rc \
    init.recovery.usb.rc \
    ueventd.rc \
    tee.rc \
    init.aging.rc

##** Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.mediatek-libperfmgr \
    android.hardware.power-V2-ndk_platform.vendor \
    android.hardware.power@1.2.vendor \
    libmtkperf_client_vendor \
    libmtkperf_client \
    vendor.mediatek.hardware.mtkpower@1.2-service.stub \
    vendor.mediatek.hardware.mtkpower@1.2.vendor

##** Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.frameworks.sensorservice@1.0.vendor \
    libsensorndkbridge

##** Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor \
    android.hardware.secure_element@1.1.vendor \
    android.hardware.secure_element@1.2.vendor

##** DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey

PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor \
    libprotobuf-cpp-lite-3.9.1-vendorcompat

##** Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0.vendor \
    android.hardware.graphics.allocator@3.0.vendor \
    android.hardware.graphics.allocator@4.0.vendor \
    android.hardware.graphics.common-V2-ndk_platform.vendor \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0-impl \
    libdrm.vendor \
    libdrm

##** Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.oplus

##** Keymaster **##
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.1.vendor \
    libkeymaster4.vendor:64 \
    libkeymaster4support.vendor:64 \
    libsoft_attestation_cert.vendor:64 

##** Gatekeeper **##
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.gatekeeper@1.0-impl 

##** Inherit the proprietary files **##
#$(call inherit-product, vendor/oplus/RMX2155L1/RMX2155L1-vendor.mk)
