#
# Copyright (C) 2018 The LineageOS Project
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

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from fajita device
$(call inherit-product, device/oneplus/fajita/device.mk)

# Inherit some common BlissRoms stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/gapps/config.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_NAME := bliss_fajita
PRODUCT_DEVICE := fajita
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6013

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus6T \
    PRODUCT_NAME=OnePlus6T \
    PRIVATE_BUILD_DESC="OnePlus6T-user 9 PKQ1.180716.001 1812260627 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys
