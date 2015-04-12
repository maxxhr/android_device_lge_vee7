# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p710/p710.mk)

# Release name
PRODUCT_RELEASE_NAME := NeutronCM10

# Correct boot animation size for the screen.
TARGET_BOOTANIMATION_NAME := vertical-480x800

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p710
PRODUCT_NAME := cm_p710
PRODUCT_BRAND := lge
PRODUCT_MODEL := p710
PRODUCT_MANUFACTURER := lge


