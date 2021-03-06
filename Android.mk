LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := src/com/andrew/apollo/IApolloService.aidl
LOCAL_SRC_FILES += $(call all-java-files-under, src)



LOCAL_STATIC_JAVA_LIBRARIES := \
    support-v4 \
    annotations-support \
    support-v7-appcompat \
    support-v7-gridlayout \
    support-v7-mediarouter \
    support-v13

LOCAL_PACKAGE_NAME := Apollo
LOCAL_OVERRIDES_PACKAGES := Music

LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := annotations-support:annotations.jar \
    support-v4:android-support-v4.jar \
    support-v7-appcompat:android-support-v7-appcompat.jar \
    support-v7-gridlayout:android-support-v7-gridlayout.jar \
    support-v7-mediarouter:android-support-v7-mediarouter.jar \
    support-v13:android-support-v13.jar

include $(BUILD_MULTI_PREBUILT)

