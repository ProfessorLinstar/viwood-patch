.class public interface abstract Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
.super Ljava/lang/Object;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onAntennaStateChange(Z)V
.end method

.method public abstract onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
.end method

.method public abstract onParametersUpdated(Ljava/util/ArrayList;)V
.end method

.method public abstract onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
.end method

.method public abstract onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
.end method
