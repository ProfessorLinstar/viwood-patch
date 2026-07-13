.class public Lcom/android/server/hdmi/ArcTerminationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ArcTerminationActionFromAvr.java"


# direct methods
.method public static synthetic $r8$lambda$EJrSAd0M01hhjhFQmw6tUqDMPVE(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->lambda$sendTerminateArc$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final handleTerminateArcTimeout()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 105
    const-string v0, "handleTerminateArcTimeout"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method

.method public handleTimerEvent(I)V
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->handleTerminateArcTimeout()V

    return-void
.end method

.method public final synthetic lambda$sendTerminateArc$0(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 96
    :cond_0
    const-string p1, "Terminate ARC was not successfully sent."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_1
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 52
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    const/16 p1, 0xc2

    if-eq v0, p1, :cond_1

    return v1

    .line 66
    :cond_1
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v2

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xc5

    if-ne p1, v0, :cond_3

    .line 59
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    const/4 p1, 0x3

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v2

    :cond_3
    return v1
.end method

.method public sendTerminateArc()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .locals 2

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x3e8

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr;->sendTerminateArc()V

    return v0
.end method
