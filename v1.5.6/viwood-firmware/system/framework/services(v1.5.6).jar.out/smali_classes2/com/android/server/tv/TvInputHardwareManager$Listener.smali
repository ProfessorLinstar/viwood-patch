.class public interface abstract Lcom/android/server/tv/TvInputHardwareManager$Listener;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"


# virtual methods
.method public abstract onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
.end method

.method public abstract onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
.end method

.method public abstract onStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method
