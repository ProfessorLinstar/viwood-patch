.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.super Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
.source "HdmiCecLocalDevicePlayback.java"


# static fields
.field static final STANDBY_AFTER_ACTIVE_SOURCE_LOST_DELAY_MS:J = 0x7530L

.field static final STANDBY_AFTER_HOTPLUG_OUT_DELAY_MS:J = 0x7530L


# instance fields
.field public mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

.field public mDelayedStandbyHandler:Landroid/os/Handler;

.field public mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

.field public mIsActiveSourceLostPopupLaunched:Z

.field protected mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

.field public mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDelayedStandbyHandler(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsActiveSourceLostPopupLaunched(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 2

    const/4 v0, 0x4

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 91
    invoke-static {}, Landroid/sysprop/HdmiProperties;->playback_device_action_on_routing_control()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    return-void
.end method

.method private launchDeviceDiscovery()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearDeviceInfoList()V

    .line 152
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;Z)V

    return-void
.end method


# virtual methods
.method public canGoToStandby()Z
    .locals 0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->isHeld()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 216
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 220
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    const-string v0, "HdmiCecLocalDevicePlayback#deviceSelect()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 225
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    .line 228
    :cond_3
    const-class v0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 232
    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->getTargetAddress()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_4

    :goto_0
    return-void

    .line 236
    :cond_4
    new-instance v0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;Z)V

    return-void
.end method

.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 754
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 755
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 756
    const-class v0, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 757
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 758
    const-class v0, Lcom/android/server/hdmi/RequestActiveSourceAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 759
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->clearDeviceInfoList()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    return-void
.end method

