# Inherit AOSP device configuration for geefhd
$(call inherit-product, device/lge/geefhd_att_us/full_geefhd_att_us.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/geefhd

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_geefhd_att_us
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geefhd_att_us
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1920_1080.zip:system/media/bootanimation.zip
