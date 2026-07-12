.class public Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DetectTvSystemAudioModeSupportAction.java"


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

.field public mSendSetSystemAudioModeRetryCount:I


# direct methods
.method public static synthetic $r8$lambda$nYRA8LP6Gg0YOSexwv9N8fMZedg(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->lambda$sendSetSystemAudioMode$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 38
    iput-object p2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public final finishAction(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;->onResult(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setTvSystemAudioModeSupport(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public handleTimerEvent(I)V
    .locals 2

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 86
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    return-void

    .line 81
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    return-void
.end method

.method public final synthetic lambda$sendSetSystemAudioMode$0(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    :cond_0
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 51
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 52
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortFeatureOpcode(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_2

    .line 56
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAbortReason(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x12c

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->finishAction(Z)V

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method public sendSetSystemAudioMode()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public start()Z
    .locals 2

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->sendSetSystemAudioMode()V

    return v0
.end method