.method public dismissUiOnActiveSourceStatusRecovered()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.hdmi.action.ON_ACTIVE_SOURCE_RECOVERED_DISMISS_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 290
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    .line 291
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 766
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isActiveSource(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findAudioReceiverAddress()I
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public findKeyReceiverAddress()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActiveSourceHistory()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredAddress()I
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 189
    const-string/jumbo p0, "persist.sys.hdmi.addr.playback"

    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 409
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    if-nez v0, :cond_1

    .line 410
    const-string/jumbo v0, "persist.sys.hdmi.keep_awake"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    goto :goto_0

    .line 415
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$5;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$5;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    const/4 v0, 0x0

    .line 423
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No wakelock is used to keep the display on."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mWakeLock:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    return-object p0
.end method

.method public handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 640
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 641
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 642
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p0, -0x1

    return p0
.end method

.method public handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3

    .line 671
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 679
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    const-string v1, "HdmiCecLocalDevicePlayback#handleRoutingChangeAndInformation()"

    if-eq p1, v0, :cond_1

    .line 685
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(ILjava/lang/String;)V

    return-void

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-nez v0, :cond_2

    .line 692
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(ILjava/lang/String;)V

    .line 695
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->dismissUiOnActiveSourceStatusRecovered()V

    .line 696
    sget-object v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$7;->$SwitchMap$android$sysprop$HdmiProperties$playback_device_action_on_routing_control_values:[I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    invoke-virtual {v2}, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    :goto_0
    return-void

    .line 702
    :cond_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    return-void

    .line 698
    :cond_4
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setAndBroadcastActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)V

    return-void
.end method

.method public handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 650
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 651
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v1

    .line 653
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 660
    const-string p0, "HdmiCecLocalDevicePlayback"

    const-string p1, "<Routing Information> is ignored, it is pointing to the same physical address as the message sender"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 664
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->handleRoutingChangeAndInformation(ILcom/android/server/hdmi/HdmiCecMessage;)V

    return v2
.end method

.method public handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 6

    .line 543
    const-string v0, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 544
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    const-string/jumbo v2, "set_menu_language"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    .line 551
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    const-string v4, "US-ASCII"

    invoke-direct {v3, p1, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 553
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetMenuLanguage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    return v4

    .line 564
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 564
    invoke-static {p1, v2}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 567
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startSetMenuLanguageActivity(Ljava/util/Locale;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_0

    .line 577
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t handle <Set Menu Language> of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 580
    :goto_0
    const-string p1, "Can\'t handle <Set Menu Language>"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 609
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 611
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 615
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 616
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    :cond_1
    :goto_0
    return v2
.end method

.method public handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 626
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 627
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 628
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    .line 629
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 630
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 535
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 536
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->wakeUpIfActiveSource()V

    .line 537
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method

.method public isActiveSourceLostPopupLaunched()Z
    .locals 0

    .line 743
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    return p0
.end method

.method public onActiveSourceLost()V
    .locals 4

    .line 437
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 438
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->pauseActiveMediaSessions()V

    .line 439
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v1, "standby_now"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAddressAllocated(II)V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 108
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-nez p2, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p2

    .line 110
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v0

    const/16 v1, 0xf

    const-string v2, "HdmiCecLocalDevicePlayback#onAddressAllocated()"

    .line 109
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 114
    invoke-static {p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 118
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v0

    .line 119
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->buildAndSendSetOsdName(I)V

    .line 125
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p1

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    const/4 v0, 0x5

    .line 130
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    .line 129
    invoke-virtual {p1, p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->launchDeviceDiscovery()V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    return-void
.end method

.method public onHotplug(IZ)V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 244
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushAll()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    .line 251
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDevicesConnectedToPort(I)V

    .line 253
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;

    invoke-direct {p2, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyRunnable;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback-IA;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onInitializeCecComplete(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "power_control_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 379
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 382
    :cond_1
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$4;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public onStandby(ZILcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 298
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 299
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v3

    .line 305
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const v5, 0xffff

    const-string v6, "HdmiCecLocalDevicePlayback#onStandby()"

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void

    .line 311
    :cond_1
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;

    invoke-direct {v3, p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    if-eqz p1, :cond_2

    .line 318
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    .line 319
    invoke-static {p2, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 318
    invoke-virtual {p1, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    :cond_2
    const/16 p1, 0xf

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_2

    .line 362
    :cond_3
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 364
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 363
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 362
    invoke-virtual {p2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 328
    :cond_4
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p2

    const-string/jumbo p3, "power_control_mode"

    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string/jumbo p3, "to_tv"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo p3, "none"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p3, "broadcast"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :sswitch_3
    const-string/jumbo p3, "to_tv_and_audio_system"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    move v1, v0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    return-void

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 333
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 332
    invoke-virtual {p1, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 353
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 355
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 356
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    .line 354
    invoke-static {p2, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 353
    invoke-virtual {p1, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 347
    :pswitch_2
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 349
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    .line 348
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 347
    invoke-virtual {p2, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    .line 338
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    .line 339
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p2

    .line 338
    invoke-virtual {p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 341
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/4 p2, 0x5

    .line 342
    invoke-static {p0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 341
    invoke-virtual {p1, p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67f5ab87 -> :sswitch_3
        -0x607e173f -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x6968ec6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preprocessBufferedMessages(Ljava/util/List;)V
    .locals 3

    .line 716
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 719
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 720
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    const/16 v2, 0x86

    if-eq v1, v2, :cond_1

    .line 721
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    .line 722
    :cond_1
    const-class p1, Lcom/android/server/hdmi/ActiveSourceAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 723
    const-class p1, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 398
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->acquire()V

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->getWakeLock()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;->release()V

    return-void
.end method

.method public setIsActiveSourceLostPopupLaunched(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    return-void
.end method

.method public setPreferredAddress(I)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 197
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v0, "persist.sys.hdmi.addr.playback"

    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startHdmiCecActiveSourceLostActivity()V
    .locals 6

    .line 514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 517
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 519
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040287

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 518
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 522
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    .line 524
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 526
    :catch_0
    :try_start_1
    const-string p0, "HdmiCecLocalDevicePlayback"

    const-string v2, "Unable to start HdmiCecActiveSourceLostActivity"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    throw p0
.end method

.method public final startSetMenuLanguageActivity(Ljava/util/Locale;)V
    .locals 4

    .line 586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 588
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 589
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 590
    const-string v3, "android.hardware.hdmi.extra.LOCALE"

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x1040288

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 591
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 594
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 597
    :catch_0
    :try_start_1
    const-string p0, "HdmiCecLocalDevicePlayback"

    const-string/jumbo p1, "unable to start HdmiCecSetMenuLanguageActivity"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw p0
.end method
