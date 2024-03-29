SDL_NET_LOCAL_PATH := $(call my-dir)

include $(SDL_NET_LOCAL_PATH)/../SDL2-2.0.10/Android.mk
LOCAL_C_INCLUDES += $(SDL_NET_LOCAL_PATH)/../SDL2-2.0.10/include

# Restore local path
LOCAL_PATH := $(SDL_NET_LOCAL_PATH)
include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_net

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS :=

LOCAL_SRC_FILES := SDLnet.c SDLnetTCP.c SDLnetUDP.c SDLnetselect.c

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_EXPORT_C_INCLUDES += $(LOCAL_C_INCLUDES)

include $(BUILD_SHARED_LIBRARY)
