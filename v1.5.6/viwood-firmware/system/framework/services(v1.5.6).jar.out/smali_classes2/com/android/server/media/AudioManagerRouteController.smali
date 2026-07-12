.class public final Lcom/android/server/media/AudioManagerRouteController;
.super Ljava/lang/Object;
.source "AudioManagerRouteController.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# static fields
.field public static final AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

.field public static final MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field public final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

.field public final mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

.field public mSelectedRoute:Landroid/media/MediaRoute2Info;

.field public mStarted:Z

.field public final mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;


# direct methods
.method public static synthetic $r8$lambda$-_oU9yDXV1U3xDwofh4mPa-gfkY(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static synthetic $r8$lambda$1zvgH30oLg-t46HD-ksi1UXLG7g(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$updateAvailableRoutes$5(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ZuofFIW5BsTfgvn45XuGVk0sNM(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Landroid/media/MediaRoute2Info;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static synthetic $r8$lambda$J5U1lvxLi4aj5pKkgirjL76cyO4(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/AudioManagerRouteController;->lambda$transferTo$1(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXpYmtCm1iZqPmpoJRXA3ygviaY(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tl1tJS2q4v9F2xTgvzHxh4XxbMk(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioDeviceAttributes;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$getTransferActionForRoute$3(Landroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gRSid8P0o7-_gK9-205II82t8Bo(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/MediaRoute2Info;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$updateAvailableRoutes$4(Landroid/media/MediaRoute2Info;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gr3LU52lDiQLjP7tmD8Zc-CNrUU(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/AudioManagerRouteController;->onDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qYi60g5OI8-fyWsoWy3MwrodxCI(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioManagerRouteController;->lambda$getTransferActionForRoute$2(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStrategyForMedia(Lcom/android/server/media/AudioManagerRouteController;)Landroid/media/audiopolicy/AudioProductStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrebuildAvailableRoutesAndNotify(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetAUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO()Landroid/util/SparseArray;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 84
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 671
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x2

    const-string v3, "ROUTE_ID_BUILTIN_SPEAKER"

    const v4, 0x1040349

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/4 v2, 0x3

    const-string v3, "ROUTE_ID_WIRED_HEADSET"

    const v4, 0x104034c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v2, "ROUTE_ID_WIRED_HEADPHONES"

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x8

    const-string v3, "ROUTE_ID_BLUETOOTH_A2DP"

    const v4, 0x10401bb

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0x9

    const-string v3, "ROUTE_ID_HDMI"

    const v6, 0x104034b

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v2, 0xd

    const-string v3, "ROUTE_ID_DOCK"

    const v7, 0x104034a

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const/16 v3, 0xb

    const-string v8, "ROUTE_ID_USB_DEVICE"

    const v9, 0x104034d

    invoke-direct {v1, v3, v8, v9, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_USB_HEADSET"

    const/16 v8, 0x16

    invoke-direct {v1, v8, v3, v9, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HDMI_ARC"

    const/16 v8, 0xa

    invoke-direct {v1, v8, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 725
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HDMI_EARC"

    const/16 v8, 0x1d

    invoke-direct {v1, v8, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_HEARING_AID"

    const/16 v8, 0x17

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_HEADSET"

    const/16 v8, 0x1a

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_SPEAKER"

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_BLE_BROADCAST"

    invoke-direct {v1, v8, v3, v4, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 759
    const-string v3, "ROUTE_ID_LINE_DIGITAL"

    const/4 v4, 0x6

    invoke-direct {v1, v4, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 755
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 766
    const-string v3, "ROUTE_ID_LINE_ANALOG"

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 762
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    .line 773
    const-string v3, "ROUTE_ID_AUX_LINE"

    const/16 v4, 0x13

    invoke-direct {v1, v4, v3, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    .line 769
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 776
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v3, "ROUTE_ID_DOCK_ANALOG"

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    const-string v2, "ROUTE_ID_MULTICHANNEL_SPEAKER_GROUP"

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2, v6, v5}, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;-><init>(ILjava/lang/String;ILcom/android/server/media/AudioManagerRouteController-IA;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/AudioManagerRouteController$AudioDeviceCallbackImpl;-><init>(Lcom/android/server/media/AudioManagerRouteController;Lcom/android/server/media/AudioManagerRouteController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 107
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStarted:Z

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 166
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    .line 169
    invoke-static {p1}, Lcom/android/server/media/DeviceRouteController;->getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 171
    new-instance p3, Lcom/android/server/media/BluetoothDeviceRoutesManager;

    new-instance p4, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-direct {p3, p1, p2, p5, p4}, Lcom/android/server/media/BluetoothDeviceRoutesManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    iput-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)Lcom/android/server/media/AudioManagerRouteController;
    .locals 6

    .line 134
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/media/AudioManagerRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)V

    return-object v0
.end method


# virtual methods
.method public final createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 1

    .line 515
    sget-object v0, Lcom/android/server/media/AudioManagerRouteController;->AUDIO_DEVICE_INFO_TYPE_TO_ROUTE_INFO:Landroid/util/SparseArray;

    .line 516
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 523
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object p3, p0, Lcom/android/server/media/AudioManagerRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mNameResource:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_1
    if-nez p1, :cond_2

    .line 531
    iget-object p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mDefaultRouteId:Ljava/lang/String;

    .line 533
    :cond_2
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v0, p1, p3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget p1, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    .line 534
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 535
    invoke-virtual {p1, p4}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 536
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string p3, "android.media.route.feature.LIVE_AUDIO"

    .line 537
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string p3, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 538
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const/4 p3, 0x2

    .line 539
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    .line 541
    iget p2, p2, Lcom/android/server/media/AudioManagerRouteController$SystemRouteInfo;->mMediaRoute2InfoType:I

    if-ne p2, p3, :cond_3

    .line 542
    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    invoke-virtual {p1, p0}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    .line 545
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;
    .locals 4

    .line 479
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v2, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->containsBondedDeviceWithAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v1, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getRouteIdForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v2, v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getNameForBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 494
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public final createPlaceholderBuiltinSpeakerRoute()Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 471
    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2Info(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    .line 470
    invoke-static {p0, v1}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAvailableRoutes()Ljava/util/List;
    .locals 2

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda4;-><init>()V

    .line 244
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getTransferActionForRoute(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Ljava/lang/Runnable;
    .locals 3

    .line 301
    iget-boolean v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mCorrespondsToInactiveBluetoothRoute:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object p1, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 303
    new-instance v0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/String;)V

    return-object v0

    .line 311
    :cond_0
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget p1, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mAudioDeviceInfoType:I

    const-string v1, ""

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    .line 316
    new-instance p1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/AudioManagerRouteController;Landroid/media/AudioDeviceAttributes;)V

    return-object p1
.end method

.method public final synthetic lambda$getTransferActionForRoute$2(Ljava/lang/String;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->activateBluetoothDeviceWithAddress(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z

    return-void
.end method

.method public final synthetic lambda$getTransferActionForRoute$3(Landroid/media/AudioDeviceAttributes;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mStrategyForMedia:Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    return-void
.end method

.method public final synthetic lambda$transferTo$1(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 271
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception while transferring to route id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MR2SystemProvider"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$updateAvailableRoutes$4(Landroid/media/MediaRoute2Info;)Z
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$updateAvailableRoutes$5(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)V
    .locals 1

    .line 465
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    .line 329
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    :cond_0
    return-void
.end method

.method public final rebuildAvailableRoutes()V
    .locals 10

    .line 353
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Lcom/android/server/media/AudioManagerRouteController;->MEDIA_USAGE_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 354
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "MR2SystemProvider"

    if-eqz v1, :cond_0

    .line 357
    const-string v0, "Unexpected empty list of output devices for media. Using built-in speakers."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_0

    .line 362
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    .line 363
    const-string v1, "AudioManager.getDevicesForAttributes returned more than one element. Using the first one."

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .line 368
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    move v4, v0

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 373
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 375
    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->getAvailableBluetoothRoutes()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 376
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 377
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 378
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v9

    move-object v3, p0

    .line 371
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/AudioManagerRouteController;->updateAvailableRoutes(I[Landroid/media/AudioDeviceInfo;Ljava/util/List;IIZ)V

    return-void
.end method

.method public final rebuildAvailableRoutesAndNotify()V
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutes()V

    .line 342
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    .line 343
    invoke-interface {v0}, Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;->onDeviceRouteChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerRouteChangeListener(Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDeviceRouteChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->start(Landroid/os/UserHandle;)V

    .line 208
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 209
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/server/media/AudioRoutingUtils;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    invoke-virtual {p1, v0, v1, p0}, Landroid/media/AudioManager;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mOnDevicesForAttributesChangedListener:Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnDevicesForAttributesChangedListener(Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mBluetoothRouteController:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-virtual {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->stop()V

    .line 231
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 256
    const-string p0, "MR2SystemProvider"

    const-string p1, "Unexpected call to AudioPoliciesDeviceRouteController#transferTo(null)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_0
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 262
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 264
    const-string p0, "MR2SystemProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferTo: Ignoring transfer request to unknown route id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/media/AudioManagerRouteController;->getTransferActionForRoute(Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;)Ljava/lang/Runnable;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 262
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized updateAvailableRoutes(I[Landroid/media/AudioDeviceInfo;Ljava/util/List;IIZ)V
    .locals 7

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 410
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 412
    invoke-virtual {p0, v3}, Lcom/android/server/media/AudioManagerRouteController;->createMediaRoute2InfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 416
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    .line 418
    invoke-static {v4, v3}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->createForAudioManagerRoute(Landroid/media/MediaRoute2Info;I)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v5

    .line 420
    iget-object v6, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    move-object v1, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "MR2SystemProvider"

    const-string v2, "Ended up with an empty list of routes. Creating a placeholder route."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->createPlaceholderBuiltinSpeakerRoute()Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object v0

    .line 434
    iget-object v2, v0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 435
    iget-object v3, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v1, :cond_3

    .line 439
    const-string v0, "MR2SystemProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not map this selected device attribute type to an available route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Available types: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;-><init>()V

    .line 446
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 447
    invoke-interface {p1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 444
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 452
    :cond_3
    invoke-virtual {v1, p4, p5, p6}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->copyWithVolumeInfo(IIZ)Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    move-result-object p1

    .line 454
    iget-object p2, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    iget-object p4, v1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 455
    invoke-virtual {p4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p4

    .line 454
    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object p1, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    .line 461
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 462
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;-><init>()V

    .line 463
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 464
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateVolume(I)Z
    .locals 0

    .line 296
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    const/4 p0, 0x1

    return p0
.end method
