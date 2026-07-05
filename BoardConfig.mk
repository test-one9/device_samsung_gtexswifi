#
# Copyright (C) 2026 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_BOARD_PLATFORM := sc8830
TARGET_BOOTLOADER_BOARD_NAME := sc8830

# CPU Architecture Configuration (Spreadtrum SC7730SW)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Kernel Configurations (Custom 3.10.108 Android Kernel)
TARGET_KERNEL_ARCH := arm
TARGET_PREBUILT_KERNEL := device/samsung/gtexswifi/kernel/zImage
TARGET_KERNEL_CONFIG := gtexswifi-dt_defconfig
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/gtexswifi/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.hardware=gtexswifi androidboot.selinux=permissive lpm_bootimg=vboot androidboot.bootdevice=soc.0/21900000.sdio

# Partition Sizes (SM-T280 Stock partition map)
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216         # 16 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216     # 16 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000     # 1.46 GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5368709120   # 5.00 GB
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456       # 256 MB
BOARD_FLASH_BLOCK_SIZE := 131072                   # 128 KB
TARGET_USERIMAGES_USE_EXT4 := true

# Audio Hardware Details
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINYALSA_AUDIO := true

# Graphics Stack (Mali-400MP2 on Legacy SC7730SW)
BOARD_EGL_CFG := device/samsung/gtexswifi/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MALI_GRALLOC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USES_LEGACY_MMAP := true
# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
# Enable WEBGL in WebKit
ENABLE_WEBGL := true
# Camera
#zsl capture
TARGET_BOARD_CAMERA_CAPTURE_MODE := false

#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false

#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false

#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false

# camera sensor type  #S5K4ECGA  #SR259
CAMERA_SENSOR_TYPE_BACK := "s5k4ecgx_mipi"
CAMERA_SENSOR_TYPE_FRONT := "sr352_mipi"

# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 5M
FRONT_CAMERA_SUPPORT_SIZE := 2M

TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false

#read otp method 1:from kernel 0:from user
TARGET_BOARD_CAMERA_READOTP_METHOD := 1

#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := false

#sensor interface
TARGET_BOARD_BACK_CAMERA_INTERFACE := mipi
TARGET_BOARD_FRONT_CAMERA_INTERFACE := mipi

#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := true

#select camera zsl force cap mode
TARGET_BOARD_CAMERA_FORCE_ZSL_MODE := true

#sprd zsl feature
TARGET_BOARD_CAMERA_SPRD_PRIVATE_ZSL := true

#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false

#select camera support autofocus
TARGET_BOARD_CAMERA_AUTOFOCUS := true

TARGET_BOARD_CAMERA_FACE_BEAUTY := false

#uv denoise enable
TARGET_BOARD_CAMERA_CAPTURE_DENOISE := false

#y denoise enable
TARGET_BOARD_CAMERA_Y_DENOISE := true

#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true

TARGET_BOARD_CAMERA_NO_FLASH_DEV := true

#image angle in different project
TARGET_BOARD_CAMERA_ADAPTER_IMAGE := 0

#pre_allocate capture memory
TARGET_BOARD_CAMERA_PRE_ALLOC_CAPTURE_MEM := true

#sc8830g isp ver 0;sc9630 isp ver 1;sp9832a_2h11 isp version 2
TARGET_BOARD_CAMERA_ISP_SOFTWARE_VERSION := 2

TARGET_BOARD_CAMERA_ISP_AE_VERSION := 0

#set hal version to 1.0
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0

TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AWB_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := false
TARGET_BOARD_USE_THIRD_AF_LIB_A := true

TARGET_VCM_BU64241GWZ := true

#support auto anti-flicker
TARGET_BOARD_CAMERA_ANTI_FLICKER := true

#multi cap memory mode
TARGET_BOARD_MULTI_CAP_MEM := true

#low capture memory
TARGET_BOARD_LOW_CAPTURE_MEM := true

#select mipi d-phy mode(none, phya, phyb, phyab)
TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
TARGET_BOARD_BACK_CAMERA_MIPI := phya

#select ccir pclk src(source0, source1)
TARGET_BOARD_FRONT_CAMERA_CCIR_PCLK := source0
TARGET_BOARD_BACK_CAMERA_CCIR_PCLK := source0

# misc
TARGET_HAS_BACKLIT_KEYS := false

# System properties
TARGET_SYSTEM_PROP += device/samsung/gtexswifi/system.prop

# Use dmalloc() for such low memory devices like us
MALLOC_SVELTE := true
BOARD_USES_LEGACY_MMAP := true

# Bionic
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true



# Connectivity (Broadcom/Spreadtrum integration)
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_WIFI := true
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

TARGET_KERNEL_MODULES := SPRDWL_MODULE

SPRDWL_MODULE:
	mv $(KERNEL_OUT)/drivers/net/wireless/sc2331/sprdwl.ko $(KERNEL_MODULES_OUT)

TARGET_RECOVERY_FSTAB = device/samsung/gtexswifi/rootdir/recovery.fstab
LZMA_RAMDISK_TARGETS := recovery
# SELinux State
#BOARD_SEPOLICY_DIRS += device/samsung/gtexswifi/sepolicy
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Treble Compatibility Configuration
PRODUCT_FULL_TREBLE_OVERRIDE := false
# Legacy non-treble build due to kernel 3.10.108 restrictions

# TWRP & Custom Recovery compilation overrides
TARGET_RECOVERY_FSTAB := device/samsung/gtexswifi/fstab.gtexswifi
TARGET_USERIMAGES_USE_F2FS := true
