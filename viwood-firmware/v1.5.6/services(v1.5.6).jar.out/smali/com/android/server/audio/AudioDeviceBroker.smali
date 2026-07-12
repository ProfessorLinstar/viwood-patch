.class public Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# static fields
.field public static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;

.field public static final VALID_COMMUNICATION_DEVICE_TYPES:[I

.field public static sLastDeviceConnectMsgTime:J

.field public static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field public mAccessibilityStrategyId:I

.field public mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field public mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBluetoothA2dpSuspendedApplied:Z

.field public mBluetoothA2dpSuspendedExt:Z

.field public mBluetoothA2dpSuspendedInt:Z

.field public final mBluetoothAudioStateLock:Ljava/lang/Object;

.field public mBluetoothLeSuspendedApplied:Z

.field public mBluetoothLeSuspendedExt:Z

.field public mBluetoothLeSuspendedInt:Z

.field public mBluetoothScoOn:Z

.field public mBluetoothScoOnApplied:Z

.field public mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field public mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

.field public final mBtHelper:Lcom/android/server/audio/BtHelper;

.field public final mCommDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mCommunicationDeviceLock:Ljava/lang/Object;

.field public mCommunicationDeviceUpdateCount:I

.field public final mCommunicationRouteClients:Ljava/util/LinkedList;

.field public mCommunicationStrategyId:I

.field public final mContext:Landroid/content/Context;

.field public mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mCurCommunicationPortId:I

.field public final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field public final mDeviceStateLock:Ljava/lang/Object;

.field public final mDuplexCommunicationDevices:Ljava/util/HashMap;

.field public final mModifyRateLock:Ljava/lang/Object;

.field public mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mSampleRateHD:Ljava/util/List;

.field public mSampleRateNormal:Ljava/util/List;

.field public final mScoManagedByAudio:Z

.field public mSendSpeakerOn:Z

.field public final mSetModeLock:Ljava/lang/Object;

.field public final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public static synthetic $r8$lambda$NuuXgpWv0cQMQbxhwMmp9JIoxUs(ILandroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 679
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$byBKOKNpI8Je1SWRlfdci7or4xA(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .locals 2

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothA2dpEnabled(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothAudioStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrokerEventWakeLock(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtHelper(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/BtHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommunicationDeviceLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceInventory(Lcom/android/server/audio/AudioDeviceBroker;)Lcom/android/server/audio/AudioDeviceInventory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStateLock(Lcom/android/server/audio/AudioDeviceBroker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScoManagedByAudio(Lcom/android/server/audio/AudioDeviceBroker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAudioModeOwner(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCommunicationDeviceUpdateCount(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckCommunicationRouteClientsDevices(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckMessagesMuteMusic(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitRoutingStrategyIds(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onReceiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSetForceUse(Lcom/android/server/audio/AudioDeviceBroker;IIZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreapplyAudioHalBluetoothState(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestedCommunicationDevice(Lcom/android/server/audio/AudioDeviceBroker;)Landroid/media/AudioDeviceAttributes;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCommunicationRoute(Lcom/android/server/audio/AudioDeviceBroker;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisMessageHandledUnderWakelock(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/16 v2, 0xb

    const/4 v3, 0x5

    const/16 v4, 0xe

    .line 578
    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    .line 2661
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    .line 2662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2663
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1d

    .line 2664
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2667
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x2
        0x7
        0x3
        0x16
        0x1
        0x4
        0x17
        0x1a
        0xb
        0x1b
        0x5
        0x9
        0x13
        0x15
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 221
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 132
    iput v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 135
    iput v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 159
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 162
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 170
    iput-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSendSpeakerOn:Z

    .line 174
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 200
    new-instance v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-direct {v3, v4, v4, v4}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 359
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 360
    iput v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 1161
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 1566
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 1571
    iput v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 2670
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2727
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    .line 3023
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x20000000

    .line 3024
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v3, -0x60000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x4

    .line 3025
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v3, -0x7ffffff0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v3, 0x4000000

    .line 3026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/high16 v3, -0x7e000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v3, 0x10

    .line 3027
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v3, -0x7ffffff8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v3, 0x20

    .line 3028
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v3, 0x40

    .line 3029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v14, v12

    move-object/from16 v16, v12

    .line 3024
    invoke-static/range {v5 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    .line 3479
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mModifyRateLock:Ljava/lang/Object;

    .line 3480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    .line 3481
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    .line 222
    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    .line 223
    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 224
    new-instance v2, Lcom/android/server/audio/BtHelper;

    invoke-direct {v2, v0, v1}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 225
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 226
    invoke-static {v1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    move-object/from16 v1, p3

    .line 227
    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 229
    iput-boolean v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 230
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->init()V

    return-void
.end method

.method public static createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .locals 8

    .line 1096
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBtDeviceInfo, profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/BtHelper;->getTypeFromProfile(IZ)I

    move-result v6

    .line 1100
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;III)V

    return-object v2
.end method

.method public static getAvailableCommunicationDevices()Ljava/util/List;
    .locals 6

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 669
    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 670
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 671
    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 672
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getProfileFromType(I)I
    .locals 1

    .line 3592
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_5

    const v0, 0x20000001

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x20000002

    if-ne p0, v0, :cond_2

    const/16 p0, 0x1a

    return p0

    .line 3599
    :cond_2
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_4

    const/16 p0, 0x15

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    const/16 p0, 0x16

    return p0
.end method

.method public static hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1

    .line 2673
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2674
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isMessageHandledUnderWakelock(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDeviceType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidCommunicationDeviceType(I)Z
    .locals 5

    .line 602
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static safeUidFromAttributionSource(Landroid/content/AttributionSource;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V
    .locals 0

    .line 3448
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method public final addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 7

    const/4 v0, 0x1

    .line 3169
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 3170
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)V

    .line 3172
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->registerDeathRecipient()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3173
    iget-object p0, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 3174
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3176
    iget-object p0, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3178
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result p0

    xor-int/2addr p0, v0

    iget-object p1, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3179
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isRecordingActiveForUid(I)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 3176
    invoke-virtual {v2, v1, p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 0

    .line 3427
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    return-void
.end method

.method public anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1546
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;
    .locals 2

    .line 864
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .locals 0

    .line 1901
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SystemServerAdapter;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V

    return-void
.end method

.method public final btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 1

    .line 1105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1106
    new-instance p1, Landroid/media/MediaMetrics$Item;

    const-string v0, "audio.device.queueOnBluetoothActiveDeviceChanged"

    invoke-direct {p1, v0}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1108
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object p3, p3, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 1109
    invoke-virtual {p3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1110
    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1111
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final checkCommunicationRouteClientsDevices()V
    .locals 8

    .line 3038
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 3039
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/high16 v4, 0x1000000

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 3052
    :cond_1
    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 3053
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 3054
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    goto :goto_1

    .line 3056
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3057
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3058
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3059
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3060
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    move-object v4, v6

    goto :goto_1

    :cond_3
    move-object v2, v4

    move-object v4, v5

    .line 3064
    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 3065
    invoke-virtual {v6, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    if-nez v4, :cond_4

    goto :goto_2

    .line 3067
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;

    move-result-object v5

    .line 3071
    :goto_2
    const-string v6, "AS.AudioDeviceBroker"

    if-eqz v2, :cond_6

    if-eqz v4, :cond_5

    if-eqz v5, :cond_6

    .line 3072
    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3075
    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3076
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3077
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDisabled(Z)V

    .line 3078
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_0

    .line 3079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCommunicationRouteClientsDevices, enabling client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3083
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3084
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setDisabled(Z)V

    .line 3085
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_0

    .line 3086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCommunicationRouteClientsDevices, disabling client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final checkMessagesMuteMusic(I)V
    .locals 4

    .line 2703
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2705
    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2706
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 2709
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 2717
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 2718
    const-string p0, "AS.AudioDeviceBroker"

    const-string p1, "ignore mute"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2721
    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eq v0, p1, :cond_3

    .line 2722
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    :cond_3
    return-void
.end method

.method public checkMusicActive(ILjava/lang/String;)V
    .locals 0

    .line 1657
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkMusicActive(ILjava/lang/String;)V

    return-void
.end method

.method public checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 0

    .line 1662
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method public clearA2dpSuspended(Z)V
    .locals 3

    .line 1355
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1356
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearA2dpSuspended, internalOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1359
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-nez p1, :cond_1

    .line 1361
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1363
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1364
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAvrcpAbsoluteVolumeSupported()V
    .locals 1

    const/4 v0, 0x0

    .line 1884
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    .line 1885
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    return-void
.end method

.method public clearLeAudioSuspended(Z)V
    .locals 3

    .line 1385
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1386
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLeAudioSuspended, internalOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1389
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-nez p1, :cond_1

    .line 1391
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1393
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1394
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearPreferredDevicesForCapturePresetSync(I)I
    .locals 0

    .line 1531
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePresetAndSave(I)I

    move-result p0

    return p0
.end method

.method public final communnicationDeviceHaCompatOn()Z
    .locals 2

    .line 3214
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final communnicationDeviceLeAudioCompatOn()Z
    .locals 3

    .line 3202
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-wide/32 v1, 0xe888487

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 3203
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchCommunicationDevice()V
    .locals 6

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1578
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSendSpeakerOn:Z

    if-nez v2, :cond_1

    return-void

    .line 1581
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSendSpeakerOn:Z

    .line 1582
    iput v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 1588
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothBleHeadsetActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    .line 1590
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothBleSpeakerActive()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1593
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService;->postBtCommDeviceActive(I)V

    .line 1599
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_5

    .line 1602
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ICommunicationDeviceDispatcher;

    .line 1603
    invoke-interface {v3, v0}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 1605
    const-string v4, "AS.AudioDeviceBroker"

    const-string v5, "dispatchCommunicationDevice error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1608
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchPreferredMixerAttributesChangedCausedByDeviceRemoved(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 3319
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 3321
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 3322
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result p1

    const/4 v1, 0x0

    .line 3319
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/audio/AudioService;->dispatchPreferredMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1905
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 1909
    :cond_0
    const-string v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Communication route clients:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Computed Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Applied Preferred communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Active communication device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v2, :cond_1

    const-string v2, "None"

    goto :goto_1

    .line 1924
    :cond_1
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1922
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCommunicationStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAccessibilityStrategyId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAudioModeOwner: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoManagedByAudio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth SCO on, requested: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", applied: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bluetooth A2DP suspended, requested ext: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", requested int: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", applied "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Bluetooth LE Audio suspended, requested ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1948
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;
    .locals 0

    .line 3438
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p0

    return-object p0
.end method

.method public getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I
    .locals 0

    .line 3454
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAudioModeOwnerMode()I
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    return p0
.end method

.method public getBluetoothA2dpEnabled()Z
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .locals 8

    .line 688
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 691
    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_1

    const-wide/16 v5, 0xbb8

    .line 693
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    sub-long v3, v5, v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 696
    :catch_0
    :try_start_2
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Interrupted while waiting for communication device update."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    .line 700
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "Timeout waiting for communication device update."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 702
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 706
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception p0

    .line 709
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 706
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public getCommunicationDeviceForClient()Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 746
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 749
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_0

    .line 750
    const-string v2, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCommunicationDeviceForClient, device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 754
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-static {v2, v1}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    goto :goto_1

    .line 756
    :cond_1
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_2

    .line 757
    const-string v1, "AS.AudioDeviceBroker"

    const-string v2, "getCommunicationDeviceForClient, updateActiveCommunicationDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 761
    :goto_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit v0

    return-object p0

    .line 762
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;
    .locals 3

    .line 714
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 715
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    .line 722
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 728
    invoke-static {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-nez p0, :cond_3

    .line 731
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p0, 0x0

    .line 733
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    :cond_3
    return-object p0
.end method

.method public final getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 679
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 680
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public final getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 2

    .line 3188
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 3189
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1406
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 4

    .line 3223
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->communnicationDeviceHaCompatOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3227
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->isSupportFakeHfp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 3230
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->communnicationDeviceLeAudioCompatOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3231
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 3233
    :cond_2
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v1, v1, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 3235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultCommunicationDevice, UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is older than SDK32:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget p0, p0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const-wide/32 v2, 0xe888487

    .line 3236
    invoke-static {v2, v3, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "device: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3235
    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public getDeviceForStream(I)I
    .locals 0

    .line 1628
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;
    .locals 1

    .line 3312
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3313
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;
    .locals 0

    .line 3588
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;
    .locals 1

    .line 2902
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 2903
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getImmutableDeviceInventory()Ljava/util/Collection;
    .locals 0

    .line 3423
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->getImmutableDeviceInventory()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 1893
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getLeAudioGroupAddresses(I)Ljava/util/List;
    .locals 0

    .line 1897
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getLeAudioGroupAddresses(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMaxVssVolumeForStream(I)I
    .locals 0

    .line 1624
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getMaxVssVolumeForStream(I)I

    move-result p0

    return p0
.end method

.method public getVolumeForDeviceIgnoreMute(II)I
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->getVolumeForDeviceIgnoreMute(II)I

    move-result p0

    return p0
.end method

.method public handleCancelFailureToConnectToBtHeadsetService()V
    .locals 1

    .line 1853
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z
    .locals 8

    .line 1832
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1833
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    .line 1835
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDeviceType(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    .line 1836
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1837
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    if-nez v4, :cond_1

    if-nez v7, :cond_2

    .line 1840
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object p2

    const-string p3, "handleDeviceConnection"

    .line 1839
    invoke-virtual {p0, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    .line 1844
    :cond_2
    monitor-exit v1

    return p1

    .line 1845
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleFailureToConnectToBtHeadsetService(I)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 1849
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public handleRecordingConfigurationChanged(IIILandroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 3485
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3488
    :cond_0
    invoke-virtual {p4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/16 p4, 0x1a

    if-ne p1, p4, :cond_1

    .line 3489
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleUpdate(Ljava/lang/Integer;II)V

    return-void

    .line 3491
    :cond_1
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    .line 3492
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 3493
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleStop(Ljava/lang/Integer;II)V

    return-void

    .line 3498
    :cond_4
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleStop(Ljava/lang/Integer;II)V

    return-void
.end method

.method public final handleStop(Ljava/lang/Integer;II)V
    .locals 2

    .line 3528
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3529
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz p0, :cond_5

    .line 3530
    const-string p0, "AS.AudioDeviceBroker"

    const-string p1, "handleStop, hd and normal record do not contain this uid"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3534
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModifyRateLock:Ljava/lang/Object;

    monitor-enter v0

    const v1, 0xbb80

    if-lt p2, v1, :cond_1

    .line 3536
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 3538
    :cond_1
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3540
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3544
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 3546
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleRecordingIdle()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result p2

    if-nez p2, :cond_4

    .line 3547
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 3548
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/mediatek/server/audio/AudioServiceExt;->stopBluetoothLeCgForRecord(Landroid/os/IBinder;I)Z

    goto :goto_2

    .line 3550
    :cond_3
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 3551
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    goto :goto_2

    .line 3554
    :cond_4
    const-string p2, "AS.AudioDeviceBroker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t stop cg, isBleRecordingIdle: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleRecordingIdle()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleRecordingIdle()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 3557
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :cond_5
    return-void

    .line 3540
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleUpdate(Ljava/lang/Integer;II)V
    .locals 2

    .line 3506
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3510
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3511
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 3512
    invoke-virtual {v0, v1, p3, p2}, Lcom/mediatek/server/audio/AudioServiceExt;->startBluetoothLeCgForRecord(Landroid/os/IBinder;II)V

    .line 3514
    :cond_1
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModifyRateLock:Ljava/lang/Object;

    monitor-enter p3

    const v0, 0xbb80

    if-lt p2, v0, :cond_2

    .line 3516
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3518
    :cond_2
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3520
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3521
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3522
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 3523
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    return-void

    .line 3520
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public hasAudioFocusUsers()Z
    .locals 0

    .line 1666
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasAudioFocusUsers()Z

    move-result p0

    return p0
.end method

.method public hasMediaDynamicPolicy()Z
    .locals 0

    .line 1649
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result p0

    return p0
.end method

.method public hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 1862
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1863
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final init()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setupMessaging(Landroid/content/Context;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initAudioHalBluetoothState()V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 274
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 276
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/audio/SystemServerAdapter;->registerUserStartedReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final initAudioHalBluetoothState()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1193
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 1194
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1195
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 1196
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    .line 1197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initRoutingStrategyIds()V
    .locals 4

    .line 251
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    .line 252
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 253
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 255
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    .line 260
    :cond_1
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    if-ne v3, v1, :cond_0

    const/16 v3, 0xa

    .line 261
    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isBleHDRecordActive()Z
    .locals 0

    .line 3576
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBleRecordingIdle()Z
    .locals 5

    .line 3564
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModifyRateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3566
    :goto_0
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 3567
    const-string v2, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBleRecordingIdle HD record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateHD:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Normal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSampleRateNormal:Ljava/util/List;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_1
    monitor-exit v0

    return v1

    .line 3571
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z
    .locals 0

    .line 3458
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothBleHeadsetActive()Z
    .locals 1

    const/16 v0, 0x1a

    .line 901
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothBleSpeakerActive()Z
    .locals 1

    const/16 v0, 0x1b

    .line 905
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isBluetoothScoActive()Z
    .locals 1

    const/4 v0, 0x7

    .line 897
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    const/4 v0, 0x7

    .line 893
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isBluetoothScoRequested()Z
    .locals 1

    const/4 v0, 0x7

    .line 854
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public final isDeviceActiveForCommunication(I)Z
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_0

    .line 833
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 911
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDeviceOnForCommunication(I)Z
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 818
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDeviceRequestedForCommunication(I)Z
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 802
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 803
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isInCommunication()Z
    .locals 0

    .line 1645
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result p0

    return p0
.end method

.method public isInbandRingingEnabled()Z
    .locals 0

    .line 3473
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->isInbandRingingEnabled()Z

    move-result p0

    return p0
.end method

.method public isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 0

    .line 3462
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p0

    return p0
.end method

.method public isScoManagedByAudio()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    return p0
.end method

.method public final isSpeakerphoneActive()Z
    .locals 1

    const/4 v0, 0x2

    .line 845
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    const/4 v0, 0x2

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceOnForCommunication(I)Z

    move-result p0

    return p0
.end method

.method public isSupportFakeHfp(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 3290
    const-string v1, "AS.AudioDeviceBroker"

    if-nez p1, :cond_1

    .line 3291
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz p0, :cond_0

    .line 3292
    const-string/jumbo p0, "isSupportFakeHfp, uid = 0"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    .line 3296
    :cond_1
    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->getDefaultAppAcceptList()Lcom/mediatek/bt/BluetoothAppAcceptList;

    move-result-object v2

    .line 3297
    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3298
    :cond_2
    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    .line 3300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 3299
    invoke-virtual {v2, p0}, Lcom/mediatek/bt/BluetoothAppAcceptList;->checkAppName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3301
    :cond_3
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz p0, :cond_4

    .line 3302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDefaultCommunicationDevice, isSupported: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    invoke-static {}, Lcom/mediatek/bt/BluetoothAppAcceptList;->isSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3302
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public messageMutesMusic(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x3

    .line 2687
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2689
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object p0

    .line 2688
    invoke-static {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker;->hasIntersection(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onAudioServerDied()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public onCheckCommunicationRouteClientState(IZ)V
    .locals 0

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    return-void
.end method

.method public final onCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 2835
    :cond_0
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Communication client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 2837
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v7

    const-string/jumbo v8, "onCommunicationRouteClientDied"

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p0

    .line 2836
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void
.end method

.method public onPersistAudioDeviceSettings()V
    .locals 6

    .line 3339
    const-string v0, "error saving AdiDeviceState: "

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->getDeviceSettings()Ljava/lang/String;

    move-result-object v1

    .line 3340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPersistAudioDeviceSettings AdiDeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    move-result-object v2

    .line 3342
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3345
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No settings adapter when saving AdiDeviceState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3351
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "audio_device_inventory"

    const/4 v5, -0x2

    invoke-virtual {v2, p0, v4, v1, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 3355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onReadAudioDeviceSettings()V
    .locals 8

    .line 3376
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    .line 3377
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3378
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    move-result-object v2

    .line 3379
    const-string v3, ""

    if-nez v2, :cond_3

    .line 3380
    const-string/jumbo v2, "reading AdiDeviceState from legacy keyspatial_audio_enabled"

    const-string v4, "AS.AudioDeviceBroker"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const-string/jumbo v2, "spatial_audio_enabled"

    const/4 v5, -0x2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/audio/SettingsAdapter;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 3388
    const-string/jumbo v0, "no AdiDeviceState stored with legacy key"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3389
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3391
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3395
    const-string v2, "cannot erase the legacy AdiDeviceState with key spatial_audio_enabled"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_1
    const-string v2, "audio_device_inventory"

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/android/server/audio/SettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3402
    const-string v0, "error updating the new AdiDeviceState with key audio_device_inventory"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move-object v2, v6

    :cond_3
    if-eqz v2, :cond_4

    .line 3408
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3409
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setDeviceSettings(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onReceiveBtEvent(Landroid/content/Intent;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onReceiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onSendBecomingNoisyIntent()V
    .locals 3

    .line 1978
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v2, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceBroker"

    .line 1979
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1978
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1980
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/SystemServerAdapter;->sendDeviceBecomingNoisyIntent()V

    return-void
.end method

.method public onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .locals 8

    .line 397
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetCommunicationDeviceForClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-nez v0, :cond_3

    .line 401
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    .line 402
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 407
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_3

    .line 409
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 410
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    :cond_2
    return-void

    .line 416
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :goto_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    iget-object v7, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void
.end method

.method public final onSetForceUse(IIZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1958
    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 1960
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1962
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.forceUse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "onSetForceUse"

    .line 1964
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 1965
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 1967
    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1966
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1968
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1970
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_1

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetForceUse(useCase<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">, config<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">, fromA2dp<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ">, eventSource<"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">)"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AS.AudioDeviceBroker"

    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getAudioModeOwner()Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 293
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->onSystemReady()V

    .line 294
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 294
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 295
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 10

    .line 3101
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    .line 3102
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_0

    .line 3103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCommunicationRouteClient, crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " previous BT SCO Requester UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->safeUidFromAttributionSource(Landroid/content/AttributionSource;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3103
    const-string v2, "AS.AudioDeviceBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 3109
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 3110
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v8

    move-object v3, p0

    move-object v9, p2

    .line 3109
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void

    :cond_1
    move-object v3, p0

    move-object v9, p2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, p0

    .line 3113
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 3114
    iget-boolean p2, v3, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-eqz p2, :cond_4

    .line 3115
    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3116
    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v9}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 3118
    :cond_3
    invoke-virtual {v3, p0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_1

    .line 3120
    :cond_4
    iget-object p0, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, v9}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 3123
    :cond_5
    :goto_1
    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 2

    .line 3130
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result v0

    .line 3131
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 3132
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 3133
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneActive()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    .line 3134
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSendSpeakerOn:Z

    .line 3136
    :try_start_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 3138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 3136
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioDeviceBroker"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchCommunicationDevice()V

    .line 3145
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postUpdateRingerModeServiceInt()V

    return-void
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .locals 0

    .line 1616
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->postAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method public postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 0

    .line 1632
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    return-void
.end method

.method public postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x2

    .line 1685
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x2

    .line 1432
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postBroadcastBecomingNoisy()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1681
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postBroadcastScoConnectionState(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1677
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x2

    .line 1698
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public postBtProfileDisconnected(I)V
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x2

    .line 1694
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postCheckCommunicationRouteClientState(IZI)V
    .locals 7

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v1, 0x38

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    .line 618
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgForCheckClientState(IIIILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public postCheckMessagesMuteMusic()V
    .locals 2

    .line 2697
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "postCheckMessagesMuteMusic() true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 2698
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    return-void
.end method

.method public postCommunicationRouteClientDied(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;)V
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x2

    .line 1702
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postHandleRecordingConfigurationChanged(Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;)V
    .locals 2

    const/16 v0, 0x73

    const/4 v1, 0x2

    .line 1561
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/16 v0, 0x34

    const/4 v1, 0x2

    .line 1732
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .locals 0

    .line 1641
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public postPersistAudioDeviceSettings()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const/16 v2, 0x36

    .line 3335
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsg(III)V

    return-void
.end method

.method public postReceiveBtEvent(Landroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x37

    const/4 v1, 0x2

    .line 1736
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postReportNewRoutes(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    :goto_0
    const/4 v0, 0x1

    .line 1857
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public postSetAvrcpAbsoluteVolumeIndex(I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 1414
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x2

    .line 1728
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetHearingAidVolumeIndex(II)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 1418
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendIIMsgNoDelay(IIII)V

    return-void
.end method

.method public postSetLeAudioVolumeIndex(III)V
    .locals 1

    .line 1422
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    const/16 p1, 0x2e

    const/4 p2, 0x0

    .line 1423
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetModeOwner(IIIZ)V
    .locals 1

    if-eqz p4, :cond_0

    const/16 p4, 0x11

    goto :goto_0

    :cond_0
    const/16 p4, 0x10

    .line 1427
    :goto_0
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    const/4 p1, 0x0

    invoke-virtual {p0, p4, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 0

    .line 1637
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    return-void
.end method

.method public postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V
    .locals 1

    const/4 v0, 0x2

    .line 1690
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x2

    .line 1745
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postUpdateCommunicationRoute(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x27

    const/4 v1, 0x2

    .line 1724
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 1

    .line 1718
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;-><init>(Landroid/content/AttributionSource;Ljava/lang/String;)V

    const/16 p1, 0x2b

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public postUpdateLeAudioGroupAddresses(I)V
    .locals 2

    const/16 v0, 0x39

    const/4 v1, 0x2

    .line 1740
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendIMsgNoDelay(III)V

    return-void
.end method

.method public postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 2

    const/16 v0, 0x3b

    const/4 v1, 0x2

    .line 1749
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsgNoDelay(IIILjava/lang/Object;)V

    return-void
.end method

.method public final preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 5

    .line 2851
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2852
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v0

    .line 2853
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioServiceExt;->isBleAudioFeatureSupported()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2855
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v0

    .line 2856
    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioServiceExt;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2861
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    .line 2862
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez v0, :cond_1

    .line 2863
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2864
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 2871
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 2876
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2878
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2880
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v1, :cond_4

    .line 2881
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    if-ne v1, v4, :cond_4

    goto :goto_2

    .line 2886
    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 2887
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p0

    .line 2888
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExt;->getLeAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-nez p0, :cond_6

    .line 2890
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz p0, :cond_5

    .line 2891
    const-string p0, "AS.AudioDeviceBroker"

    const-string/jumbo v0, "preferredCommunicationDevice, tbs device is null"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    :cond_6
    return-object v0

    :cond_7
    :goto_2
    return-object v2

    .line 2864
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 5

    .line 1120
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1121
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1125
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    .line 1126
    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1128
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1129
    :try_start_0
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    .line 1131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x2d

    if-eqz v2, :cond_1

    .line 1135
    const-string v4, "disconnected"

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1137
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    .line 1138
    invoke-static {p1, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v2

    .line 1137
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 1141
    :cond_1
    :goto_0
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 1142
    const-string v4, "connected"

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1143
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1144
    invoke-static {p1, v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    .line 1143
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1147
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final readDeviceSettings()Ljava/lang/String;
    .locals 3

    .line 3363
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    .line 3364
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3371
    :cond_0
    const-string v1, "audio_device_inventory"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/audio/SettingsAdapter;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3367
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string/jumbo v0, "readDeviceSettings_NPE"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "No settings adapter or content resolver to read device settings"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3369
    const-string p0, ""

    return-object p0
.end method

.method public final reapplyAudioHalBluetoothState()V
    .locals 4

    .line 1273
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reapplyAudioHalBluetoothState() mBluetoothScoOnApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothA2dpSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothLeSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string v1, "LeAudioSuspended=true"

    const-string v2, "BTAudiosuspend=true"

    const-string v3, "A2dpSuspended=true"

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isAospSuspendSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :cond_1
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1286
    :goto_0
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1287
    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1288
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1289
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    return-void

    .line 1291
    :cond_2
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isAospSuspendSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1293
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_3

    .line 1294
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1296
    :cond_3
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1299
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_5

    .line 1300
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1302
    :cond_5
    const-string v0, "BTAudiosuspend=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1305
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz p0, :cond_6

    .line 1306
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    .line 1308
    :cond_6
    const-string p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V
    .locals 0

    .line 1536
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V

    return-void
.end method

.method public registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V
    .locals 0

    .line 1517
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V
    .locals 0

    .line 1507
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V

    return-void
.end method

.method public final removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 3

    .line 3151
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 3152
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    .line 3154
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    .line 3156
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeMsgForCheckClientState(I)V

    .line 3157
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeDeviceAsNonDefaultForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .locals 0

    .line 1502
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->removeDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public final removeMsgForCheckClientState(I)V
    .locals 1

    .line 2642
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2644
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removePreferredDevicesForStrategySync(I)I
    .locals 0

    .line 1492
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyAndSave(I)I

    move-result p0

    return p0
.end method

.method public final requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 3

    .line 569
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 571
    :goto_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_1

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestedCommunicationDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mAudioModeOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 573
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 572
    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public resetBluetoothScoOfApp()V
    .locals 2

    .line 1153
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "resetBluetoothScoOfApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothScoOfApp()V

    return-void
.end method

.method public restartScoInVoipCall()V
    .locals 0

    .line 948
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p0

    .line 949
    invoke-virtual {p0}, Lcom/mediatek/server/audio/AudioServiceExt;->restartScoInVoipCall()V

    return-void
.end method

.method public final sendIILMsg(IIIILjava/lang/Object;I)V
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2556
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2557
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_6

    .line 2561
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2564
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {p2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 2566
    :try_start_1
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Exception acquiring wakelock"

    invoke-static {v3, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2568
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2569
    throw p0

    .line 2572
    :cond_2
    :goto_3
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-eqz p2, :cond_8

    const/4 p2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 2575
    move-object v4, p5

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 2577
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v5, v0, :cond_3

    .line 2578
    sget-boolean p2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz p2, :cond_8

    .line 2579
    const-string p2, "AS.AudioDeviceBroker"

    const-string/jumbo v0, "wired device connected, do not mute"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2583
    :cond_3
    invoke-static {p2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2584
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p2

    iget-object v0, v4, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 2585
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    goto/16 :goto_4

    :cond_4
    if-ne p1, v1, :cond_7

    .line 2590
    move-object v0, p5

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 2592
    invoke-static {p2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-nez v4, :cond_8

    .line 2595
    invoke-static {p2}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object p2

    .line 2596
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 2597
    invoke-virtual {v4, p2, v3}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 2598
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2599
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    .line 2600
    const-string v3, "AS.AudioDeviceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.mDevice address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",currentDevice address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2600
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 2603
    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2604
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    goto :goto_4

    .line 2606
    :cond_5
    const-string p2, "AS.AudioDeviceBroker"

    const-string/jumbo v0, "play music by other device, do not mute"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2609
    :cond_6
    const-string p2, "AS.AudioDeviceBroker"

    const-string v0, "current device is empty!"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2613
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 2617
    :cond_8
    :goto_4
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2618
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, p6

    add-long/2addr v3, v5

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_9

    const/16 p6, 0x31

    if-eq p1, p6, :cond_9

    const/16 p6, 0x3d

    if-eq p1, p6, :cond_9

    const/16 p6, 0xa

    if-eq p1, p6, :cond_9

    const/16 p6, 0xb

    if-eq p1, p6, :cond_9

    goto :goto_5

    .line 2627
    :cond_9
    sget-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long p6, v0, v3

    if-ltz p6, :cond_a

    const-wide/16 v2, 0x1e

    add-long v3, v0, v2

    .line 2631
    :cond_a
    sput-wide v3, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    .line 2636
    :goto_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2638
    monitor-exit p2

    :goto_6
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final sendIILMsgNoDelay(IIIILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2550
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIIMsgNoDelay(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2538
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsg(IIILjava/lang/Object;I)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 2522
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendILMsgNoDelay(IIILjava/lang/Object;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2542
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendIMsgNoDelay(III)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2534
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsg(IILjava/lang/Object;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    .line 2526
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsgNoDelay(IILjava/lang/Object;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 2546
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsg(III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p3

    .line 2518
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendMsgForCheckClientState(IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_0

    if-eqz p5, :cond_0

    .line 2651
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1, p5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 2654
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 2655
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMsgNoDelay(II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 2530
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setA2dpSuspended(ZZLjava/lang/String;)V
    .locals 4

    .line 1338
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_0

    .line 1340
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setA2dpSuspended source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", enable: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", internal: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothA2dpSuspendedInt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothA2dpSuspendedExt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1346
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    goto :goto_1

    .line 1348
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    .line 1350
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1351
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setA2dpTimeout(Ljava/lang/String;II)V
    .locals 6

    const/16 v1, 0xa

    const/4 v2, 0x2

    move-object v0, p0

    move-object v4, p1

    move v3, p2

    move v5, p3

    .line 1867
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendILMsg(IIILjava/lang/Object;I)V

    return-void
.end method

.method public setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 0

    .line 1880
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeSupported(Z)V

    return-void
.end method

.method public setBluetoothA2dpOnInt(ZZLjava/lang/String;)V
    .locals 2

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1821
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    const/4 v0, 0x1

    .line 1822
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IIZLjava/lang/String;)V

    return-void
.end method

.method public setBluetoothA2dpOn_Async(ZLjava/lang/String;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public setBluetoothScoOn(ZLjava/lang/String;)V
    .locals 5

    .line 1315
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1316
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->resetBluetoothScoOfApp()V

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 1325
    const-string v2, "AS.AudioDeviceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothScoOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBluetoothScoOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", btScoRequesterUId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->safeUidFromAttributionSource(Landroid/content/AttributionSource;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1331
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    if-nez p1, :cond_2

    .line 1332
    invoke-virtual {p0, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1334
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCommunicationDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceInfo;ZLjava/lang/String;)Z
    .locals 12

    .line 374
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCommunicationDevice, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    if-eqz p3, :cond_1

    .line 381
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, p3}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_0
    move-object v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 382
    :goto_1
    new-instance v4, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    if-eqz p3, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/4 v9, -0x1

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    .line 385
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    .line 386
    monitor-exit v1

    return v3

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 443
    sget-boolean v7, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    const-string v8, "AS.AudioDeviceBroker"

    if-eqz v7, :cond_0

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setCommunicationRouteForClient: device: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", eventSource: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    sget-object v7, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v9, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCommunicationRouteForClient for uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " device: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " isPrivileged: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " from API: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v9, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v9

    .line 447
    invoke-virtual {v7, v9}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 454
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 460
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 462
    invoke-virtual {v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v11

    .line 463
    invoke-virtual {v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isPrivileged()Z

    move-result v9

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v12, 0x1

    if-eqz v3, :cond_2

    .line 467
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-nez v5, :cond_3

    .line 469
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCommunicationRouteForClient: could not add client for uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " and device: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 473
    :cond_2
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    return-void

    .line 478
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz v3, :cond_5

    move v5, v12

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v7, :cond_6

    move v13, v12

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 482
    :goto_3
    iget-boolean v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    const-string/jumbo v15, "setCommunicationRouteForClient: failure to start BT SCO for uid: "

    if-eqz v14, :cond_d

    .line 483
    const-string/jumbo v14, "setCommunicationRouteForClient"

    if-eqz v5, :cond_b

    if-eqz v13, :cond_7

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 484
    invoke-virtual {v10}, Lcom/android/server/audio/BtHelper;->isBluetoothScoRequestedInternally()Z

    move-result v10

    if-nez v10, :cond_b

    .line 486
    :cond_7
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 487
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_8

    .line 493
    invoke-virtual {v0, v1, v2, v11, v9}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    .line 496
    :cond_8
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_4

    .line 498
    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_6

    :cond_9
    move v3, v12

    :cond_a
    :goto_6
    if-eqz v3, :cond_11

    .line 504
    invoke-virtual {v0, v12, v14}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_9

    :cond_b
    if-nez v5, :cond_11

    if-eqz v13, :cond_11

    .line 507
    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 508
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    :cond_c
    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1, v14}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    goto :goto_9

    :cond_d
    if-eqz v5, :cond_10

    if-eqz v13, :cond_e

    .line 513
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 514
    invoke-virtual {v3}, Lcom/android/server/audio/BtHelper;->isBluetoothScoRequestedInternally()Z

    move-result v3

    if-nez v3, :cond_10

    .line 515
    :cond_e
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/audio/BtHelper;->startBluetoothSco(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_f

    .line 520
    invoke-virtual {v0, v1, v2, v11, v9}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    .line 523
    :cond_f
    invoke-virtual {v0, v1, v12}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_7

    .line 525
    :goto_8
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    goto :goto_9

    :cond_10
    if-nez v5, :cond_11

    if-eqz v13, :cond_11

    .line 528
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v1, v6}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)Z

    .line 535
    :cond_11
    :goto_9
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->postUpdateContextualVolumes()V

    .line 537
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceAsNonDefaultForStrategySync(ILandroid/media/AudioDeviceAttributes;)I
    .locals 0

    .line 1497
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I

    move-result p0

    return p0
.end method

.method public setDeviceSettings(Ljava/lang/String;)V
    .locals 0

    .line 3414
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->setDeviceSettings(Ljava/lang/String;)V

    return-void
.end method

.method public setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 657
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    :cond_1
    if-eqz p3, :cond_2

    .line 660
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 663
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p1

    const/16 p3, 0x1770

    .line 662
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postCheckCommunicationRouteClientState(IZI)V

    return-void
.end method

.method public setForceUse_Async(IILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x4

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsgNoDelay(IIIILjava/lang/Object;)V

    return-void
.end method

.method public setHearingAidTimeout(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x3d

    const/4 v1, 0x2

    .line 1875
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsg(IILjava/lang/Object;I)V

    return-void
.end method

.method public setLeAudioSuspended(ZZLjava/lang/String;)V
    .locals 4

    .line 1368
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v1, :cond_0

    .line 1370
    const-string v1, "AS.AudioDeviceBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLeAudioSuspended source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", enable: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", internal: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothLeSuspendedInt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBluetoothLeSuspendedExt: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1376
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    goto :goto_1

    .line 1378
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    .line 1380
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    .line 1381
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLeAudioTimeout(Ljava/lang/String;III)V
    .locals 7

    const/16 v1, 0x31

    const/4 v2, 0x2

    move-object v0, p0

    move-object v5, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 1871
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .locals 0

    .line 1527
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePresetAndSave(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .locals 0

    .line 1488
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyAndSave(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setSpatialAudioState(Ljava/lang/String;Z)V
    .locals 0

    .line 3582
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->setSpatialAudioState(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSpeakerphoneOn(Landroid/os/IBinder;Landroid/content/AttributionSource;ZZLjava/lang/String;)V
    .locals 10

    .line 348
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeakerphoneOn, on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v9, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 939
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 924
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 925
    invoke-virtual {v2}, Lcom/android/server/audio/BtHelper;->isNextBtActiveDeviceAvailableForMusic()Z

    move-result v2

    .line 926
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 930
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)I

    .line 932
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setupMessaging(Landroid/content/Context;)V
    .locals 2

    .line 1990
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 1991
    const-string v1, "handleAudioDeviceEvent"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1993
    new-instance p1, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerThread:Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    .line 1994
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1995
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->waitForBrokerHandlerCreation()V

    return-void
.end method

.method public final shouldStartScoForAttributionSource(Landroid/content/AttributionSource;)Z
    .locals 2

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    const/16 v1, 0x3ea

    .line 433
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3e9

    .line 434
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3e8

    .line 435
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.server.telecom"

    .line 436
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public startBluetoothBleForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;IZLjava/lang/String;)V
    .locals 10

    .line 1463
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBluetoothBleForClient, pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/high16 v0, 0x20000000

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    move v9, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public startBluetoothScoForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;IZLjava/lang/String;)V
    .locals 10

    .line 1438
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBluetoothScoForClient, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_0
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v0, 0x10

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    move v9, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopBluetoothBleForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;ZLjava/lang/String;)V
    .locals 10

    .line 1476
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBluetoothBleForClient, pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_0
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/high16 v0, 0x20000000

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public stopBluetoothScoForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;ZLjava/lang/String;)V
    .locals 10

    .line 1449
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBluetoothScoForClient, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioDeviceBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    const/16 v0, 0x10

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    return-void
.end method

.method public toggleHdmiIfConnected_Async()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendMsgNoDelay(II)V

    return-void
.end method

.method public final topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 550
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 555
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 0

    .line 1541
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V
    .locals 0

    .line 1522
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 0

    .line 1512
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method public updateActiveCommunicationDevice()V
    .locals 3

    .line 771
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 774
    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v1

    .line 776
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 778
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "updateActiveCommunicationDevice(): no device for phone strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 783
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void

    .line 786
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 789
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {v1, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void
.end method

.method public final updateAudioHalBluetoothState()V
    .locals 8

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string v2, "LeAudioSuspended=true"

    const-string v3, "BTAudiosuspend=true"

    const-string v4, "A2dpSuspended=true"

    const-string v5, "AS.AudioDeviceBroker"

    const/4 v6, 0x1

    if-eq v0, v1, :cond_5

    .line 1203
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioHalBluetoothState() mBluetoothScoOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothScoOnApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_4

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-nez v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isAospSuspendSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 1212
    :cond_1
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1214
    :goto_0
    iput-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1216
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-nez v0, :cond_3

    .line 1217
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1218
    iput-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    .line 1220
    :cond_3
    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1222
    :cond_4
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1224
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    .line 1226
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    if-nez v0, :cond_15

    .line 1227
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v6

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eq v0, v7, :cond_e

    .line 1229
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_8

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAudioHalBluetoothState() mBluetoothA2dpSuspendedExt: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mBluetoothA2dpSuspendedInt: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mBluetoothA2dpSuspendedApplied: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v0, v6

    :goto_5
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    .line 1238
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isAospSuspendSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1239
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_b

    .line 1240
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6

    .line 1242
    :cond_b
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6

    .line 1245
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_d

    .line 1246
    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_6

    .line 1248
    :cond_d
    const-string v0, "BTAudiosuspend=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1252
    :cond_e
    :goto_6
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    move v0, v1

    goto :goto_8

    :cond_10
    :goto_7
    move v0, v6

    :goto_8
    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eq v0, v3, :cond_15

    .line 1254
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    if-eqz v0, :cond_11

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAudioHalBluetoothState() mBluetoothLeSuspendedExt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBluetoothLeSuspendedInt: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBluetoothLeSuspendedApplied: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    move v6, v1

    :cond_13
    :goto_9
    iput-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz v6, :cond_14

    .line 1263
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    .line 1265
    :cond_14
    const-string p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public final updateCommunicationRoute(Ljava/lang/String;)V
    .locals 13

    .line 2913
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 2914
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_COMM_RTE:Z

    const-string v2, " eventSource: "

    const-string/jumbo v3, "updateCommunicationRoute, preferredCommunicationDevice: "

    const-string v4, "AS.AudioDeviceBroker"

    if-eqz v1, :cond_0

    .line 2915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_0
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2923
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    .line 2924
    const-string p1, " mCurCommunicationDevice: "

    const-string/jumbo v2, "updateCommunicationRoute, mPreCommunicationDevice: "

    const/16 v3, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_9

    .line 2925
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2928
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 2929
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2930
    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/server/audio/AudioServiceExt;->getLeAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v7, v8

    .line 2934
    :cond_1
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2935
    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/server/audio/AudioServiceExt;->isBluetoothLeCgStateOn()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2936
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v10, v9, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    iget v9, v9, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    iget-object v11, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2939
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/server/audio/AudioServiceExt;->getModeCb()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x3

    .line 2936
    invoke-virtual {v8, v10, v9, v12, v11}, Lcom/mediatek/server/audio/AudioServiceExt;->startBluetoothLeCg(IIILandroid/os/IBinder;)V

    .line 2941
    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v8

    .line 2943
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v9

    .line 2942
    invoke-virtual {p0, v8, v9}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v9

    .line 2944
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceBroker;->getMaxVssVolumeForStream(I)I

    move-result v10

    if-eqz v1, :cond_3

    .line 2946
    const-string/jumbo v11, "updateCommunicationRoute restoring LE Audio device volume lvl."

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_3
    invoke-virtual {p0, v9, v10, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 2951
    :cond_4
    iput-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_5

    .line 2953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2958
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eq p1, v1, :cond_7

    if-eqz v1, :cond_6

    .line 2959
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 2961
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v6}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 2962
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    goto :goto_0

    .line 2963
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p1, :cond_7

    .line 2964
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 2965
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleRecordingIdle()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2966
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v5}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 2967
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    :cond_7
    :goto_0
    if-eqz v7, :cond_8

    .line 2973
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v2, v6, [Landroid/media/AudioDeviceAttributes;

    aput-object v7, v2, v5

    .line 2974
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2973
    invoke-virtual {p1, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    .line 2975
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v2, v6, [Landroid/media/AudioDeviceAttributes;

    aput-object v7, v2, v5

    .line 2976
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2975
    invoke-virtual {p1, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    goto :goto_1

    .line 2978
    :cond_8
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyInt(I)I

    .line 2979
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategyInt(I)I

    .line 2982
    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles()V

    .line 2983
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    goto/16 :goto_3

    .line 2985
    :cond_9
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v7

    if-ne v7, v3, :cond_a

    .line 2986
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object v7

    .line 2987
    invoke-virtual {v7}, Lcom/mediatek/server/audio/AudioServiceExt;->getLeAudioDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v7

    if-eqz v7, :cond_a

    move-object v0, v7

    .line 2993
    :cond_a
    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_b

    .line 2995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_b
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->isVendorBeforeAndroidU()Z

    move-result p1

    if-nez p1, :cond_d

    .line 3000
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eq p1, v1, :cond_d

    if-eqz v1, :cond_c

    .line 3001
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 3003
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v6}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 3004
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    goto :goto_2

    .line 3005
    :cond_c
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p1, :cond_d

    .line 3006
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    if-ne p1, v3, :cond_d

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBleRecordingIdle()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3008
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1, v5}, Lcom/android/server/audio/BtHelper;->updateBleCGStateToBt(Z)V

    .line 3009
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getAudioServiceExtInstance()Lcom/mediatek/server/audio/AudioServiceExt;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/mediatek/server/audio/AudioServiceExt;->notifyCgState(Z)V

    .line 3014
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v2, v6, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v2, v5

    .line 3015
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3014
    invoke-virtual {p1, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    .line 3016
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v2, v6, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v2, v5

    .line 3017
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3016
    invoke-virtual {p1, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategyInt(ILjava/util/List;)I

    .line 3019
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdatePhoneStrategyDevice(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isRecordingActiveForUid(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 641
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    .line 643
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo p2, "updateCommunicationRouteClientState"

    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V
    .locals 12

    .line 3246
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3248
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 3249
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 3252
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    .line 3253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPlaybackConfiguration;

    .line 3254
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 3255
    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3256
    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setPlaybackActive(Z)V

    move v7, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_1
    if-eqz p2, :cond_4

    .line 3263
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    .line 3264
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioRecordingConfiguration;

    .line 3265
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 3266
    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v9

    if-nez v9, :cond_3

    .line 3267
    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->setRecordingActive(Z)V

    move v7, v6

    :cond_4
    if-eqz v7, :cond_5

    .line 3274
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->getUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->removeMsgForCheckClientState(I)V

    .line 3275
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_0

    if-eqz p1, :cond_6

    move v4, v6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    if-eqz p2, :cond_7

    move v5, v6

    .line 3278
    :cond_7
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    goto/16 :goto_0

    .line 3285
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3286
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 3285
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 3286
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final waitForBrokerHandlerCreation()V
    .locals 2

    .line 1999
    monitor-enter p0

    .line 2000
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2002
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2004
    :catch_0
    :try_start_2
    const-string v0, "AS.AudioDeviceBroker"

    const-string v1, "Interruption while waiting on BrokerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2007
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
