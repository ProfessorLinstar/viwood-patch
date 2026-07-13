.class public Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "TvInputHardwareManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mConnections:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentIndex:I

.field public mCurrentMaxIndex:I

.field public final mHal:Lcom/android/server/tv/TvInputHal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHardwareInputIdMap:Landroid/util/SparseArray;

.field public final mHardwareList:Ljava/util/List;

.field public final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field public final mHdmiDeviceList:Ljava/util/List;

.field public final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field public final mHdmiInputIdMap:Landroid/util/SparseArray;

.field public final mHdmiParentInputMap:Ljava/util/Map;

.field public final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field public final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field public final mInputMap:Ljava/util/Map;

.field public final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingHdmiDeviceEvents:Ljava/util/List;

.field public final mPendingTvinputInfoEvents:Ljava/util/List;

.field public final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$mfdHR10UQyGUomMp8GNDbepfK2Q(ILandroid/os/Message;)Z
    .locals 0

    .line 254
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnections(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHardwareInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiDeviceList(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiStateMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingHdmiDeviceEvents(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindHardwareInfoForHdmiPortLocked(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMediaStreamVolume(Lcom/android/server/tv/TvInputHardwareManager;)F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleVolumeChange(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateVolume(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smintArrayContains([II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 102
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 105
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 107
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 110
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    .line 114
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 116
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 117
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 119
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 126
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 128
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 136
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .line 141
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    return-void
.end method

.method public static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 390
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 391
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static intArrayContains([II)Z
    .locals 4

    .line 399
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;IILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;
    .locals 5

    .line 474
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 478
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 481
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid deviceId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    move-object v4, p6

    .line 485
    new-instance p6, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {p6}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 486
    iput-object v4, p6, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 487
    iput p7, p6, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 488
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResourceClientProfileLocked()Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    move-result-object p7

    if-eqz p7, :cond_1

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {v0, p6, p7}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result p7

    if-nez p7, :cond_1

    .line 491
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Acquiring does not show higher priority than the current holder. Device id:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit v1

    return-object v3

    .line 495
    :cond_1
    new-instance p1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 496
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p7

    invoke-direct {p1, p0, p7}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :try_start_1
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p7, 0x0

    invoke-interface {p0, v2, p7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :try_start_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    move-object p0, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 500
    :catch_0
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 501
    monitor-exit v1

    return-object v3

    .line 506
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 6

    .line 346
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 349
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to override previous registration: old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 350
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 353
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingTvInputInfoEventsLocked()V

    .line 356
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tvinputinfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 361
    :goto_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 362
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 363
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 367
    :cond_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 368
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 372
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    xor-int/2addr p1, v4

    .line 375
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    monitor-exit v0

    return-void

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-eqz p1, :cond_4

    .line 383
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 384
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 383
    invoke-virtual {p0, v4, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 384
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 6

    .line 406
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 417
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to override previous registration: old = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 418
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 421
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    monitor-exit v0

    return-void

    .line 413
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") has invalid parentId."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 407
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "info ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") has non-HDMI type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final buildHardwareListLocked()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .locals 1

    .line 624
    iget-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 625
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result p5

    const/4 v0, 0x0

    if-gez p5, :cond_0

    .line 627
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid inputId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit p4

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 631
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 634
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 637
    invoke-virtual {p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 640
    :cond_1
    invoke-static {p5, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 642
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v0, p0, p5, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 649
    :cond_2
    monitor-exit p4

    return p2

    .line 651
    :cond_3
    monitor-exit p4

    return v0

    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .locals 0

    .line 339
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object p0

    .line 340
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 732
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 733
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 735
    :cond_0
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 736
    :try_start_0
    const-string p3, "TvInputHardwareManager Info:"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 738
    const-string p3, "mConnections: deviceId -> Connection"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 p3, 0x0

    move v0, p3

    .line 740
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 742
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 746
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 748
    const-string v0, "mHardwareList:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 750
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    .line 751
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 753
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 755
    const-string v0, "mHdmiDeviceList:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 757
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 758
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 760
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 762
    const-string v0, "mHardwareInputIdMap: deviceId -> inputId"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v0, p3

    .line 764
    :goto_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 765
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 766
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 769
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 771
    const-string v0, "mHdmiInputIdMap: id -> inputId"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 773
    :goto_4
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 774
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 778
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 780
    const-string p3, "mInputMap: inputId -> inputInfo"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 782
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 785
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 786
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 787
    monitor-exit p2

    return-void

    :goto_6
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 547
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 549
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 3

    .line 534
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 535
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .locals 4

    .line 561
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 563
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 565
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid inputId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 568
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p0, v0

    .line 570
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 571
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_2
    monitor-exit p3

    return-object p2

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHardwareInputIdMap()Landroid/util/SparseArray;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 303
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHdmiInputIdMap()Landroid/util/SparseArray;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHdmiParentInputMap()Ljava/util/Map;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInputMap()Ljava/util/Map;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 327
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getMediaStreamVolume()F
    .locals 1

    .line 728
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 714
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 705
    :cond_0
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 693
    :cond_1
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 697
    :cond_2
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 698
    iget p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    if-ne p1, p2, :cond_3

    :goto_0
    return-void

    .line 701
    :cond_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 717
    :cond_4
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 718
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_6

    .line 719
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 721
    invoke-virtual {p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    :cond_6
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 147
    const-string p1, "hdmi_control"

    .line 148
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 159
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v1, "Error registering listeners to HdmiControlService:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v0, "HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    :cond_1
    return-void
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 176
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 177
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    .line 178
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 180
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 182
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 185
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDeviceUnavailable(I)V
    .locals 9

    .line 198
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v2, :cond_0

    .line 201
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 204
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 207
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v0

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 212
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 213
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 219
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFirstFrameCaptured(II)V
    .locals 2

    .line 270
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez p0, :cond_0

    .line 273
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 279
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 282
    :cond_1
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v1, :cond_0

    .line 230
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 234
    :cond_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    .line 235
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v3

    .line 236
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 237
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 239
    invoke-virtual {v1, p3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 240
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    if-eq v3, p1, :cond_5

    .line 241
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 242
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 241
    invoke-virtual {p0, v5, p1, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    move p1, p3

    .line 246
    :goto_0
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, p3

    :goto_1
    if-eq p1, v2, :cond_5

    .line 247
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 248
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 247
    invoke-virtual {p0, v5, p1, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 252
    :cond_4
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 254
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    new-instance v3, Lcom/android/server/tv/TvInputHardwareManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/tv/TvInputHardwareManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 255
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_6

    .line 260
    :try_start_1
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 262
    :try_start_2
    sget-object p1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string p2, "error in onStreamConfigurationChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTvMessage(IILandroid/os/Bundle;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 294
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 295
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final processPendingHdmiDeviceEventsLocked()V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 659
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 661
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 664
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final processPendingTvInputInfoEventsLocked()V
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 674
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 675
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .locals 9

    .line 514
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v2, :cond_0

    .line 517
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid deviceId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 520
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object p1

    if-ne p1, p2, :cond_3

    .line 521
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 526
    invoke-interface {p0}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 528
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 529
    monitor-exit v1

    return-void

    .line 522
    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    .line 529
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 434
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 436
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 444
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPictureProfile(Ljava/lang/String;J)Z
    .locals 8

    .line 600
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 603
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid inputId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 609
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, p1, v5

    if-eqz v6, :cond_1

    .line 610
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 611
    invoke-virtual {v6, v1, v7, p2, p3}, Lcom/android/server/tv/TvInputHal;->setPictureProfile(ILandroid/media/tv/TvStreamConfig;J)I

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 615
    :cond_2
    monitor-exit v0

    return v6

    .line 616
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTvMessageEnabled(Ljava/lang/String;IZ)Z
    .locals 8

    .line 580
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 583
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid inputId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 587
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 589
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, p1, v5

    if-eqz v6, :cond_1

    .line 590
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 591
    invoke-virtual {v6, v1, v7, p2, p3}, Lcom/android/server/tv/TvInputHal;->setTvMessageEnabled(ILandroid/media/tv/TvStreamConfig;IZ)I

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 595
    :cond_2
    monitor-exit v0

    return v6

    .line 596
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateInputInfo(Landroid/media/tv/TvInputInfo;)V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 459
    :cond_0
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update inputInfo for input id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateVolume()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 686
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    return-void
.end method
