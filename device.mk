    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml
# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280
TARGET_BOOTANIMATION_HALF_RES := true

# Network/Wifi packages
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

# System init .rc files
SYSTEM_INIT_RC_FILES := \
    $(LOCAL_PATH)/system/etc/init/batterysrv.rc \
    $(LOCAL_PATH)/system/etc/init/cp_diskserver.rc \
    $(LOCAL_PATH)/system/etc/init/engpc.rc \
    $(LOCAL_PATH)/system/etc/init/mediacodec.rc \
    $(LOCAL_PATH)/system/etc/init/mediaserver.rc \
    $(LOCAL_PATH)/system/etc/init/modem_control.rc \
    $(LOCAL_PATH)/system/etc/init/modemd.rc \
    $(LOCAL_PATH)/system/etc/init/phoneserver.rc \
    $(LOCAL_PATH)/system/etc/init/prepare_param.rc \
    $(LOCAL_PATH)/system/etc/init/refnotify.rc \
    $(LOCAL_PATH)/system/etc/init/smd_symlink.rc \
    $(LOCAL_PATH)/system/etc/init/surfaceflinger.rc \
    $(LOCAL_PATH)/system/etc/init/wcnd.rc
# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/pskey_bt.txt:system/lib/modules/pskey_bt.txt \
    $(LOCAL_PATH)/configs/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf
# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl
# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images
# Codecs
PRODUCT_PACKAGES += \
	libstagefright_shim \
	libcolorformat_switcher \
	# libstagefrighthw \
	# libstagefright_sprd_soft_mpeg4dec \
	# libstagefright_sprd_soft_h264dec \
	# libstagefright_sprd_mpeg4dec \
	# libstagefright_sprd_mpeg4enc \
	# libstagefright_sprd_h264dec \
	# libstagefright_sprd_h264enc \
	# libstagefright_sprd_vpxdec \
	# libstagefright_soft_mjpgdec \
	# libstagefright_soft_imaadpcmdec \
	# libstagefright_sprd_mp3dec


# Graphics & HWC
PRODUCT_PACKAGES += \
		libHWCUtils \
		libGLES_mali.so \
		memtrack.sc8830 \
		gralloc.sc8830 \
		libdither \
		hwcomposer.sc8830 \
		sprd_gsp.sc8830 \
		libmemoryheapion \
		libion_sprd \
		libstagefright_shim \
		libgps_shim

PRODUCT_PACKAGES += \
		 libhealthd.sc8830 \
		 power.sc8830 \

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default \
	audio.a2dp.default \
	libbt-vendor

# Bluetooth
PRODUCT_PACKAGES += \
	libbluetooth_jni \
# Audio
PRODUCT_PACKAGES += \
	audio.primary.sc8830 \
	audio_policy.sc8830 \
	audio.r_submix.default \
	audio.usb.default \
	audio_vbc_eq \
	libatchannel_wrapper \
	libaudio-resampler \
	libtinyalsa \
	libeng-audio \
# Lights
PRODUCT_PACKAGES += \
    lights.sc8830

PRODUCT_PACKAGES += \
    libsprd_agps_agent

#trustzone
PRODUCT_PACKAGES += \
    libtrusty

# Camera HAL
#PRODUCT_PACKAGES += \
#    camera.sc8830

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
PRODUCT_COPY_FILES += \
    $(foreach f,$(PERMISSION_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Dalvik Heap config
include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk


# Inherit vendor proprietary blobs from Samsung extraction
$(call inherit-product-if-exists, vendor/samsung/gtexswifi/gtexswifi-vendor.mk)
