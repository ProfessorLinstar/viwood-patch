.class public final Lcom/android/server/hdmi/SystemAudioActionFromTv;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromTv.java"


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    const-string p1, "SystemAudioActionFromTv"

    const-string p2, "Device type mismatch, stop the action."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->removeSystemAudioActionInProgress()V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    const/4 p0, 0x1

    return p0
.end method
