.class public interface abstract Landroid/hardware/broadcastradio/ITunerCallback;
.super Ljava/lang/Object;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 318
    const-string v2, "android$hardware$broadcastradio$ITunerCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/broadcastradio/ITunerCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onAntennaStateChange(Z)V
.end method

.method public abstract onConfigFlagUpdated(IZ)V
.end method

.method public abstract onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/ProgramInfo;)V
.end method

.method public abstract onParametersUpdated([Landroid/hardware/broadcastradio/VendorKeyValue;)V
.end method

.method public abstract onProgramListUpdated(Landroid/hardware/broadcastradio/ProgramListChunk;)V
.end method

.method public abstract onTuneFailed(ILandroid/hardware/broadcastradio/ProgramSelector;)V
.end method
