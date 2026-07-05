    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Network/Wifi packages
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

# Graphics and Gralloc HAL packages
PRODUCT_PACKAGES += \
    gralloc.sc8830 \
    hwcomposer.sc8830 \
    libion

# Sensors and Peripheral packages
PRODUCT_PACKAGES += \
    sensors.gtexswifi

# GPS implementation
PRODUCT_PACKAGES += \
    gps.gtexswifi \
    libgps

# Camera implementation
PRODUCT_PACKAGES += \
    camera.gtexswifi \
    libcamera

# Memory Optimization (zRAM / KSM config)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.zram=true \
    ro.sys.fw.bg_apps_limit=12

# Load custom system properties from configurator
# Custom overrides
ro.config.low_ram=true
dalvik.vm.heaptargetutilization=0.75
dalvik.vm.heapstartsize=8m
dalvik.vm.heapgrowthlimit=128m
dalvik.vm.heapsize=256m


# Inherit vendor proprietary blobs from Samsung extraction
$(call inherit-product-if-exists, vendor/samsung/gtexswifi/gtexswifi-vendor.mk)
