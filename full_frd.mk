#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from frd device
$(call inherit-product, device/honor/frd/device.mk)

# Vendor
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
     sys.usb.configfs=1 \
     sys.usb.config=mtp,adb \
     persist.sys.usb.config=manufacture,adb \
     sys.usb.controller=ff100000.dwc3
 
# Boot animation
 TARGET_SCREEN_HEIGHT := 1920
 TARGET_SCREEN_WIDTH := 1080

 PRODUCT_GMS_CLIENTID_BASE := android-huawei


# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_frd
PRODUCT_DEVICE := frd
PRODUCT_BRAND := Honor
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := HONOR-8
