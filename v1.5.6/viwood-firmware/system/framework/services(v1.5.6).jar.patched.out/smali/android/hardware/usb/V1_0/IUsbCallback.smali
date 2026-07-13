.class public interface abstract Landroid/hardware/usb/V1_0/IUsbCallback;
.super Ljava/lang/Object;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract notifyPortStatusChange(Ljava/util/ArrayList;I)V
.end method

.method public abstract notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
.end method
