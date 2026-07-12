.class public Lcom/android/server/hdmi/HdmiCecPowerStatusController;
.super Ljava/lang/Object;
.source "HdmiCecPowerStatusController.java"


# instance fields
.field public final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field public mPowerStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 36
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public getPowerStatus()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    return p0
.end method

.method public isPowerStatusOn()Z
    .locals 0

    .line 44
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPowerStatusStandby()Z
    .locals 1

    .line 48
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPowerStatusTransientToOn()Z
    .locals 1

    .line 52
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPowerStatusTransientToStandby()Z
    .locals 1

    .line 56
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sendReportPowerStatus(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 79
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 81
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    const/16 v3, 0xf

    .line 80
    invoke-static {v1, v3, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPowerStatus(I)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->setPowerStatus(IZ)V

    return-void
.end method

.method public setPowerStatus(IZ)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    if-eqz p2, :cond_1

    .line 71
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 72
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_1

    .line 73
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->sendReportPowerStatus(I)V

    :cond_1
    :goto_0
    return-void
.end method
