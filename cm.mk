## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := hennessy

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/hennessy/device_hennessy.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hennessy
PRODUCT_NAME := cm_hennessy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 3
PRODUCT_MANUFACTURER := Xiaomi
