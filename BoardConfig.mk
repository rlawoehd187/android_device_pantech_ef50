# Copyright (C) 2014 The Android Open Source Project
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

PLATFORM_PATH := device/pantech/ef50

# Inherit from msm8960-common
-include device/pantech/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/pantech/ef50/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/pantech/msm8960
TARGET_KERNEL_CONFIG := LineageOS_ef50_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760 #10MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760 #10MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1468006400 #1.36GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12413025280 #11.6GB
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := ef50l,ef49k,ef48s,ef50

TARGET_BOOTANIMATION_HALF_RES := true

# Properties
TARGET_SYSTEM_PROP += $(PLATFORM_PATH)/system.prop

#init
TARGET_INIT_VENDOR_LIB := libinit_ef50
TARGET_RECOVERY_DEVICE_MODULES := libinit_ef50

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef50/bluetooth

#TWRP screen config
DEVICE_RESOLUTION := 720x1280
