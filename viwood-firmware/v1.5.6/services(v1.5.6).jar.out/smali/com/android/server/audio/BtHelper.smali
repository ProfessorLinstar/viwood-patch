.class public Lcom/android/server/audio/BtHelper;
.super Ljava/lang/Object;
.source "BtHelper.java"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field public mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field public mHidHost:Landroid/bluetooth/BluetoothHidHost;

.field public mIsCgon:Z

.field public mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field public mLeAudioBroadcastCodec:I

.field public mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

.field public mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

.field public final mResolvedScoAudioDevices:Ljava/util/Map;

.field public mScoAudioMode:I

.field public mScoAudioState:I

.field public mScoConnectionState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 103
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 113
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 124
    iput-boolean v1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 764
    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 1120
    new-instance v0, Lcom/android/server/audio/BtHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/BtHelper$1;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 84
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 85
    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static btDeviceClassToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    .line 1584
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0x%04x"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1582
    :sswitch_0
    const-string p0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    return-object p0

    .line 1580
    :sswitch_1
    const-string p0, "AUDIO_VIDEO_RESERVED_0x0444"

    return-object p0

    .line 1578
    :sswitch_2
    const-string p0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    return-object p0

    .line 1576
    :sswitch_3
    const-string p0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    return-object p0

    .line 1574
    :sswitch_4
    const-string p0, "AUDIO_VIDEO_VIDEO_MONITOR"

    return-object p0

    .line 1572
    :sswitch_5
    const-string p0, "AUDIO_VIDEO_CAMCORDER"

    return-object p0

    .line 1570
    :sswitch_6
    const-string p0, "AUDIO_VIDEO_VIDEO_CAMERA"

    return-object p0

    .line 1568
    :sswitch_7
    const-string p0, "AUDIO_VIDEO_VCR"

    return-object p0

    .line 1566
    :sswitch_8
    const-string p0, "AUDIO_VIDEO_HIFI_AUDIO"

    return-object p0

    .line 1564
    :sswitch_9
    const-string p0, "AUDIO_VIDEO_SET_TOP_BOX"

    return-object p0

    .line 1562
    :sswitch_a
    const-string p0, "AUDIO_VIDEO_CAR_AUDIO"

    return-object p0

    .line 1560
    :sswitch_b
    const-string p0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    return-object p0

    .line 1558
    :sswitch_c
    const-string p0, "AUDIO_VIDEO_HEADPHONES"

    return-object p0

    .line 1556
    :sswitch_d
    const-string p0, "AUDIO_VIDEO_LOUDSPEAKER"

    return-object p0

    .line 1554
    :sswitch_e
    const-string p0, "AUDIO_VIDEO_MICROPHONE"

    return-object p0

    .line 1552
    :sswitch_f
    const-string p0, "AUDIO_VIDEO_RESERVED_0x040C"

    return-object p0

    .line 1550
    :sswitch_10
    const-string p0, "AUDIO_VIDEO_HANDSFREE"

    return-object p0

    .line 1548
    :sswitch_11
    const-string p0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    return-object p0

    .line 1546
    :sswitch_12
    const-string p0, "AUDIO_VIDEO_UNCATEGORIZED"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_12
        0x404 -> :sswitch_11
        0x408 -> :sswitch_10
        0x40c -> :sswitch_f
        0x410 -> :sswitch_e
        0x414 -> :sswitch_d
        0x418 -> :sswitch_c
        0x41c -> :sswitch_b
        0x420 -> :sswitch_a
        0x424 -> :sswitch_9
        0x428 -> :sswitch_8
        0x42c -> :sswitch_7
        0x430 -> :sswitch_6
        0x434 -> :sswitch_5
        0x438 -> :sswitch_4
        0x43c -> :sswitch_3
        0x440 -> :sswitch_2
        0x444 -> :sswitch_1
        0x448 -> :sswitch_0
    .end sparse-switch
.end method

.method public static btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .locals 6

    .line 997
    const-string v0, ""

    const/16 v1, 0x10

    if-nez p0, :cond_0

    .line 998
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v1, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1005
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1008
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x404

    if-eq v4, v5, :cond_3

    const/16 v5, 0x408

    if-eq v4, v5, :cond_3

    const/16 v5, 0x420

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x40

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    .line 1018
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_6

    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btHeadsetDeviceToAudioDevice btDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " btClass: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    .line 1020
    const-string v2, "Unknown"

    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " nativeType: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " address: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1019
    const-string v2, "AS.BtHelper"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_6
    new-instance p0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p0, v1, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1342
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 1340
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static deviceEventToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 219
    :cond_0
    const-string p0, "DEVICE_CONFIG_CHANGE"

    return-object p0
