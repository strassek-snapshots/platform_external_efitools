# derived from external/uefi_shim.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_KERNEL_ARCH),x86_64)
arch_name := x86_64
endif

ifeq ($(TARGET_KERNEL_ARCH),i386)
arch_name := x86
endif

include $(CLEAR_VARS)
LOCAL_MODULE := LockDown.efi
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/efi
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_SRC_FILES := ../../prebuilts/tools/linux-$(arch_name)/efitools/LockDown.efi
include $(BUILD_PREBUILT)

LOCKDOWN_EFI := $(PRODUCT_OUT)/efi/LockDown.efi

