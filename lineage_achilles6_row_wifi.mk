#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := achilles6_row_wifi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from achilles6_row_wifi device makefile
$(call inherit-product, device/lenovo/achilles6_row_wifi/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := achilles6_row_wifi
PRODUCT_NAME := lineage_achilles6_row_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Tab M10 FHD Plus 2nd Generation
PRODUCT_MANUFACTURER := Lenovo


## PLACEHOLDER ##
#BUILD_FINGERPRINT := "Redmi/begonia/begonia:9/PPR1.180610.011/V10.4.4.0.PGGCNXM:user/release-keys"
#
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="begonia-user 9 PPR1.180610.011 V10.4.4.0.PGGCNXM release-keys" \
#    PRODUCT_NAME="achilles6_row_wifi"