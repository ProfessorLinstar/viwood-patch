.class public interface abstract Lcom/android/server/tv/TvInputHal$Callback;
.super Ljava/lang/Object;
.source "TvInputHal.java"


# virtual methods
.method public abstract onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
.end method

.method public abstract onDeviceUnavailable(I)V
.end method

.method public abstract onFirstFrameCaptured(II)V
.end method

.method public abstract onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V
.end method

.method public abstract onTvMessage(IILandroid/os/Bundle;)V
.end method
