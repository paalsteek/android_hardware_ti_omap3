LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    TIOMXPlugin.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
    $(ANDROID_BUILD_TOP)/frameworks/native/include/media/openmax \
    $(ANDROID_BUILD_TOP)/frameworks/native/include/media/hardware

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libutils  \
    libcutils \
    libui     \
    libdl     \
    libstagefright_foundation

LOCAL_MODULE := libstagefrighthw

include $(BUILD_SHARED_LIBRARY)

