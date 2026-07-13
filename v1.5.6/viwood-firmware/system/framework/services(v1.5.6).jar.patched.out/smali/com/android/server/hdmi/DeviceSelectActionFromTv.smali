.class public final Lcom/android/server/hdmi/DeviceSelectActionFromTv;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectActionFromTv.java"


# static fields
.field static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field static final STATE_WAIT_FOR_POWER_STATE_CHANGE:I = 0x4

.field static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 93
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result p2

    .line 94
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 96
    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/16 v2, 0x1388

    const/4 v3, 0x3

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 177
    :cond_0
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 178
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 179
    invoke-virtual {p0, v4, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_0
    return v1

    .line 194
    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    const/16 v0, 0x14

    if-ge p1, v0, :cond_3

    .line 195
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 196
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_1
    return v1

    .line 185
    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    if-nez p1, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->turnOnDevice()V

    .line 187
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 188
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_2

    .line 190
    :cond_5
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_2
    return v1

    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    goto :goto_3

    .line 173
    :cond_7
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    :goto_3
    return v1
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method private selectDevice()V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath()V

    :cond_0
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method

.method private sendSetStreamPath()V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    .line 253
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method public final checkForPowerStateChange()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public getTargetAddress()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0
.end method

.method public handleTimerEvent(I)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    .line 208
    const-string p0, "DeviceSelect"

    const-string p1, "Timer in a wrong state. Ignored."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->checkForPowerStateChange()V

    return-void

    .line 221
    :cond_2
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 222
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->queryDevicePowerStatus()V

    .line 223
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x6

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    .line 217
    :cond_4
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice()V

    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 150
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 155
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x90

    if-ne v0, v1, :cond_2

    .line 158
    aget-byte p1, p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->handleReportPowerStatus(I)Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method public start()Z
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath()V

    const/4 v0, 0x4

    .line 108
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final turnOnDevice()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendUserControlPressedAndReleased(II)V

    .line 236
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendUserControlPressedAndReleased(II)V

    :cond_0
    return-void
.end method
