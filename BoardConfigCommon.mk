# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true
 
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

-include vendor/htc/sapphire/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

TARGET_BOOTLOADER_LIBS := \
	libboot_board_dream_sapphire \
	libboot_arch_msm7k \
	libboot_arch_armv6

TARGET_BOOTLOADER_LINK_SCRIPT := \
	hardware/msm7k/boot/boot.ld

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null

BOARD_USES_GENERIC_AUDIO := false

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := akm8976

BOARD_VENDOR_QCOM_AMSS_VERSION := 6220

#BOARD_USES_QCOM_HARDWARE := true

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_HARDWARE_3D := false

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/dream-sapphire/egl.cfg

BOARD_USE_HTC_LIBSENSORS := true

BOARD_USES_QCOM_LIBS := true

BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera
USE_CAMERA_STUB:= false

BOARD_USES_GPSSHIM := true

BOARD_GPS_NEEDS_XTRA := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_USE_LEGACY_TOUCHSCREEN := true

BOARD_NO_RGBX_8888 := true

WITH_DEXPREOPT := false

JS_ENGINE := v8

# Stagefright fully enabled
BUILD_WITH_FULL_STAGEFRIGHT := true

#Enable Cyanogen Bionic for use in busybox only
CYANOGEN_BIONIC := true

# No fallback font by default (space savings)
# NO_FALLBACK_FONT:=true

#Use busybox over toolbox
TINY_TOOLBOX := true

#Busybox sh is perfered over toolbox
SKIP_SH_BUILD_USE_BB := true

#libsurfaceflinger to avoid Draw Texture Extenstion
AVOID_DRAW_TEXTURE_EXTENSION := true

TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_htc

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

#WITH_DEXPREOPT := true

