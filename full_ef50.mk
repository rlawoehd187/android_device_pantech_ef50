#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/pantech/ef50/device.mk)

PRODUCT_DEVICE := ef50
PRODUCT_NAME := full_ef50
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := IM-A850
PRODUCT_MANUFACTURER := Pantech
PRODUCT_RESTRICT_VENDOR_FILES := false
#For some makefile on first run
TARGET_DEVICE := $(PRODUCT_DEVICE)

# specify phone type - needed by 2G toggle
PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1
