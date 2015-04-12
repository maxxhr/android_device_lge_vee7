

# inherit from the proprietary version
-include vendor/lge/p710/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH 					:= device/lge/p710/include

USE_CAMERA_STUB 								:= true

# Target info
TARGET_NO_BOOTLOADER  							:= true
TARGET_NO_RADIOIMAGE  							:= true

# Architecture and CPU
TARGET_BOARD_PLATFORM 							:= msm7x27a
TARGET_BOARD_PLATFORM_GPU 						:= qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME					:= p710

TARGET_ARCH 									:= arm
TARGET_ARCH_VARIANT 							:= armv7-a-neon
TARGET_CPU_VARIANT 								:= cortex-a9
					
TARGET_CPU_ABI 									:= armeabi-v7a
TARGET_CPU_ABI2 								:= armeabi


# Optimizations
TARGET_CPU_SMP 									:= true
ARCH_ARM_HAVE_TLS_REGISTER 						:= true
TARGET_ARCH_LOWMEM 								:= true
		
TARGET_CORTEX_CACHE_LINE_32 					:= true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES 				:= true
ARCH_ARM_HAVE_TLS_REGISTER 						:= true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION 			:= true

ARCH_ARM_HIGH_OPTIMIZATION 						:= true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT 				:= true

TARGET_GLOBAL_CFLAGS 							+= -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a9
TARGET_GLOBAL_CPPFLAGS 							+= -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a9

# Kernel
BOARD_KERNEL_BASE 								:= 0x00200000
BOARD_KERNEL_CMDLINE 							:= androidboot.hardware=P710N lge.signed_image=false
BOARD_MKBOOTIMG_ARGS 							:= --ramdisk_offset 0x01200000
BOARD_PAGE_SIZE 								:= 4096
TARGET_KERNEL_SOURCE 							:= kernel/lge/p710
TARGET_KERNEL_CONFIG 							:= cyanogenmod_p710_defconfig

# Graphics
TARGET_QCOM_DISPLAY_VARIANT 					:= legacy
BOARD_EGL_CFG 									:= device/lge/p710/egl.cfg
USE_OPENGL_RENDERER 							:= true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET 				:= true
	
# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE 						:= true
COMMON_GLOBAL_CFLAGS 							+= -DQCOM_HARDWARE -DQCOM_BSP
BOARD_USES_QCOM_LIBS 							:= true
TARGET_USES_ION 								:= true
TARGET_USES_QCOM_BSP 							:= true

BOARD_WANTS_EMMC_BOOT 							:= true

# GPS
BOARD_USES_QCOM_LIBRPC 							:= true
BOARD_USES_QCOM_GPS 							:= true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION 		:= 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE			:= $(TARGET_BOARD_PLATFORM)

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# FM Radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Light
TARGET_PROVIDES_LIBLIGHTS 						:= true

# Camera
COMMON_GLOBAL_CFLAGS 							+= -DMR0_CAMERA_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH 							:= true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR 	:= device/lge/p710/bluetooth

# Acceleration in browser
ENABLE_WEBGL 									:= true
WITH_JIT 										:= true
ENABLE_JSC_JIT 									:= true
JS_ENGINE 										:= v8
HTTP 											:= chrome
TARGET_FORCE_CPU_UPLOAD 						:= true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS 				:= true
TARGET_QCOM_MEDIA_VARIANT 						:= caf

# Wlan
BOARD_WLAN_DEVICE 								:= qcwcn
WIFI_EXT_MODULE_PATH 							:= /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH 						:= /system/lib/modules/wlan.ko
WIFI_EXT_MODULE_NAME 							:= librasdioif
WIFI_DRIVER_MODULE_NAME 						:= wlan
WPA_SUPPLICANT_VERSION 							:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 					:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 				:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER 							:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 						:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA 						:= "sta"
WIFI_DRIVER_FW_PATH_AP 							:= "ap"
WIFI_DRIVER_FW_PATH_PARAM 						:= "/data/misc/wifi/fwpath"
BOARD_LEGACY_NL80211_STA_EVENTS 				:= true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE					:= 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE 				:= 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE 				:= 1270874112
BOARD_USERDATAIMAGE_PARTITION_SIZE 				:= 1941962752
BOARD_FLASH_BLOCK_SIZE 							:= 131072
BOARD_VOLD_MAX_PARTITIONS 						:= 27
TARGET_USERIMAGES_USE_EXT4 						:= true

# Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH 				:= /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR 				:= true
BOARD_USE_USB_MASS_STORAGE_SWITCH 				:= true



