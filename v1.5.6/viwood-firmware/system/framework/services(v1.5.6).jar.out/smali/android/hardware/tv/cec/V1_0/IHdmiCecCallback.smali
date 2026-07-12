.class public interface abstract Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;
.super Ljava/lang/Object;
.source "IHdmiCecCallback.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onCecMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)V
.end method

.method public abstract onHotplugEvent(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
.end method