.end method

.method public static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1330
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    .line 1328
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method public static getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1473
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1474
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBtDeviceCategory(Ljava/lang/String;)I
    .locals 9

    .line 1483
    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x11

    .line 1488
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1492
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1493
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Carkit"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "Untethered Headset"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_1

    :sswitch_2
    const-string v1, "Watch"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_1

    :sswitch_3
    const-string v1, "Speaker"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "HearingAid"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_5
    const-string v1, "Default"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_6
    const-string v1, "Headset"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v8, :cond_a

    if-eq v1, v5, :cond_9

    if-eq v1, v7, :cond_8

    .line 1510
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    .line 1515
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v1, 0x404

    if-eq p0, v1, :cond_7

    const/16 v1, 0x414

    if-eq p0, v1, :cond_6

    const/16 v1, 0x418

    if-eq p0, v1, :cond_7

    const/16 v1, 0x41c

    if-eq p0, v1, :cond_6

    const/16 v1, 0x428

    if-eq p0, v1, :cond_5

    const/16 v1, 0x43c

    if-eq p0, v1, :cond_6

    const/16 v1, 0x704

    if-eq p0, v1, :cond_4

    return v0

    :cond_4
    return v7

    :cond_5
    const/4 p0, 0x7

    return p0

    :cond_6
    return v6

    :cond_7
    return v8

    :cond_8
    return v7

    :cond_9
    return v6

    :cond_a
    return v8

    :cond_b
    return v5

    :cond_c
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5fc59e -> :sswitch_6
        -0x40b391df -> :sswitch_5
        -0x28153a78 -> :sswitch_4
        -0x147f0821 -> :sswitch_3
        0x4f7d4af -> :sswitch_2
        0x6399a2c -> :sswitch_1
        0x77e10aa2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 228
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getPreferredAudioProfiles(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1467
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1468
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getPreferredAudioProfiles(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileFromType(I)I
    .locals 1

    .line 1433
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1435
    :cond_0
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1437
    :cond_1
    invoke-static {p0}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x16

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getTypeFromProfile(IZ)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/16 v0, 0xb

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p0, 0x20000000

    return p0

    :cond_0
    const/high16 p0, -0x60000000

    return p0

    .line 1462
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/high16 p0, 0x8000000

    return p0

    :cond_3
    const p0, 0x20000002

    return p0

    :cond_4
    const/high16 p0, -0x7ffe0000

    return p0

    :cond_5
    const/16 p0, 0x80

    return p0

    :cond_6
    const/16 p0, 0x10

    return p0
.end method

.method public static onNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1537
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;)I

    return-void
.end method

.method public static scoAudioModeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_MODE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_0
    const-string p0, "SCO_MODE_VR"

    return-object p0

    .line 186
    :cond_1
    const-string p0, "SCO_MODE_VIRTUAL_CALL"

    return-object p0

    .line 184
    :cond_2
    const-string p0, "SCO_MODE_UNDEFINED"

    return-object p0
.end method

.method public static scoAudioStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCO_STATE_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_0
    const-string p0, "SCO_STATE_DEACTIVATING"

    return-object p0

    .line 206
    :cond_1
    const-string p0, "SCO_STATE_ACTIVE_INTERNAL"

    return-object p0

    .line 204
    :cond_2
    const-string p0, "SCO_STATE_ACTIVE_EXTERNAL"

    return-object p0

    .line 202
    :cond_3
    const-string p0, "SCO_STATE_ACTIVATE_REQ"

    return-object p0

    .line 200
    :cond_4
    const-string p0, "SCO_STATE_INACTIVE"

    return-object p0
.end method


# virtual methods
.method public final broadcastScoConnectionState(I)V
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastScoConnectionState(I)V

    return-void
.end method

.method public final declared-synchronized checkScoAudioState()V
    .locals 4

    monitor-enter p0

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-nez v2, :cond_0

    .line 1354
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1356
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1359
    :try_start_1
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting audio state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBluetoothHeadsetDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mBluetoothHeadsetDevice.DeviceClass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->btDeviceClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mScoAudioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mHearingAid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLeAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mAvrcpAbsVolSupported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1079
    const-string p0, "(null)"

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBluetoothHeadset()Z
    .locals 5

    .line 1365
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1374
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    if-eqz v0, :cond_1

    const/16 v1, 0xbb8

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->handleFailureToConnectToBtHeadsetService(I)V

    return v0
.end method

.method public final declared-synchronized getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v0, :cond_8

    const/16 v0, 0x16

    if-eq p2, v0, :cond_2

    const/16 p1, 0x1a

    if-eq p2, p1, :cond_0

    .line 377
    :try_start_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 372
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    const/high16 p2, 0x2b000000

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 373
    :goto_0
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    .line 374
    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 336
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v3

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v0, :cond_4

    .line 338
    const-string p1, "AS.BtHelper"

    const-string v0, "getCodec mLeAudio is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 340
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 343
    :cond_4
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 347
    :try_start_5
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 349
    :goto_2
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_5

    .line 350
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCodec btLeCodecStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v0, :cond_6

    .line 353
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCodec, null LE codec status for device: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 355
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 358
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    if-nez p1, :cond_7

    .line 360
    const-string p1, "AS.BtHelper"

    const-string v0, "getCodec btLeCodecConfig is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 362
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    .line 364
    :cond_7
    :try_start_7
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 365
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 366
    new-instance v0, Landroid/util/Pair;

    .line 367
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result p1

    .line 366
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothLeCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 367
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 366
    monitor-exit p0

    return-object v0

    .line 304
    :cond_8
    :try_start_8
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_3

    :cond_9
    move p2, v3

    .line 305
    :goto_3
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_a

    .line 306
    const-string p1, "AS.BtHelper"

    const-string v0, "getCodec mA2dp is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 308
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p1

    .line 312
    :cond_a
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 314
    :try_start_a
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 316
    :goto_4
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_b

    .line 317
    const-string v4, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCodec btCodecStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v0, :cond_c

    .line 320
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCodec, null A2DP codec status for device: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 322
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    .line 324
    :cond_c
    :try_start_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-nez p1, :cond_d

    .line 326
    const-string p1, "AS.BtHelper"

    const-string v0, "getCodec btCodecConfig is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-object v2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 328
    new-instance p1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    .line 330
    :cond_d
    :try_start_c
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 331
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 332
    new-instance v0, Landroid/util/Pair;

    .line 333
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    .line 332
    invoke-static {p1}, Landroid/media/AudioSystem;->bluetoothA2dpCodecToAudioFormat(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 333
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 332
    monitor-exit p0

    return-object v0

    .line 377
    :goto_5
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x16

    if-eq p2, p3, :cond_1

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_1

    .line 418
    :cond_0
    :try_start_0
    const-string p1, "AS.BtHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getCodecWithFallback() not bt profile:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 422
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/BtHelper;->getCodec(Landroid/bluetooth/BluetoothDevice;I)Landroid/util/Pair;

    move-result-object p1

    .line 423
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_4

    .line 424
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodec DEFAULT from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " fallback to "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v0, :cond_2

    .line 426
    const-string p4, "SBC"

    goto :goto_0

    :cond_2
    const-string p4, "LC3"

    :goto_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p4, "AS.BtHelper"

    invoke-virtual {p3, p4}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p3

    .line 424
    invoke-virtual {p1, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 427
    new-instance p1, Landroid/util/Pair;

    if-ne p2, v0, :cond_3

    const/high16 p2, 0x1f000000

    goto :goto_1

    :cond_3
    const/high16 p2, 0x2b000000

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 428
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    monitor-exit p0

    return-object p1

    .line 431
    :cond_4
    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getHeadsetAudioDevice()Landroid/media/AudioDeviceAttributes;
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 983
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getHeadsetAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadsetAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_0

    return-object p0

    .line 993
    :cond_0
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    .line 1380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1383
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1381
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getLeAudioGroupAddresses(I)Ljava/util/List;
    .locals 5

    monitor-enter p0

    .line 1393
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1395
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x16

    .line 1398
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v1

    .line 1399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    .line 1400
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1401
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1404
    :cond_2
    monitor-exit p0

    return-object v0

    .line 1396
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z
    .locals 12

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1034
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 1038
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v4

    .line 1039
    iget-object v5, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v4, v0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    goto :goto_1

    .line 1042
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1044
    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v4, v3, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v4

    move-object v11, v5

    move v5, v4

    move-object v4, v11

    goto :goto_1

    :cond_2
    const/16 v4, 0x20

    const/16 v6, 0x40

    const/16 v7, 0x10

    .line 1049
    filled-new-array {v7, v4, v6}, [I

    move-result-object v4

    move v6, v3

    move v7, v6

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 1054
    aget v8, v4, v7

    .line 1055
    iget-object v9, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v10, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v10, v8, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v3, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result v8

    or-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v5

    move v5, v6

    .line 1064
    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v7, Landroid/media/AudioDeviceAttributes;

    const v8, -0x7ffffff8

    invoke-direct {v7, v8, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 1069
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 1071
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v0
.end method

.method public declared-synchronized isBluetoothScoOn()Z
    .locals 5

    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 564
    :try_start_2
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getting audio state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    monitor-exit p0

    return v1

    .line 558
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public isBluetoothScoRequestedInternally()Z
    .locals 2

    .line 584
    iget p0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public declared-synchronized isInbandRingingEnabled()Z
    .locals 4

    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingEnabled()Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_1

    .line 576
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInbandRingingEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :cond_1
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isNextBtActiveDeviceAvailableForMusic()Z
    .locals 4

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->isFallbackDeviceUsable()Z

    move-result v0

    .line 392
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A2DP isFallbackDeviceUsable()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 396
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 399
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudio;->isFallbackDeviceUsable()Z

    move-result v0

    .line 401
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_3

    .line 402
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLeAudio isFallbackDeviceUsable()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :cond_3
    monitor-exit p0

    return v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized isProfilePoxyConnected(I)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_0

    .line 917
    monitor-exit p0

    return v1

    .line 910
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 908
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    monitor-exit p0

    return v0

    .line 906
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    monitor-exit p0

    return v0

    .line 904
    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    monitor-exit p0

    return v0

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public onBroadcastScoConnectionState(I)V
    .locals 3

    .line 674
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 677
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 682
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    return-void
.end method

.method public declared-synchronized onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 9

    monitor-enter p0

    .line 769
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connected to proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 771
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p2, :cond_0

    .line 773
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: null proxy for profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x15

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    const/16 v6, 0xb

    if-eq p1, v6, :cond_6

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_6

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_1

    .line 823
    :try_start_1
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: Not a valid profile to connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 823
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    monitor-exit p0

    return-void

    .line 793
    :cond_1
    :try_start_2
    move-object v6, p2

    check-cast v6, Landroid/bluetooth/BluetoothLeAudio;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    .line 794
    monitor-exit p0

    return-void

    .line 796
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_3

    .line 798
    :try_start_4
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 800
    :try_start_5
    const-string v7, "AS.BtHelper"

    const-string v8, "Exception while unregistering callback for LE audio"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    :cond_3
    :goto_0
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 804
    new-instance p2, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    invoke-direct {p2, p0}, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;-><init>(Lcom/android/server/audio/BtHelper;)V

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    :try_start_6
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    iget-object v6, p0, Lcom/android/server/audio/BtHelper;->mContext:Landroid/content/Context;

    .line 807
    invoke-virtual {v6}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 806
    invoke-virtual {p2, v6, v7}, Landroid/bluetooth/BluetoothLeAudio;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 809
    :try_start_7
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 810
    const-string v6, "AS.BtHelper"

    const-string v7, "Exception while registering callback for LE audio"

    invoke-static {v6, v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 787
    :cond_4
    move-object v6, p2

    check-cast v6, Landroid/bluetooth/BluetoothHearingAid;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_5

    .line 788
    monitor-exit p0

    return-void

    .line 790
    :cond_5
    :try_start_8
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 816
    :cond_6
    monitor-exit p0

    return-void

    .line 819
    :cond_7
    :try_start_9
    check-cast p2, Landroid/bluetooth/BluetoothHidHost;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    goto :goto_1

    .line 781
    :cond_8
    move-object v6, p2

    check-cast v6, Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v6, :cond_9

    .line 782
    monitor-exit p0

    return-void

    .line 784
    :cond_9
    :try_start_a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 829
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-nez p2, :cond_a

    .line 831
    const-string p2, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBtProfileConnected: Null BluetoothAdapter when connecting profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 831
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    :cond_a
    if-ne p1, v4, :cond_b

    .line 837
    monitor-exit p0

    return-void

    .line 839
    :cond_b
    :try_start_b
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p2

    .line 840
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    goto/16 :goto_4

    .line 843
    :cond_c
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eq p1, v5, :cond_11

    if-eq p1, v3, :cond_10

    if-eq p1, v2, :cond_d

    .line 887
    const-string p1, "AS.BtHelper"

    const-string p2, "Invalid profile! onBtProfileConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 856
    :cond_d
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 859
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothLeAudio;->getCodecStatus(I)Landroid/bluetooth/BluetoothLeAudioCodecStatus;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 861
    :try_start_d
    const-string v3, "AS.BtHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while getting status of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v1, :cond_e

    .line 864
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtProfileConnected null LE codec status for groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", device: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 869
    :cond_e
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getOutputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    .line 870
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 872
    invoke-static {v4, v0}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 874
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 877
    :cond_f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecStatus;->getInputCodecSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    .line 878
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    .line 880
    invoke-static {v4, v4}, Landroid/media/BluetoothProfileConnectionInfo;->createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 882
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_3

    .line 852
    :cond_10
    invoke-static {v4}, Landroid/media/BluetoothProfileConnectionInfo;->createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 853
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    goto :goto_3

    :cond_11
    const/4 p1, -0x1

    .line 847
    invoke-static {v4, p1}, Landroid/media/BluetoothProfileConnectionInfo;->createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;

    move-result-object p1

    .line 848
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 890
    :cond_12
    :goto_3
    monitor-exit p0

    return-void

    .line 841
    :cond_13
    :goto_4
    monitor-exit p0

    return-void

    .line 778
    :cond_14
    :try_start_e
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/BtHelper;->onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 779
    monitor-exit p0

    return-void

    .line 825
    :goto_5
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw p1
.end method

.method public declared-synchronized onBtProfileDisconnected(I)V
    .locals 4

    monitor-enter p0

    .line 696
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.BtHelper"

    .line 698
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 734
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtProfileDisconnected: Not a valid profile to disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 711
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 713
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudio;->unregisterCallback(Landroid/bluetooth/BluetoothLeAudio$Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 715
    :try_start_2
    const-string v0, "AS.BtHelper"

    const-string v2, "Exception while unregistering callback for LE audio"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    .line 719
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCallback:Lcom/android/server/audio/BtHelper$MyLeAudioCallback;

    .line 720
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioCodecConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    goto :goto_1

    .line 708
    :cond_2
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 723
    iput p1, p0, Lcom/android/server/audio/BtHelper;->mLeAudioBroadcastCodec:I

    goto :goto_1

    .line 730
    :cond_4
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    goto :goto_1

    .line 704
    :cond_5
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 705
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dpCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    goto :goto_1

    .line 701
    :cond_6
    iput-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onHeadsetProfileConnected(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 4

    monitor-enter p0

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->handleCancelFailureToConnectToBtHeadsetService()V

    .line 925
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 926
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 929
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p1

    .line 930
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 937
    :cond_1
    const-string p1, "AS.BtHelper"

    const-string/jumbo v2, "onHeadsetProfileConnected: Null BluetoothAdapter"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    .line 942
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_3

    .line 944
    monitor-exit p0

    return-void

    .line 947
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 958
    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v3, v0}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x5

    .line 962
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_2

    .line 950
    :cond_5
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, v3, v0}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    .line 954
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v1

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 968
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 969
    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    :cond_8
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onReceiveBtEvent(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 439
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 441
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    .line 442
    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiveBtEvent() BTactiveDeviceChanged, btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 444
    invoke-virtual {p0, v2}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    sget-object p1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceiveBtEvent ACTION_ACTIVE_DEVICE_CHANGED received with null profile proxy for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.BtHelper"

    .line 448
    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 445
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_1
    const-string v2, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 454
    const-string v2, "fake_hfp_broadcast"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 456
    const-string p1, "AS.BtHelper"

    const-string v0, "Fake HFP active device broadcast,return"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 463
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_2

    .line 464
    :cond_4
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    .line 467
    const-string v0, "AudioConnected"

    goto :goto_1

    :cond_5
    const-string v0, "AudioDisconnected"

    .line 468
    :goto_1
    const-string v1, "AS.BtHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiveBtEvent ACTION_AUDIO_STATE_CHANGED: btState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onScoAudioStateChanged(I)V
    .locals 7

    monitor-enter p0

    .line 483
    :try_start_0
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScoAudioStateChanged  state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScoAudioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 488
    :pswitch_0
    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq v5, v1, :cond_0

    if-eq v5, v0, :cond_0

    .line 490
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v4

    .line 495
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtHelper.onScoAudioStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    :cond_2
    move v2, v4

    goto :goto_4

    .line 528
    :pswitch_1
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    .line 530
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :cond_3
    :goto_1
    const/4 v2, -0x1

    goto :goto_4

    .line 501
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result v0

    if-nez v0, :cond_4

    .line 502
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BtHelper.onScoAudioStateChanged, state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    .line 512
    :cond_4
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-ne p1, v4, :cond_5

    .line 513
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    iget v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 514
    invoke-static {p1, v0, v5}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 516
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    :goto_2
    move v3, v4

    goto :goto_4

    .line 522
    :cond_5
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v4, v3

    .line 525
    :goto_3
    iput v3, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    move v2, v3

    goto :goto_2

    :goto_4
    if-eqz v3, :cond_8

    .line 537
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScoAudioStateChanged  broadcasting state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0, v2}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 541
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz p1, :cond_7

    .line 542
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveBtEvent(): BR SCOAudioStateChanged, scoAudioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_8
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetBtScoActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    const-string v1, "AS.BtHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1087
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->resetBluetoothScoOfApp()V

    :cond_1
    const/4 v2, 0x0

    .line 1095
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1096
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1096
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x1

    .line 1099
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/audio/BtHelper;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSetBtScoActiveDevice() failed to add new device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1100
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1105
    :cond_3
    iput-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_4

    .line 1110
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->resetBluetoothScoOfApp()V

    .line 1111
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    return-void

    .line 1114
    :cond_4
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->restartScoInVoipCall()V

    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x1

    .line 238
    :try_start_0
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    .line 239
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 249
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 253
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 255
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 257
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 259
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 262
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final postBluetoothActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .locals 3

    .line 894
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    const/4 v1, 0x0

    const-string/jumbo v2, "mBluetoothProfileServiceListener"

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 896
    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    .line 898
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    return-void
.end method

.method public final declared-synchronized requestScoState(II)Z
    .locals 7

    monitor-enter p0

    .line 1170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->checkScoAudioState()V

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v0, :cond_d

    .line 1174
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v4, :cond_0

    .line 1175
    invoke-virtual {p0, v3}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1177
    :cond_0
    :goto_0
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 1248
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to connect in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    monitor-exit p0

    return v6

    .line 1225
    :cond_1
    :try_start_1
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_1

    .line 1228
    :cond_2
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1229
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_1

    .line 1232
    :cond_3
    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "requestScoState: already in ACTIVE mode, simply return"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1245
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto/16 :goto_1

    .line 1236
    :cond_5
    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "requestScoState: already in req mode, simply return"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1179
    :cond_6
    iput p2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_8

    .line 1181
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1182
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8

    .line 1183
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1184
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bluetooth_sco_channel_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1186
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1183
    invoke-static {p1, p2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-gt p1, v3, :cond_7

    if-gez p1, :cond_8

    .line 1189
    :cond_7
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    .line 1193
    :cond_8
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p1, :cond_a

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1195
    iput v5, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_1

    .line 1197
    :cond_9
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: getBluetoothHeadset failed during connection, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    monitor-exit p0

    return v6

    .line 1205
    :cond_a
    :try_start_2
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_b

    .line 1206
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: no active device while connecting, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1210
    monitor-exit p0

    return v6

    .line 1212
    :cond_b
    :try_start_3
    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1214
    iput v4, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto/16 :goto_1

    .line 1216
    :cond_c
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: connect to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1217
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->getAnonymizedAddress(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1216
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1221
    monitor-exit p0

    return v6

    :cond_d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_15

    .line 1254
    :try_start_4
    iget p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eq p1, v5, :cond_14

    if-eq p1, v3, :cond_e

    if-eq p1, v4, :cond_e

    .line 1300
    const-string p1, "AS.BtHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestScoState: failed to disconnect in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1303
    monitor-exit p0

    return v6

    .line 1258
    :cond_e
    :try_start_5
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez p2, :cond_10

    .line 1259
    invoke-virtual {p0}, Lcom/android/server/audio/BtHelper;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1260
    iput v2, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1

    .line 1262
    :cond_f
    const-string p1, "AS.BtHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestScoState: getBluetoothHeadset failed during disconnection, mScoAudioMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1265
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1267
    monitor-exit p0

    return v6

    .line 1271
    :cond_10
    :try_start_6
    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_11

    .line 1272
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1273
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_1

    :cond_11
    if-ne p1, v3, :cond_12

    .line 1279
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->getAudioModeOwnerMode()I

    move-result p1

    if-eq p1, v4, :cond_12

    if-eqz p1, :cond_12

    goto :goto_1

    .line 1286
    :cond_12
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object p2, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    iget v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {p1, p2, v0}, Lcom/android/server/audio/BtHelper;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1288
    iput v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    goto :goto_1

    .line 1290
    :cond_13
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1291
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    goto :goto_1

    .line 1296
    :cond_14
    iput v6, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 1297
    invoke-virtual {p0, v6}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1306
    :cond_15
    :goto_1
    monitor-exit p0

    return v5

    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public resetBluetoothSco()V
    .locals 2

    const/4 v0, 0x0

    .line 687
    iput v0, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/server/audio/BtHelper;->broadcastScoConnectionState(I)V

    .line 689
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 690
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 691
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v1, "resetBluetoothSco"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    return-void
.end method

.method public final sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 3

    const/high16 v0, 0x10000000

    .line 1315
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1318
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1321
    throw p0
.end method

.method public declared-synchronized setAvrcpAbsoluteVolumeIndex(I)V
    .locals 3

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 276
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_0

    .line 277
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: bailing due to null mA2dp"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 278
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 277
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 280
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    if-nez v0, :cond_2

    .line 283
    sget-object p1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeIndex: abs vol not supported "

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.BtHelper"

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 283
    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 287
    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_3

    .line 288
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 295
    :try_start_4
    const-string v0, "AS.BtHelper"

    const-string v1, "Exception while changing abs volume"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 1

    .line 269
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.BtHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setHearingAidVolume(IIZ)V
    .locals 3

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_1

    .line 645
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_0

    .line 646
    const-string p1, "AS.BtHelper"

    const-string/jumbo p2, "setHearingAidVolume: null mHearingAid"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 648
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_1
    :try_start_1
    div-int/lit8 v0, p1, 0xa

    const/high16 v1, 0x8000000

    invoke-static {p2, v0, v1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p2

    float-to-int p2, p2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_2

    move p2, v0

    .line 656
    :cond_2
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_3

    .line 657
    const-string v0, "AS.BtHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHearingAidVolume: calling mHearingAid.setVolume idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p3, :cond_4

    .line 662
    sget-object p3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(III)V

    invoke-virtual {p3, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 668
    :try_start_3
    const-string p2, "AS.BtHelper"

    const-string p3, "Exception while setting hearing aid volume"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 670
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setLeAudioVolume(III)V
    .locals 9

    .line 619
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    const-string v1, "AS.BtHelper"

    if-nez v0, :cond_0

    .line 620
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_2

    .line 621
    const-string/jumbo p0, "setLeAudioVolume: null mLeAudio"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    int-to-double v2, p1

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 626
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 628
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLeAudioVolume: calling mLeAudio.setVolume idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v4, 0xa

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    move v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 636
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeAudio;->setVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 638
    const-string p1, "Exception while setting LE volume"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public setSpatialAudioState(Ljava/lang/String;Z)V
    .locals 3

    .line 1609
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    const-string v1, "AS.BtHelper"

    if-eqz v0, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpatialAudioState, device address:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    if-nez p0, :cond_2

    .line 1613
    sget-boolean p0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p0, :cond_1

    .line 1614
    const-string/jumbo p0, "setSpatialAudioState, mHidHost is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1618
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;->setSpatialAudioMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized startBluetoothSco(ILjava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 591
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 p2, 0xc

    .line 592
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized stopBluetoothSco(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 597
    :try_start_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateBleCGStateToBt(Z)V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    const-string v1, "AS.BtHelper"

    if-nez v0, :cond_0

    .line 604
    const-string/jumbo p1, "mLeAudio: null mLeAudio"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 605
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mIsCgon:Z

    return-void

    .line 608
    :cond_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBleCGStateToBt, isCgOn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCgon:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/BtHelper;->mIsCgon:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/audio/BtHelper;->mIsCgon:Z

    if-eq p1, v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->notifyBluetoothCallState(Z)V

    .line 614
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/audio/BtHelper;->mIsCgon:Z

    return-void
.end method
