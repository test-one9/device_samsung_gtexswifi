# Inherit from common
$(call inherit-product, device/samsung/gtexs-common/gtexs-common.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gtexswifi/overlay

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/gtexswifi/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Init scripts
PRODUCT_COPY_FILES += \
    device/samsung/gtexswifi/rootdir/init.recovery.gtexswifi.rc:root/init.recovery.gtexswifi.rc \
    device/samsung/gtexswifi/rootdir/init.gtexswifi.rc:root/init.gtexswifi.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Device identifier
PRODUCT_NAME := gtexswifi
PRODUCT_DEVICE := gtexswifi
PRODUCT_MODEL := SM-T280
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
