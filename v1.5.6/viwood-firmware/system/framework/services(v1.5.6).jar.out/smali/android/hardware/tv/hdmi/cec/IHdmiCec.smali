.class public interface abstract Landroid/hardware/tv/hdmi/cec/IHdmiCec;
.super Ljava/lang/Object;
.source "IHdmiCec.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 534
    const-string v2, "android$hardware$tv$hdmi$cec$IHdmiCec"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addLogicalAddress(B)B
.end method

.method public abstract clearLogicalAddress()V
.end method

.method public abstract enableAudioReturnChannel(IZ)V
.end method

.method public abstract enableCec(Z)V
.end method

.method public abstract enableSystemCecControl(Z)V
.end method

.method public abstract enableWakeupByOtp(Z)V
.end method

.method public abstract getCecVersion()I
.end method

.method public abstract getPhysicalAddress()I
.end method

.method public abstract getVendorId()I
.end method

.method public abstract sendMessage(Landroid/hardware/tv/hdmi/cec/CecMessage;)B
.end method

.method public abstract setCallback(Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method
