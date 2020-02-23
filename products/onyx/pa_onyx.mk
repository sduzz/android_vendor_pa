# Copyright (C) 2015-2017 Paranoid Android
# Copyright (C) 2020 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 1080

include device/qcom/common/common.mk
include vendor/pa/config/common_full_phone.mk

# Inherit AOSP device configuration
$(call inherit-product, device/oneplus/onyx/device.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_onyx
PRODUCT_DEVICE := onyx
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus \
    PRODUCT_NAME=OnePlus \
    PRIVATE_BUILD_DESC="OnePlus-user 6.0.1 MMB29M 10281213 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus/OnePlus:6.0.1/MMB29M/10281213:user/release-keys
