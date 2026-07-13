.class public abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestArcAction.java"


# instance fields
.field public final mAvrAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 46
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    :cond_0
    const-string p1, "RequestArcAction"

    const-string p3, "Device type mismatch, stop the action."

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    .line 50
    :cond_1
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    return-void
.end method


# virtual methods
.method public final disableArcTransmission()V
    .locals 4

    .line 59
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "[T] RequestArcAction."

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcAction;->disableArcTransmission()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_1
    :goto_0
    return-void
.end method
