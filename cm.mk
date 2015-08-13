# Release name
PRODUCT_RELEASE_NAME := J608_PUBLIC

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/doogee/J608_PUBLIC/device_J608_PUBLIC.mk)

# Correct boot animation size for the screen
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := J608_PUBLIC
PRODUCT_NAME := cm_J608_PUBLIC
PRODUCT_BRAND := doogee
PRODUCT_MODEL := J608_PUBLIC
PRODUCT_MANUFACTURER := doogee
