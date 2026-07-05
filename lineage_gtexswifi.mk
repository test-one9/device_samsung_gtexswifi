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

# Inherit from standard tablet core
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Lineage common configurations
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configurations
$(call inherit-product, device/samsung/gtexswifi/device.mk)

# Device naming specifications
PRODUCT_NAME := lineage_gtexswifi
PRODUCT_DEVICE := gtexswifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T280

# Build fingerprint (based on Samsung stock 5.1.1 but modified for Oreo signature)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gtexswifi \
    TARGET_DEVICE=gtexswifi \
    BUILD_FINGERPRINT="samsung/gtexswifixx/gtexswifi:5.1.1/LMY47V/T280XXU0AQG1:user/release-keys" \
    PRIVATE_BUILD_DESC="gtexswifi-user 5.1.1 LMY47V T280XXU0AQG1 release-keys"
