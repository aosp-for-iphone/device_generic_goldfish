LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_C_INCLUDES += hardware/libhardware/include
LOCAL_CFLAGS := -Wconversion -Wall -Werror -Wno-sign-conversion
LOCAL_CLANG  := true
LOCAL_SHARED_LIBRARIES := liblog libhardware
LOCAL_SRC_FILES := memtrack_dummy.c
LOCAL_MODULE := memtrack.ranchu
include $(BUILD_SHARED_LIBRARY)
