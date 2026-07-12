.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .locals 2

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 157
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 164
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    new-instance v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isHdmiControlEnhancedBehaviorFlagEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 175
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    new-instance p1, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :cond_3
    return-void
.end method
