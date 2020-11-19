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

# Version 3.4.0-4_ianmacd.

DEVICE_PATH := device/samsung/d2s

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := exynos9825
TARGET_BOOTLOADER_BOARD_NAME := universal9825
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image

BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos9825
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSC14B006RU

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g76

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 25500
TW_DEFAULT_BRIGHTNESS := 15300
TW_Y_OFFSET := 142
TW_H_OFFSET := -142
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_LEGACY_PROPS := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
PLATFORM_VERSION := 10
PLATFORM_SECURITY_PATCH := 2020-11-01
