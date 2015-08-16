$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/doogee/J608_PUBLIC/J608_PUBLIC-vendor.mk)

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/doogee/J608_PUBLIC/overlay

LOCAL_PATH := device/doogee/J608_PUBLIC
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel.img
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_TAGS += dalvilk.gc.type-precise

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6582

PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.primary.mt6582 \
    audio.usb.default \
    libaudio-resampler \
    audio_policy.default \
    tinymix

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx

PRODUCT_COPY_FILES += \
    device/doogee/J608_PUBLIC/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

PRODUCT_COPY_FILES += \
    device/doogee/J608_PUBLIC/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/doogee/J608_PUBLIC/root/fstab.mt6582:root/fstab.mt6582 \
    device/doogee/J608_PUBLIC/root/init.mt6582.rc:root/init.mt6582.rc \
    device/doogee/J608_PUBLIC/root/init.recovery.mt6582.rc:root/init.recovery.mt6582.rc \
    device/doogee/J608_PUBLIC/root/init.protect.rc:root/init.protect.rc \
    device/doogee/J608_PUBLIC/root/init.project.rc:root/init.project.rc \
    device/doogee/J608_PUBLIC/root/init.usb.rc:root/init.usb.rc \
    device/doogee/J608_PUBLIC/root/sbin/busybox:root/sbin/busybox \
    $(LOCAL_KERNEL):kernel.img 

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
   frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
   frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
   frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
   frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
   frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
   frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
   frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
   frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
   frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
   frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product, build/target/product/full.mk)

+PRODUCT_PROPERTY_OVERRIDES := \
   ro.mediatek.version.release=ALPS.KK1.MP1.V2.10 \
   ro.mediatek.platform=MT6582 \
   ro.mediatek.chip_ver=S01 \
   ro.mediatek.version.branch=KK1.MP1 \
   ro.mediatek.version.sdk=2 \
   persist.mtk.wcn.combo.chipid=-1

PRODUCT_NAME := full_J608_PUBLIC
PRODUCT_DEVICE := doogee

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
