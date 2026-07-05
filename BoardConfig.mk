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
TARGET_KERNEL_CONFIG := gtexswifi_defconfig
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
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

# Connectivity (Broadcom/Spreadtrum integration)
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_WIFI := true
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

# SELinux State
BOARD_SEPOLICY_DIRS += device/samsung/gtexswifi/sepolicy
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Treble Compatibility Configuration
PRODUCT_FULL_TREBLE_OVERRIDE := false
# Legacy non-treble build due to kernel 3.10.108 restrictions

# TWRP & Custom Recovery compilation overrides
TARGET_RECOVERY_FSTAB := device/samsung/gtexswifi/fstab.gtexswifi
TARGET_USERIMAGES_USE_F2FS := true
