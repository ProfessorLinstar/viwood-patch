.class public abstract Lcom/android/server/hdmi/HdmiCecFeatureAction;
.super Ljava/lang/Object;
.source "HdmiCecFeatureAction.java"


# instance fields
.field public mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

.field public final mCallbacks:Ljava/util/List;

.field public mOnFinishedCallbacks:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 78
    new-array v0, v0, [Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    return-void
.end method


# virtual methods
.method public final addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTimer(II)V
    .locals 2

    .line 182
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->sendTimerMessage(IJ)V

    return-void
.end method

.method public final audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    return-object p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 253
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    return-void
.end method

.method public final createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    .locals 1

    .line 176
    new-instance v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;-><init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V

    return-object v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 269
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/util/Pair;

    .line 270
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    iget v3, v3, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz v3, :cond_1

    .line 271
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method public finishWithCallback(I)V
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->invokeCallback(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method

.method public final getActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object p0

    return-object p0
.end method

.method public final getServicePath()I
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public final getSourceAddress()I
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    return p0
.end method

.method public final getSourcePath()I
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public abstract handleTimerEvent(I)V
.end method

.method public final invokeCallback(I)V
    .locals 1

    .line 332
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiCecFeatureAction"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p0
.end method

.method public final playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object p0
.end method

.method public final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIJ)V

    return-void
.end method

.method public final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIJ)V
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 242
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 241
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIIJ)V

    return-void
.end method

.method public abstract processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
.end method

.method public final removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final removeAction(Ljava/lang/Class;)V
    .locals 1

    .line 226
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendUserControlPressedAndReleased(II)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    return-void
.end method

.method public setActionTimer(Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    return-void
.end method

.method public final source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    return-object p0
.end method

.method public abstract start()Z
.end method

.method public started()Z
    .locals 0

    .line 186
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object p0
.end method
