.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDevicePlayback.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 4

    if-eqz p1, :cond_2

    .line 479
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 480
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-nez p1, :cond_1

    .line 495
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 496
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 497
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result p0

    const/16 v1, 0xf

    const-string v2, "RequestActiveSourceAction#RESULT_TIMEOUT"

    .line 495
    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    :cond_1
    return-void

    .line 482
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startHdmiCecActiveSourceLostActivity()V

    .line 483
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 485
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback-IA;)V

    const-wide/16 v2, 0x7530

    .line 486
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
