LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),p710)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
