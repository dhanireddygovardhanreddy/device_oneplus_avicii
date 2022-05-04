#
# Copyright (C) 2021-2022 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common crystal stuff.
$(call inherit-product, vendor/crystal/config/common.mk)

# CrystalOS Properties
TARGET_USES_CUSTOM_AVB_KEY := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true


#Boot animation 
TARGET_BOOT_ANIMATION_RES := 1080

#Gapps
CRYSTAL_PURITY := GAPPS

PRODUCT_NAME := crystal_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2001
CUSTOM_DEVICE := Nord
CRYSTAL_MAINTAINER :=Squadgtx

PRODUCT_SYSTEM_NAME := Nord
PRODUCT_SYSTEM_DEVICE := Nord

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Nord \
    TARGET_PRODUCT=Nord
