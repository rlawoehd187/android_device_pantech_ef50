
# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Slim stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef50/full_ef50.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef50
PRODUCT_NAME := lineage_ef50
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega R3
PRODUCT_MANUFACTURER := Pantech

TARGET_DEVICE := ef50


