# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

DERP_BUILDTYPE := Official
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)
$(call inherit-product, device/google/raviole/device-derp.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/calib_paths

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003 8671607 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.003/8671607:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
