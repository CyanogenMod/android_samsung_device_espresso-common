#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2015 SlimRoms
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

-include device/samsung/omap4-common/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_OMAP_CPU := 4430
TARGET_BOOTLOADER_BOARD_NAME := piranha

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/espresso10
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE :=

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 4096

# Egl
BOARD_EGL_CFG := device/samsung/espresso-common/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Camera
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_NO_APSME_ATTR              := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/espresso-common/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/espresso-common/bluetooth/vnd_espresso.txt

# Security
BOARD_USES_SECURE_SERVICES := true

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/espresso-common/selinux

BOARD_SEPOLICY_UNION += \
    file_contexts \
    file.te \
    device.te \
    domain.te \
    pvrsrvinit.te \
    rild.te \
    wpa_supplicant.te

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := device/samsung/espresso-common/rootdir/etc/fstab.tab2
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/espresso-common
RECOVERY_FSTAB_VERSION := 2

# Charging mode
BOARD_CHARGER_RES := device/samsung/espresso-common/res/charger
