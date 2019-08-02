JNI_PATH := $(call my-dir)


LOCAL_PATH := $(JNI_PATH)
include $(CLEAR_VARS)
LOCAL_SRC_FILES :=       \
        libfaac/aacquant.c      \
		libfaac/backpred.c      \
		libfaac/bitstream.c     \
		libfaac/channels.c      \
		libfaac/fft.c           \
		libfaac/filtbank.c      \
		libfaac/frame.c         \
		libfaac/huffman.c       \
		libfaac/ltp.c           \
		libfaac/midside.c       \
		libfaac/psychkni.c      \
		libfaac/tns.c           \
		libfaac/util.c

LOCAL_SRC_FILES += faac_core_jni.c
		
LOCAL_MODULE := libfaac
LOCAL_C_INCLUDES :=         \
    $(JNI_PATH)/libfaac           \
    $(JNI_PATH)/include
    
LOCAL_CFLAGS:= -DHAVE_CONFIG_H
LOCAL_LDFLAGS += -fPIC -llog
include $(BUILD_SHARED_LIBRARY)


