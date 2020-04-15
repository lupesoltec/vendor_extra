# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/extra

# Default input method apps
PRODUCT_PACKAGES += \
    Gboard

# Mi Remote Controller
PRODUCT_PACKAGES += \
    MiRemoteController

# OPScreenRecorder
PRODUCT_PACKAGES += \
    OPScreenRecorder

# SemcMusic
PRODUCT_PACKAGES += \
    SemcMusic

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/com.sony.device.xml:system/etc/permissions/com.sony.device.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.sony.sysinfo.xml:system/etc/permissions/com.sony.sysinfo.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.sonyericsson.system.xml:system/etc/permissions/com.sonyericsson.system.xml \
    $(LOCAL_PATH)/system/framework/com.sony.device.jar:system/framework/com.sony.device.jar \
    $(LOCAL_PATH)/system/framework/com.sony.sysinfo.jar:system/framework/com.sony.sysinfo.jar \
    $(LOCAL_PATH)/system/framework/com.sonyericsson.system.jar:system/framework/com.sonyericsson.system.jar \

# Lawnchair
PRODUCT_PACKAGES += \
    Lawnchair

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    $(LOCAL_PATH)/system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Lawnchair

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/common

