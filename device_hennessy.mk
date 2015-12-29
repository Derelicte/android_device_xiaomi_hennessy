$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/hennessy/hennessy-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/hennessy/overlay
include $(call all-subdir-makefiles)
LOCAL_PATH := device/xiaomi/hennessy

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#Add cofface prop
PRODUCT_PROPERTY_OVERRIDES += \
  ro.weibo.com=weibo.com/cofface

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hennessy
PRODUCT_DEVICE := hennessy
