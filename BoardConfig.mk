#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/huawei/u9500/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyGS2,115200n8 mem=1G vmalloc=768M omap_wdt.timer_margin=30 mmcparts=mmcblk0:p15(splash)


TARGET_PREBUILT_KERNEL := device/huawei/u9500/kernel

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap4
TARGET_BOOTLOADER_BOARD_NAME := u9500

BOARD_EGL_CFG := device/huawei/u9500/egl.cfg
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# device-specific extensions to the updater binary
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_u9500
#TARGET_RELEASETOOLS_EXTENSIONS := device/huawei/u9500

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6513754112
BOARD_FLASH_BLOCK_SIZE := 4096

#TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#BOARD_LIB_DUMPSTATE := libdumpstate.u9500

#BOARD_USES_SECURE_SERVICES := true

#recovery
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u9500/recovery_keys.c
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
DEVICE_RESOLUTION := 720x1280
#BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/share"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
TW_ALWAYS_RMRF := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
