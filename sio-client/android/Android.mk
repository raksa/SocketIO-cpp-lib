LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE:= boost_system
LOCAL_SRC_FILES:= $(LOCAL_PATH)/../../boost/android/lib/libboost_system.a
include $(PREBUILT_STATIC_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE:= boost_random
LOCAL_SRC_FILES:= $(LOCAL_PATH)/../../boost/android/lib/libboost_random.a
include $(PREBUILT_STATIC_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE:= boost_date_time
LOCAL_SRC_FILES:= $(LOCAL_PATH)/../../boost/android/lib/libboost_date_time.a
include $(PREBUILT_STATIC_LIBRARY)

#------------------------------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE := sio_client_static

LOCAL_MODULE_FILENAME := libsioclient

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := ../src/sio_client.cpp \
					../src/sio_socket.cpp \
					../src/internal/sio_client_impl.cpp \
					../src/internal/sio_packet.cpp
					
							
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../boost \
					$(LOCAL_PATH)/../../rapidjson \
					$(LOCAL_PATH)/../../websocketpp \
					$(LOCAL_PATH)
					
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../src

LOCAL_CFLAGS := -fexceptions

LOCAL_STATIC_LIBRARIES := boost_system
LOCAL_STATIC_LIBRARIES += boost_random
LOCAL_STATIC_LIBRARIES += boost_date_time

include $(BUILD_STATIC_LIBRARY)