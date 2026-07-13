.class public Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# static fields
.field public static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

.field public static final CAPTURE_PRESETS:[I

.field public static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

.field public static final MAX_DEVICE_INVENTORY_ENTRIES:I


# instance fields
.field public final mApmConnectedDevices:Landroid/util/ArrayMap;

.field public final mAppliedPresetRoles:Landroid/util/ArrayMap;

.field public final mAppliedPresetRolesInt:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRoles:Landroid/util/ArrayMap;

.field public final mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBluetoothDualModeEnabled:Z

.field public final mConnectedDevices:Ljava/util/LinkedHashMap;

.field public final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field public final mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

.field public mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field public final mDeviceInventory:Ljava/util/LinkedHashMap;

.field public final mDeviceInventoryLock:Ljava/lang/Object;

.field public final mDevicesLock:Ljava/lang/Object;

.field public mLastMusicBTdeviceConnected:I

.field public final mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mNonDefaultDevices:Landroid/util/ArrayMap;

.field public final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mPreferredDevices:Landroid/util/ArrayMap;

.field public final mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

.field public final mRoutesObservers:Landroid/os/RemoteCallbackList;

.field public final mStrategies:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0Wu0DddoQ0DvExkD6QqdHwFT7N4(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .locals 2

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "preset: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3JpQuW0fEkXN_dz7ArFEKHhVVVU(Ljava/lang/Integer;)I
    .locals 0

    .line 3139
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3qr9rBJSnntGMIibQ9guvdVgf-k(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Ru-9dr9yi6cTykRb5FCHwwlb48(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$clearDevicesRoleForStrategy$25(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AsNutghOnnqfRUT6rpHFpybZrH8(ILandroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 1

    .line 2076
    iget v0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne v0, p0, :cond_0

    .line 2077
    new-instance p0, Landroid/util/Pair;

    iget-object v0, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 2078
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2077
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$DyWpUTH-InKbOjBNbJelhoGy6No(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    .line 2003
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_0

    .line 2004
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Fj4RB4f-vyJVGmRzBjIeM7QkxY0(Lcom/android/server/audio/AdiDeviceState;Lcom/android/server/audio/AdiDeviceState;)Lcom/android/server/audio/AdiDeviceState;
    .locals 1

    .line 153
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 155
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$GiQeq_GwW5_ihd-5JQyF4n6GjNo(Lcom/android/server/audio/AudioDeviceInventory;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$isCurrentDeviceConnected$38(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KMmbLCKyIVVmOEbRcwb2c5mUT88(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dp$31(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KilBp2uKyUFQmXixg5Lud5vHNZE(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .locals 2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8Y_GTscMoYhbtX6sAeAgchIhNY(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForStrategy$23(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MVfpEx3HdZZ2Yl46fqtd4OkmY2M(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$purgeDevicesRoles_l$26(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NGcpIyRmlGpMhFvy8CK7ZRM5syo(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$addDevicesRoleForCapturePresetInt$16(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ni-7vZ6LfHwRAgAae8hqI8JZ-sc(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$addDevicesRoleForStrategy$21(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NvZl-72QdIlDvWAoW5diECSsJ2E(Lcom/android/server/audio/AudioDeviceInventory;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectHearingAid$35(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OdrMd3MT6ZlRe1Jp8S9FY9k9jbQ(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$14(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQ2y-cFLpsalbjv_wnQ2dadr_a0(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/audio/AdiDeviceState;Lcom/android/server/audio/AdiDeviceState;)Lcom/android/server/audio/AdiDeviceState;
    .locals 2

    .line 223
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    .line 224
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    const/4 p2, 0x1

    .line 226
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-object p1
.end method

.method public static synthetic $r8$lambda$QQrEKBO50Y59ImKNVdO-4QnMa7w(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForStrategy$24(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TybcgZqThcPh-9RWiv5k7nTIxRM(Lcom/android/server/audio/AudioDeviceInventory;IILandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectLeAudio$37(IILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZrNAjreNSJ_VzC43TliU3phDdI(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForCapturePreset$18(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WmaFiyuLvCqQClVdfDzP5w2wRyQ(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XxehrWeMU3Y-uL-bY5GB6XlK84A(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$removeDevicesRoleForCapturePresetInt$17(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y97du0_fRV1Cami185QrZFQiYxg(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    .line 2019
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_0

    .line 2020
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Zc09Axx1WmpzDRhhp3_QnrTQ9UE(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    .line 1980
    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 1981
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$aU_7GbpLfAxmss3qY1sQNzpyQN0(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$setDevicesRoleForCapturePreset$19(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b6DmpzgIgcV9GiOgI4G0KMJJpCk(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 1

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cbRc7PCkdQ1d1Dios-De8H9mY8A(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$12(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTIciBIrIBohyfHVo_SpWowlIFo(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$removeDevicesRoleForStrategy$22(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h_z-NM9CPm1APoDUGWIGGnGojvc(Ljava/io/PrintWriter;Ljava/lang/Integer;)V
    .locals 2

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kD-2oVR0646zwr9QgXHELH-31e4(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;Ljava/util/List;)V
    .locals 2

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "preset: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " role:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzao3eyMm5COSl8jNw-irWsdGW4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "strategy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lADSeRxuJ2VLR7M7dTO-RWjMjzE(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "capturePreset:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " devices:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJYVBLK82t56_QmmxAqaDxd7xJI(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type:0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") addr:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p3}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 760
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1jZvhV5_g0DXAaMGaIUycMZ_MA(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 1802
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$npd0RnVVySh6v54qvNpaXxxZ4VI(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$clearDevicesRoleForCapturePreset$20(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oqrdAiylfg0f1D8LjYpib2rajGc(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectA2dpSink$33(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_o3SyyCekiSrCL5hOcPO8gfRCI(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    .line 1803
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1804
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$u-8GH9DcPTZOZ9Aa2Zd9hNaoCwg(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;I)Z
    .locals 0

    .line 1256
    iget p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$vDJjZx3YLThQhD2bB-1H8i8-VOo(Lcom/android/server/audio/AudioDeviceInventory;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$reapplyExternalDevicesRoles$13(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0mhWBgDP8f1DzVhlvU3GbZmOlg(Lcom/android/server/audio/AudioDeviceInventory;IILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$purgeDevicesRoles_l$27(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const v0, 0x8000

    .line 114
    invoke-static {}, Lcom/android/server/audio/AdiDeviceState;->getPeristedMaxSize()I

    move-result v1

    div-int/2addr v0, v1

    sput v0, Lcom/android/server/audio/AudioDeviceInventory;->MAX_DEVICE_INVENTORY_ENTRIES:I

    .line 1173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    const/4 v1, 0x4

    .line 1174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    .line 1175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x20000

    .line 1176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1177
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x7

    .line 2253
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    .line 2877
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    .line 2878
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2879
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x400

    .line 2880
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x800

    .line 2881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2882
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x8000000

    .line 2883
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x20000000

    .line 2884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x20000002

    .line 2885
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2886
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2887
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2888
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :array_0
    .array-data 4
        0x1
        0x5
        0x6
        0x7
        0x9
        0xa
        0x7cf
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 1

    .line 591
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioSystemAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 2

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mLastMusicBTdeviceConnected:I

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 474
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 548
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    .line 551
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 556
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 561
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 572
    new-instance v1, Landroid/media/AudioRoutesInfo;

    invoke-direct {v1}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 573
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 577
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 581
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    .line 585
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    .line 1618
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    .line 1620
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    .line 1630
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    .line 1632
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    .line 602
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 603
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 604
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    .line 605
    const-string/jumbo p1, "persist.bluetooth.enable_dual_mode_audio"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    return-void
.end method

.method public static devicesListEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1705
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1709
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 1711
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 1712
    invoke-virtual {v0, v3}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 175
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 181
    invoke-virtual {p0, p3, p1}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 187
    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p1

    if-eq p1, p4, :cond_3

    if-nez p5, :cond_2

    if-eqz p4, :cond_3

    .line 189
    :cond_2
    invoke-virtual {v1, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 190
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 191
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 193
    :cond_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_4
    new-instance p3, Lcom/android/server/audio/AdiDeviceState;

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result p5

    invoke-direct {p3, p5, p1, p2}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    .line 198
    invoke-virtual {p3, p4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 200
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 203
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 204
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    .line 205
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addAudioDeviceWithCategoryInInventoryIfNeeded(Ljava/lang/String;I)V
    .locals 12

    .line 242
    const-string v3, ""

    const/4 v5, 0x1

    const/high16 v1, 0x20000000

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 244
    const-string v9, ""

    const/4 v11, 0x1

    const/16 v7, 0x80

    move-object v6, v0

    move-object v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public final addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .locals 4

    .line 1643
    monitor-enter p1

    .line 1644
    :try_start_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1650
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1651
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1652
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1656
    :cond_1
    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1658
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p0, 0x0

    .line 1659
    monitor-exit p1

    return p0

    .line 1661
    :cond_3
    invoke-interface {p2, p3, p4, v1}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_4

    .line 1663
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1664
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :cond_4
    monitor-exit p1

    return p2

    .line 1667
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addDevicesRoleForCapturePresetInt(IILjava/util/List;)I
    .locals 6

    .line 1534
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final addDevicesRoleForStrategy(IILjava/util/List;Z)I
    .locals 6

    if-eqz p4, :cond_0

    .line 1577
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_0
    move-object v1, p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 6

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->updateAudioDeviceCategory()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 218
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 221
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4, p1, v5}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 230
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 231
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 236
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_2
    return-void

    .line 231
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceId()Landroid/util/Pair;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v2, p1, v3}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceInventorySize_l()V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public applyConnectedDevicesRoles()V
    .locals 1

    .line 2370
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2371
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 2372
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final applyConnectedDevicesRoles_l()V
    .locals 18

    move-object/from16 v0, p0

    .line 2266
    iget-boolean v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 2269
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 2270
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v1

    .line 2271
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 2272
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v2

    .line 2273
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 2274
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v3

    .line 2275
    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 2276
    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v4

    .line 2277
    sget-object v5, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 2278
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    .line 2279
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2280
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 2281
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v9, v7

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 2283
    :goto_1
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v11, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    const/4 v12, 0x0

    if-nez v11, :cond_5

    goto :goto_2

    .line 2284
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v10, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v10, :cond_6

    .line 2286
    new-instance v12, Landroid/media/AudioDeviceAttributes;

    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v10, v10, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v12, v10}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 2289
    :cond_6
    :goto_2
    sget-boolean v10, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    const-string v11, "AS.AudioDeviceInventory"

    if-eqz v10, :cond_7

    .line 2290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applyConnectedDevicesRoles_l\n - leOutDevice: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - leInDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - a2dpDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - scoOutDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - scoInDevice: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n - disableA2dp: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableSco: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_7
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2300
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 2303
    :cond_9
    new-instance v3, Landroid/media/AudioDeviceAttributes;

    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v10}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2305
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_a

    .line 2306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  + checking Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_a
    invoke-virtual {v3, v12}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    .line 2312
    :cond_b
    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothOutDevice(I)Z

    move-result v4

    const-string v5, ", disable: "

    const/4 v10, 0x2

    if-eqz v4, :cond_14

    .line 2313
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mStrategies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 2315
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v14

    iget-object v15, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v15, v15, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v14, v15, :cond_e

    .line 2316
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v14

    if-eqz v14, :cond_d

    if-nez v9, :cond_c

    .line 2317
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v14

    if-nez v14, :cond_11

    :cond_c
    :goto_5
    move v14, v7

    goto :goto_7

    .line 2318
    :cond_d
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2319
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v14

    :goto_6
    xor-int/2addr v14, v7

    goto :goto_7

    .line 2322
    :cond_e
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v14

    if-eqz v14, :cond_f

    if-nez v8, :cond_c

    .line 2323
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_5

    .line 2324
    :cond_f
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez v9, :cond_c

    .line 2325
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_5

    .line 2326
    :cond_10
    iget v14, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v14}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2327
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isOutputOnlyModeEnabled()Z

    move-result v14

    goto :goto_6

    :cond_11
    const/4 v14, 0x0

    .line 2330
    :goto_7
    sget-boolean v15, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v15, :cond_12

    .line 2331
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const-string v6, "     - strategy: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    const/16 v16, 0x0

    :goto_8
    if-eqz v14, :cond_13

    .line 2335
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    new-array v13, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v13, v16

    .line 2337
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 2335
    invoke-virtual {v0, v6, v10, v13, v7}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    goto/16 :goto_4

    .line 2339
    :cond_13
    invoke-virtual {v13}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v6

    new-array v13, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v13, v16

    .line 2341
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 2339
    invoke-virtual {v0, v6, v10, v13, v7}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForStrategy(IILjava/util/List;Z)I

    goto/16 :goto_4

    :cond_14
    const/16 v16, 0x0

    .line 2345
    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Landroid/media/AudioSystem;->isBluetoothInDevice(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2346
    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->CAPTURE_PRESETS:[I

    array-length v6, v4

    move/from16 v13, v16

    :goto_9
    if-ge v13, v6, :cond_8

    aget v14, v4, v13

    .line 2348
    iget v15, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v15}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v15

    if-eqz v15, :cond_16

    if-nez v9, :cond_15

    .line 2349
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v15

    if-nez v15, :cond_17

    :cond_15
    move v15, v7

    goto :goto_a

    .line 2350
    :cond_16
    iget v15, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v15}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 2351
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->isDuplexModeEnabled()Z

    move-result v15

    xor-int/2addr v15, v7

    goto :goto_a

    :cond_17
    move/from16 v15, v16

    .line 2353
    :goto_a
    sget-boolean v17, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v17, :cond_18

    .line 2354
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      - capturePreset: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-eqz v15, :cond_19

    const/4 v7, 0x1

    .line 2358
    new-array v10, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v10, v16

    .line 2359
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v15, 0x2

    .line 2358
    invoke-virtual {v0, v14, v15, v10}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForCapturePresetInt(IILjava/util/List;)I

    goto :goto_b

    :cond_19
    const/4 v7, 0x1

    const/4 v15, 0x2

    .line 2361
    new-array v10, v7, [Landroid/media/AudioDeviceAttributes;

    aput-object v3, v10, v16

    .line 2362
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 2361
    invoke-virtual {v0, v14, v15, v10}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForCapturePresetInt(IILjava/util/List;)I

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move v10, v15

    goto :goto_9

    :cond_1a
    :goto_c
    return-void
.end method

.method public final checkDeviceInventorySize_l()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sget v1, Lcom/android/server/audio/AudioDeviceInventory;->MAX_DEVICE_INVENTORY_ENTRIES:I

    if-le v0, v1, :cond_0

    .line 325
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    .line 326
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 327
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method

.method public checkProfileIsConnected(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2391
    :cond_0
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_BLE_SET:Ljava/util/Set;

    .line 2393
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 2385
    :cond_1
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 2379
    :cond_2
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 2380
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return p1
.end method

.method public final checkSendBecomingNoisyIntentInt(III)I
    .locals 7

    .line 2897
    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.checkSendBecomingNoisyIntentInt"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2899
    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2902
    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    .line 2900
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 2903
    const-string v1, "AS.AudioDeviceInventory"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2904
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not sending NOISY: state="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 2908
    :cond_1
    sget-object p2, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "not sending NOISY: device=0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in set "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 2915
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 2916
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2917
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v5}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    iget v6, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 2918
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2919
    iget v5, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2920
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOISY: adding 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    if-nez p3, :cond_5

    .line 2924
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    .line 2925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOISY: musicDevice changing from NONE to 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2925
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :cond_5
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v4

    .line 2933
    invoke-static {p2, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result p2

    .line 2934
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v5

    if-eq p1, p3, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    const v6, 0x8000

    if-eq p3, v6, :cond_8

    .line 2939
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2940
    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2943
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string p2, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {p1, p2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p1, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2943
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2945
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    .line 2948
    :cond_7
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    const/16 v2, 0x3e8

    goto :goto_2

    .line 2951
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not sending NOISY: device:0x"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " musicDevice:0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inComm:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mediaPolicy:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " singleDevice:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2951
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :goto_2
    sget-object p0, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2
.end method

.method public clearDeviceInventory()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 469
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I
    .locals 2

    .line 1759
    monitor-enter p1

    .line 1760
    :try_start_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1761
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    .line 1763
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1765
    invoke-interface {p2, p3, p4, v0}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_1

    .line 1767
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    :cond_1
    monitor-exit p1

    return p2

    .line 1770
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearDevicesRoleForCapturePreset(II)I
    .locals 2

    .line 1559
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I

    move-result p0

    return p0
.end method

.method public final clearDevicesRoleForStrategy(IIZ)I
    .locals 1

    if-eqz p3, :cond_0

    .line 1604
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    :goto_0
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;II)I

    move-result p0

    return p0
.end method

.method public final clearPreferredDevicesForCapturePreset(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1527
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public clearPreferredDevicesForCapturePresetAndSave(I)I
    .locals 3

    .line 1514
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1515
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1516
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->clearPreferredDevicesForCapturePreset(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->saveClearPreferredDevicesForCapturePreset(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1521
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1515
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1522
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 9

    .line 3107
    const-string p0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3108
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    goto/16 :goto_3

    .line 3112
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3113
    new-array v0, p0, [I

    .line 3114
    invoke-static {p2, v0}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "listAudioPorts error "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in configureHdmiPlugIntent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceInventory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3119
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/media/AudioPort;

    .line 3120
    instance-of v4, v3, Landroid/media/AudioDevicePort;

    if-nez v4, :cond_2

    goto :goto_0

    .line 3123
    :cond_2
    check-cast v3, Landroid/media/AudioDevicePort;

    .line 3124
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/16 v5, 0x400

    if-eq v4, v5, :cond_3

    .line 3125
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, 0x40000

    if-eq v4, v5, :cond_3

    .line 3126
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const v5, 0x40001

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 3130
    :cond_3
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v4

    .line 3131
    array-length v5, v4

    if-lez v5, :cond_6

    .line 3132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3133
    array-length v6, v4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_5

    aget v8, v4, v7

    if-eqz v8, :cond_4

    .line 3136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3139
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    invoke-direct {v5}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 3140
    const-string v5, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3144
    :cond_6
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_8

    aget v7, v3, v5

    .line 3145
    invoke-static {v7}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v7

    if-le v7, v6, :cond_7

    move v6, v7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3150
    :cond_8
    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method public final disconnectA2dp()V
    .locals 5

    .line 1976
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1977
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1979
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda31;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda31;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1984
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dp"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectA2dp"

    .line 1985
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 1986
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1987
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 1988
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 1991
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1995
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

.method public final disconnectA2dpSink()V
    .locals 5

    .line 1999
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2000
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2002
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda34;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda34;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2007
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dpSink"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectA2dpSink"

    .line 2008
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2009
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2010
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2011
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final disconnectHeadset()V
    .locals 4

    .line 2106
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2108
    iget v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 2115
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2117
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_2
    return-void

    .line 2115
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final disconnectHearingAid()V
    .locals 5

    .line 2015
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2016
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2018
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda38;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda38;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2023
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectHearingAid"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectHearingAid"

    .line 2024
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2025
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2026
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 2027
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 2029
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda39;

    invoke-direct {v3, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2033
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

.method public disconnectLeAudio(I)V
    .locals 5

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_0

    const v0, 0x20000002

    if-eq p1, v0, :cond_0

    .line 2068
    const-string p0, "AS.AudioDeviceInventory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectLeAudio: Can\'t disconnect not LE Audio device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2075
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;

    invoke-direct {v3, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda29;-><init>(ILandroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 2081
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectLeAudio"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "disconnectLeAudio"

    .line 2082
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 2083
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2084
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 2085
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    .line 2088
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/audio/AudioDeviceInventory;II)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2092
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public disconnectLeAudioBroadcast()V
    .locals 1

    const v0, 0x20000002

    .line 2100
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public disconnectLeAudioUnicast()V
    .locals 1

    const/high16 v0, 0x20000000

    .line 2096
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudio(I)V

    return-void
.end method

.method public final dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V
    .locals 5

    .line 3190
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3194
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 3196
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ICapturePresetDevicesRoleDispatcher;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/ICapturePresetDevicesRoleDispatcher;->dispatchDevicesRoleChanged(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3199
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchDevicesRoleForCapturePreset "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3202
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchNonDefaultDevice(ILjava/util/List;)V
    .locals 5

    .line 3173
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3176
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3177
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 3179
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyNonDefaultDevicesDispatcher;->dispatchNonDefDevicesChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3182
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchNonDefaultDevice "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3185
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchPreferredDevice(ILjava/util/List;)V
    .locals 5

    .line 3156
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3159
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3160
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->anonymizeAudioDeviceAttributesListUnchecked(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 3162
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyPreferredDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDevicesDispatcher;->dispatchPrefDevicesChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3165
    :goto_2
    const-string v3, "AS.AudioDeviceInventory"

    const-string v4, "dispatchPreferredDevice "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3168
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BECOMING_NOISY_INTENT_DEVICES_SET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Preferred devices for strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Non-default devices for strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Connected devices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "APM Connected device (A2DP sink only):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda15;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Preferred devices for capture preset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda16;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for strategies (from API):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda17;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for strategies (internal):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda18;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for presets (from API):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda19;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Applied devices roles for presets (internal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda20;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 783
    const-string p2, "\ndevices:\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter p2

    .line 785
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AdiDeviceState;

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 788
    :cond_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;
    .locals 5

    .line 416
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothA2dpOutDevice(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothLeOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    goto :goto_0

    .line 420
    :cond_1
    invoke-static {p2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    sget-object p2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    goto :goto_0

    :cond_2
    const/high16 v0, 0x8000000

    if-ne p2, v0, :cond_5

    .line 423
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 430
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    if-eqz v2, :cond_3

    .line 433
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 436
    :cond_4
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    return-object v1
.end method

.method public findDeviceStateForAudioDeviceAttributes(Landroid/media/AudioDeviceAttributes;I)Lcom/android/server/audio/AdiDeviceState;
    .locals 5

    .line 452
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 455
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getDeviceType()I

    move-result v3

    if-ne v3, p2, :cond_0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 458
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v2

    .line 461
    :cond_2
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAndUpdateBtAdiDeviceStateCategoryForAddress(Ljava/lang/String;)I
    .locals 4

    const/high16 v0, 0x20000000

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 255
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x80

    .line 259
    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 262
    invoke-virtual {v3}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result p0

    if-eqz v0, :cond_1

    if-eq p0, v2, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found different audio device category for A2DP and BLE profiles with address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioDeviceInventory"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0

    :cond_2
    return v2
.end method

.method public final getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .line 2675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2676
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2677
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2678
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2679
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2682
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 0

    .line 2140
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object p0
.end method

.method public getDeviceIdentityAddresses(Landroid/media/AudioDeviceAttributes;)Ljava/util/List;
    .locals 3

    .line 3206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    .line 3208
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 3207
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3209
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3210
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz p0, :cond_1

    .line 3212
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3213
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3215
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    .line 3216
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3217
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3220
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDeviceOfType(I)Landroid/media/AudioDeviceAttributes;
    .locals 2

    .line 2687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2688
    :cond_0
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDeviceSettings()Ljava/lang/String;
    .locals 4

    .line 3226
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    .line 3229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3230
    invoke-static {}, Lcom/android/server/audio/AdiDeviceState;->getPeristedMaxSize()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3232
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3233
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3234
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3236
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3237
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3238
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3240
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 3241
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstConnectedDeviceAttributesOfTypes(Ljava/util/Set;)Landroid/media/AudioDeviceAttributes;
    .locals 2

    .line 2666
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2667
    :cond_0
    new-instance p1, Landroid/media/AudioDeviceAttributes;

    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .locals 0

    .line 2658
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    .line 2659
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    return-object p0
.end method

.method public getImmutableDeviceInventory()Ljava/util/Collection;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move/from16 v2, p5

    .line 1854
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v8

    .line 1855
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 1856
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1857
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_1

    .line 1858
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDeviceConnection("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " dev:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " address:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceSwitch: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1858
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, -0x80000000

    and-int v5, v8, v4

    if-ne v5, v4, :cond_0

    .line 1865
    invoke-static {v8}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1867
    :cond_0
    invoke-static {v8}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1869
    :goto_0
    const-string v5, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleDeviceConnection("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " dev:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] address:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1869
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_1
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.handleDeviceConnection"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 1876
    invoke-virtual {v4, v5, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1877
    invoke-static {v8}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_2

    .line 1879
    const-string v7, "connect"

    goto :goto_1

    :cond_2
    const-string v7, "disconnect"

    .line 1878
    :goto_1
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 1880
    invoke-virtual {v4, v5, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v13

    .line 1882
    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1883
    :try_start_0
    invoke-static {v8, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 1885
    const-string v5, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceKey:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    .line 1887
    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v5, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 1890
    const-string v12, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x1

    const-string v15, "deviceInfo:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " is(already)Connected:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/16 v17, 0x1

    :goto_4
    if-ne v6, v11, :cond_8

    .line 1895
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceConnection() deviceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    .line 1896
    const-string v2, ""

    goto :goto_5

    :cond_6
    const-string v2, "dis"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1895
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_7

    .line 1898
    const-string v1, "connect"

    goto :goto_6

    :cond_7
    const-string v1, "disconnect"

    .line 1897
    :goto_6
    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1898
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1899
    monitor-exit v14

    return v17

    :cond_8
    if-eqz v6, :cond_e

    if-nez v11, :cond_e

    if-eqz p3, :cond_9

    const/4 v11, 0x0

    goto :goto_7

    .line 1906
    :cond_9
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    move/from16 v7, v17

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v7, v11, v11}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v2

    if-eqz v3, :cond_a

    .line 1910
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleDeviceConnection(connected dev:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", res="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1910
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v11, v2

    :goto_7
    if-eqz v11, :cond_b

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not connecting device 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to command error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v13, v1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v2, "disconnected"

    .line 1918
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1919
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1920
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APM failed to make available device 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    const/4 v15, 0x1

    .line 1923
    invoke-virtual {v1, v15, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1920
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1924
    monitor-exit v14

    const/16 v16, 0x0

    return v16

    :cond_b
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v2, 0x400

    if-eq v8, v2, :cond_d

    const/high16 v2, 0x40000

    if-eq v8, v2, :cond_d

    const v2, 0x40001

    if-ne v8, v2, :cond_c

    goto :goto_8

    .line 1933
    :cond_c
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, v8, v9, v10}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1930
    :cond_d
    :goto_8
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1931
    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAudioProfiles()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1930
    invoke-virtual {v2, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    :goto_9
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    move/from16 v7, v16

    goto :goto_a

    :cond_e
    move/from16 v15, v17

    const/4 v7, 0x0

    if-nez v6, :cond_10

    if-eqz v11, :cond_10

    .line 1938
    iget-object v9, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v9, v1, v7, v7, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v1

    if-eqz v3, :cond_f

    .line 1942
    const-string v2, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleDeviceConnection(disconnected dev:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", res="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1942
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_f
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_10
    move v15, v7

    :goto_a
    if-eqz v15, :cond_16

    .line 1950
    invoke-static {v8}, Landroid/media/AudioSystem;->isBluetoothScoDevice(I)Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v6, :cond_11

    move-object/from16 v1, p4

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    .line 1951
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    if-nez v6, :cond_12

    .line 1953
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    goto :goto_c

    .line 1955
    :cond_12
    const-string v3, ""

    .line 1956
    invoke-static {v10}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move v1, v8

    move-object v2, v10

    .line 1955
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1958
    :goto_c
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-static {v8}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "source"

    goto :goto_d

    :cond_13
    const-string/jumbo v3, "sink"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " device addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_14

    .line 1961
    const-string v3, " now available"

    goto :goto_e

    :cond_14
    const-string v3, " made unavailable"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    .line 1962
    invoke-virtual {v1, v7, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1958
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1964
    :cond_15
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "connected"

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    goto :goto_f

    .line 1966
    :cond_16
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceSpec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v1, "disconnected"

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1970
    :goto_f
    monitor-exit v14

    return v15

    :goto_10
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/16 v0, 0x80

    .line 3271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 3270
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getConnectedDevicesOfTypes(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 3272
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->isBtDeviceCategoryFixed()Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x80

    .line 279
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->findBtDeviceStateForAddress(Ljava/lang/String;I)Lcom/android/server/audio/AdiDeviceState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->isBtDeviceCategoryFixed()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isCurrentDeviceConnected()Z
    .locals 2

    .line 2866
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .locals 1

    .line 1834
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1835
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1834
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1836
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1837
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1838
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isHearingAidConnected()Z
    .locals 1

    const/high16 v0, 0x8000000

    .line 2651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 2650
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$addDevicesRoleForCapturePresetInt$16(IILjava/util/List;)I
    .locals 0

    .line 1535
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$addDevicesRoleForStrategy$21(IILjava/util/List;)I
    .locals 0

    .line 1579
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$clearDevicesRoleForCapturePreset$20(IILjava/util/List;)I
    .locals 0

    .line 1560
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$clearDevicesRoleForStrategy$25(IILjava/util/List;)I
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$disconnectA2dp$31(ILjava/lang/String;)V
    .locals 0

    .line 1992
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$disconnectA2dpSink$33(Ljava/lang/String;)V
    .locals 0

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$disconnectHearingAid$35(ILjava/lang/String;)V
    .locals 0

    .line 2030
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$disconnectLeAudio$37(IILandroid/util/Pair;)V
    .locals 1

    .line 2089
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableLater(Ljava/lang/String;III)V

    return-void
.end method

.method public final synthetic lambda$isCurrentDeviceConnected$38(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .locals 0

    .line 2867
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object p0, p0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$purgeDevicesRoles_l$26(IILjava/util/List;)I
    .locals 0

    .line 1776
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$purgeDevicesRoles_l$27(IILjava/util/List;)I
    .locals 0

    .line 1778
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$12(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 839
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    return-void
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$13(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    .line 842
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    return-void
.end method

.method public final synthetic lambda$reapplyExternalDevicesRoles$14(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1

    .line 847
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    .line 846
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    return-void
.end method

.method public final synthetic lambda$removeDevicesRoleForCapturePresetInt$17(IILjava/util/List;)I
    .locals 0

    .line 1543
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeDevicesRoleForStrategy$22(IILjava/util/List;)I
    .locals 0

    .line 1588
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForCapturePreset$18(IILjava/util/List;)I
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForCapturePreset$19(IILjava/util/List;)I
    .locals 0

    .line 1553
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForStrategy$23(IILjava/util/List;)I
    .locals 0

    .line 1597
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setDevicesRoleForStrategy$24(IILjava/util/List;)I
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public final makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;ILjava/lang/String;)V
    .locals 9

    .line 2205
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2206
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v7, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2213
    new-instance p3, Landroid/media/AudioDeviceAttributes;

    const/16 v8, 0x80

    invoke-direct {p3, v8, v3, v0}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v7, p2, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p3

    .line 2220
    const-string v1, "AS.AudioDeviceInventory"

    if-eqz p3, :cond_0

    .line 2221
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM failed to make available A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    invoke-static {v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {v4, v7, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p3

    .line 2221
    invoke-virtual {v2, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    .line 2229
    :cond_0
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP sink device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    invoke-static {v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " now available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {v4, v2, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 2229
    invoke-virtual {p3, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2234
    :goto_0
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->clearA2dpSuspended(Z)V

    .line 2236
    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object p3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2237
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x80

    move v6, p2

    move-object v4, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p2, v3

    move-object v3, v4

    .line 2238
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object p3

    .line 2239
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p3, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 2245
    invoke-virtual {p0, p2, v7}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2247
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2250
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 2249
    const-string v4, ""

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 3

    .line 2510
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    const-string/jumbo v2, "makeA2dpDeviceUnavailableLater"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpSuspended(ZZLjava/lang/String;)V

    const/16 v0, 0x80

    .line 2514
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2515
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v1, :cond_0

    .line 2516
    iget v1, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2519
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpTimeout(Ljava/lang/String;II)V

    return-void
.end method

.method public final makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V
    .locals 8

    .line 2454
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.device.a2dp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 2455
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "makeA2dpDeviceUnavailableNow"

    .line 2456
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2459
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "address null"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_0
    const/16 v1, 0x80

    .line 2463
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2465
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    .line 2467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AS.AudioDeviceInventory"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 2469
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2DP device "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2470
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " made unavailable, was not used"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {p2, v4, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2469
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2473
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "A2DP device made unavailable, was not used"

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 2475
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 2480
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->clearAvrcpAbsoluteVolumeSupported()V

    .line 2481
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2483
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v5, v2, v4, p2, p3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 2487
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM failed to made unavailable A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v4, v2, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2487
    invoke-virtual {p3, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    .line 2492
    :cond_2
    sget-object p2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP device addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " made unavailable, deviceSwitch: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v5, v4, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 2492
    invoke-virtual {p2, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2497
    :goto_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2500
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2501
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2502
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2503
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    return-void
.end method

.method public final makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 8

    .line 2527
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    const/high16 v2, -0x7ffe0000

    invoke-direct {v1, v2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v0

    .line 2531
    const-string v1, "AS.AudioDeviceInventory"

    if-eqz v0, :cond_0

    .line 2532
    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APM failed to make available A2DP source device addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v5, v3, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 2532
    invoke-virtual {v4, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    .line 2540
    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP source device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " now available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v3, v4, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 2540
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2544
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 2545
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 4

    .line 2551
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/high16 v1, -0x7ffe0000

    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2553
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    .line 2557
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 2558
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2557
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 2564
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 2566
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    .line 2568
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2570
    new-instance p4, Landroid/media/AudioDeviceAttributes;

    invoke-direct {p4, v1, p1, p2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2573
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0, p4, v2, v3, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    .line 2584
    sget-object p4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hearing Aid device addr="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " now available"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 2584
    invoke-virtual {p4, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HearingAid made available addr="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, v3, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 2597
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 2598
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v2, v1, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p4, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    .line 2601
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v0, "makeHearingAidDeviceAvailable"

    invoke-virtual {p4, p3, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 2603
    invoke-virtual {p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2605
    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v5, 0x8000000

    .line 2604
    const-string v7, ""

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 2606
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p1, "audio.device.makeHearingAidDeviceAvailable"

    invoke-direct {p0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz v6, :cond_0

    move-object p4, v6

    goto :goto_0

    .line 2607
    :cond_0
    const-string p4, ""

    :goto_0
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2609
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p4

    .line 2608
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    .line 2610
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 2612
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p2

    .line 2611
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 2613
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeHearingAidDeviceUnavailable(Ljava/lang/String;Z)V
    .locals 4

    .line 2618
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    const/high16 v1, 0x8000000

    invoke-direct {v0, v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2620
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    .line 2624
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 2625
    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2624
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2627
    invoke-virtual {p0, p2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2628
    new-instance p0, Landroid/media/MediaMetrics$Item;

    const-string p2, "audio.device.makeHearingAidDeviceUnavailable"

    invoke-direct {p0, p2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2629
    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 2631
    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object p2

    .line 2630
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 2632
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final makeHearingAidDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 2

    .line 2639
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    const/high16 v1, 0x8000000

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setHearingAidTimeout(Ljava/lang/String;I)V

    return-void
.end method

.method public final makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    .line 2696
    iget v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0xa

    move v9, v1

    .line 2697
    :goto_0
    iget v11, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 2699
    const-string/jumbo v1, "makeLeAudioDeviceAvailable"

    if-eqz v11, :cond_7

    .line 2700
    iget-object v2, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 2701
    iget-object v2, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 2704
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioDeviceGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 2707
    const-string v4, ""

    const/4 v5, 0x1

    if-eq v3, v8, :cond_2

    .line 2708
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 2709
    invoke-virtual {v10, v3}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(I)Ljava/util/List;

    move-result-object v10

    .line 2710
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v5, :cond_2

    .line 2711
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 2712
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2713
    iget-object v10, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 2714
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    goto :goto_1

    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v18, v17

    :goto_1
    const v10, 0x20000002

    if-ne v11, v10, :cond_3

    .line 2721
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2722
    const-string v2, "Broadcast"

    :cond_3
    move-object v12, v2

    .line 2728
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    move-object/from16 v10, p4

    invoke-virtual {v2, v5, v4, v10}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 2730
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, v11, v13, v12}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v10, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    move/from16 v15, p3

    invoke-virtual {v10, v2, v5, v15, v4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result v2

    .line 2733
    const-string v10, "AS.AudioDeviceInventory"

    if-eqz v2, :cond_4

    .line 2734
    sget-object v14, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APM failed to make available LE Audio device addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2736
    invoke-static {v13}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2737
    invoke-virtual {v8, v2, v10}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v4

    .line 2734
    invoke-virtual {v14, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_3

    .line 2744
    :cond_4
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LE Audio "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    invoke-static {v11}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "source"

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "sink"

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " device addr="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    invoke-static {v13}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " now available"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 2747
    invoke-virtual {v4, v5, v10}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v4

    .line 2744
    invoke-virtual {v2, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2748
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateCommunicationRoute(Ljava/lang/String;)V

    .line 2751
    :goto_3
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->clearLeAudioSuspended(Z)V

    .line 2752
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v11, v13}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v5, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2754
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v3

    invoke-direct/range {v10 .. v18}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v2, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    iget-boolean v2, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v2, :cond_6

    .line 2757
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v11}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    const/4 v5, 0x0

    .line 2758
    invoke-virtual {v0, v12, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2761
    :cond_6
    invoke-static {v13}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v8, v1

    move v1, v11

    move-object v2, v13

    move-object/from16 v3, v17

    .line 2760
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->addAudioDeviceInInventoryIfNeeded(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_7
    move-object v8, v1

    .line 2763
    :goto_4
    iget-boolean v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    if-ne v7, v1, :cond_8

    return-void

    .line 2772
    :cond_8
    iget v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mLastMusicBTdeviceConnected:I

    const/high16 v3, 0x20000000

    const/16 v4, 0x80

    if-ne v2, v4, :cond_9

    if-ne v11, v3, :cond_9

    if-ne v9, v1, :cond_9

    .line 2775
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v9

    :cond_9
    if-ne v11, v3, :cond_a

    .line 2779
    iput v11, v0, Lcom/android/server/audio/AudioDeviceInventory;->mLastMusicBTdeviceConnected:I

    :cond_a
    const/4 v1, -0x1

    if-eq v9, v1, :cond_b

    .line 2788
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->getMaxVssVolumeForStream(I)I

    move-result v1

    .line 2789
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v9, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    const/4 v1, 0x3

    if-ne v7, v1, :cond_c

    .line 2791
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v9, v11, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_5

    .line 2796
    :cond_b
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v11}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result v1

    .line 2797
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v7}, Lcom/android/server/audio/AudioDeviceBroker;->getMaxVssVolumeForStream(I)I

    move-result v2

    .line 2798
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    .line 2799
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v7, v11, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    .line 2803
    :cond_c
    :goto_5
    iget-object v1, v6, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public final makeLeAudioDeviceUnavailableLater(Ljava/lang/String;III)V
    .locals 3

    .line 2843
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    const-string/jumbo v2, "makeLeAudioDeviceUnavailableLater"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setLeAudioSuspended(ZZLjava/lang/String;)V

    .line 2846
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->setLeAudioTimeout(Ljava/lang/String;III)V

    return-void
.end method

.method public final makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2811
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p2, p1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;)V

    .line 2812
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v0, p3, p4}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    move-result p3

    .line 2816
    const-string v1, "AS.AudioDeviceInventory"

    const-string/jumbo v2, "sink"

    const-string/jumbo v3, "source"

    if-eqz p3, :cond_1

    .line 2817
    sget-object p4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM failed to make unavailable LE Audio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    invoke-static {p2}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " device addr="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2821
    invoke-virtual {v4, p3, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p3

    .line 2817
    invoke-virtual {p4, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    .line 2824
    :cond_1
    sget-object p3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LE Audio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    invoke-static {p2}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device addr="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-static {p1}, Landroid/media/Utils;->anonymizeBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " made unavailable, deviceSwitch: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v4, v0, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p4

    .line 2824
    invoke-virtual {p3, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2830
    :goto_0
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x0

    .line 2833
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    .line 2834
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 2835
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->purgeDevicesRoles_l()V

    return-void
.end method

.method public onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZI)I
    .locals 14

    move/from16 v1, p2

    .line 998
    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.onBluetoothDeviceConfigChange"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 1000
    invoke-static/range {p4 .. p4}, Lcom/android/server/audio/BtHelper;->deviceEventToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    .line 1003
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1005
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v0, "btDevice null"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v4

    .line 1008
    :cond_0
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_1

    .line 1009
    const-string v5, "AS.AudioDeviceInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBluetoothDeviceConfigChange btDevice="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_1
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    .line 1013
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1014
    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1015
    const-string v6, ""

    .line 1017
    :cond_2
    sget-object v7, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onBluetoothDeviceConfigChange addr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-static/range {p4 .. p4}, Lcom/android/server/audio/BtHelper;->deviceEventToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1021
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v9, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    invoke-static {v8, v9}, Lcom/android/server/audio/BtHelper;->getTypeFromProfile(IZ)I

    move-result v8

    .line 1023
    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1024
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v11, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v10, v3, v11}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpConnection(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1025
    new-instance p0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v0, "A2dp config change ignored (scheduled connection change)"

    invoke-direct {p0, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceInventory"

    .line 1027
    invoke-virtual {p0, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    .line 1025
    invoke-virtual {v7, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1028
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v0, "A2dp config change ignored"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1029
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1030
    monitor-exit v9

    return v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    .line 1032
    :cond_3
    invoke-static {v8, v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1033
    iget-object v10, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v10, :cond_4

    .line 1035
    const-string p0, "AS.AudioDeviceInventory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid null DeviceInfo in onBluetoothDeviceConfigChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v0, "null DeviceInfo"

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1037
    monitor-exit v9

    return v4

    .line 1040
    :cond_4
    sget-object v11, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, v11, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    sget-object v12, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 1041
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    sget-object v12, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 1042
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v12, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v11, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v12, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 1043
    invoke-virtual {v5, v11, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    if-nez p4, :cond_8

    .line 1046
    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/4 v11, 0x2

    if-eq v5, v11, :cond_5

    const/16 v11, 0x16

    if-eq v5, v11, :cond_5

    const/16 v11, 0x1a

    if-ne v5, v11, :cond_7

    :cond_5
    if-eqz p3, :cond_7

    .line 1050
    iput v1, v10, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    .line 1051
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v8, v10}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 1054
    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v10

    .line 1052
    invoke-virtual {v5, v8, v6, v10, v1}, Lcom/android/server/audio/AudioSystemAdapter;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1056
    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APM handleDeviceConfigChange failed for device addr="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " codec="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceInventory"

    const/4 v6, 0x1

    .line 1060
    invoke-virtual {v5, v6, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1056
    invoke-virtual {v7, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1064
    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    invoke-direct {v1, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I

    goto :goto_0

    .line 1067
    :cond_6
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APM handleDeviceConfigChange success for device addr="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " codec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-static {v1}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceInventory"

    .line 1071
    invoke-virtual {v0, v4, v1}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 1067
    invoke-virtual {v7, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 v4, 0x1f4

    :cond_7
    :goto_0
    if-nez p3, :cond_8

    .line 1077
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V

    .line 1080
    :cond_8
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return v4

    .line 1080
    :goto_1
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onBtProfileDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 2059
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBtProfileDisconnected: Not a valid profile to disconnect "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2059
    const-string p1, "AS.AudioDeviceInventory"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2052
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioUnicast()V

    return-void

    .line 2049
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHearingAid()V

    return-void

    .line 2055
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectLeAudioBroadcast()V

    return-void

    .line 2046
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dpSink()V

    return-void

    .line 2043
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectA2dp()V

    return-void

    .line 2040
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->disconnectHeadset()V

    return-void
.end method

.method public onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1087
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V

    .line 1088
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMakeHearingAidDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1099
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;Z)V

    .line 1100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMakeLeAudioDeviceUnavailableNow(Ljava/lang/String;II)V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1093
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V

    .line 1094
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReportNewRoutes()V
    .locals 5

    .line 1148
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    if-lez v0, :cond_0

    .line 1150
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onReportNewRoutes"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    .line 1151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1152
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1154
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 1155
    :try_start_0
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 1156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1159
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    .line 1161
    :try_start_1
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1163
    const-string v3, "AS.AudioDeviceInventory"

    const-string/jumbo v4, "onReportNewRoutes"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1156
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1168
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method public onRestoreDevices()V
    .locals 9

    .line 801
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 805
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 806
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v5, Landroid/media/AudioDeviceAttributes;

    iget v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v7, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;IIZ)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 828
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 829
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    .line 830
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    return-void

    .line 830
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V
    .locals 9

    .line 859
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    .line 860
    const-string v0, "AS.AudioDeviceInventory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetBtActiveDevice, btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 862
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 863
    invoke-static {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectionStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDeviceSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", device=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 865
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", streamType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    const-string v0, ""

    .line 874
    :cond_1
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 877
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetBtActiveDevice"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 878
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    .line 880
    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    .line 881
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    .line 883
    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "onSetBtActiveDevice"

    .line 884
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 886
    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 888
    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 889
    const-string v3, "connected"

    goto :goto_0

    :cond_2
    const-string v3, "disconnected"

    .line 887
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 890
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 892
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->-$$Nest$smmakeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_4

    .line 898
    iget v7, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-eq v7, v4, :cond_4

    move v7, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_4
    move v7, v3

    :goto_2
    if-nez v6, :cond_5

    .line 900
    iget v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v6, v4, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v3

    .line 903
    :goto_3
    iget v8, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-eq v8, v5, :cond_12

    if-eq v8, v4, :cond_d

    const/16 v3, 0xb

    if-eq v8, v3, :cond_b

    const/16 v3, 0x1a

    if-eq v8, v3, :cond_9

    const/16 v3, 0x15

    if-eq v8, v3, :cond_7

    const/16 v3, 0x16

    if-ne v8, v3, :cond_6

    goto :goto_4

    .line 970
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid profile "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 971
    invoke-static {p1}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz v7, :cond_8

    .line 943
    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_8
    if-eqz v6, :cond_14

    .line 945
    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onSetBtActiveDevice"

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 952
    iget p2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iget p3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceUnavailableNow(Ljava/lang/String;IIZ)V

    goto/16 :goto_6

    :cond_a
    if-eqz v6, :cond_14

    .line 956
    const-string/jumbo v0, "onSetBtActiveDevice"

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeLeAudioDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IILjava/lang/String;)V

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    if-eqz v6, :cond_14

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    if-eqz v7, :cond_e

    .line 913
    iget p2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;IZ)V

    goto :goto_6

    :cond_e
    if-eqz v6, :cond_14

    .line 921
    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mLastMusicBTdeviceConnected:I

    const/high16 v2, 0x20000000

    const/4 v3, -0x1

    if-ne v0, v2, :cond_f

    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    if-ne v0, v3, :cond_f

    .line 923
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 924
    invoke-virtual {v0, p3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getVolumeForDeviceIgnoreMute(II)I

    move-result p3

    goto :goto_5

    :cond_f
    move p3, v3

    .line 927
    :goto_5
    iget v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mVolume:I

    if-eq v0, v3, :cond_10

    mul-int/lit8 p3, v0, 0xa

    .line 930
    :cond_10
    iget v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iput v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mLastMusicBTdeviceConnected:I

    if-eq p3, v3, :cond_11

    .line 933
    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v0, v0, 0xa

    const-string/jumbo v3, "onSetBtActiveDevice"

    const/4 v4, 0x3

    invoke-virtual {p3, v4, v0, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    .line 938
    :cond_11
    const-string/jumbo p3, "onSetBtActiveDevice"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;ILjava/lang/String;)V

    goto :goto_6

    .line 961
    :cond_12
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioDeviceBroker;->isScoManagedByAudio()Z

    move-result p2

    if-eqz p2, :cond_14

    if-eqz v7, :cond_13

    .line 963
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-boolean p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_6

    :cond_13
    if-eqz v6, :cond_14

    .line 965
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 973
    :cond_14
    :goto_6
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .locals 13

    .line 1182
    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1184
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v2, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1186
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetWiredDeviceConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1188
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    .line 1190
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 1192
    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez v3, :cond_0

    .line 1193
    const-string v3, "disconnected"

    goto :goto_0

    :cond_0
    const-string v3, "connected"

    .line 1191
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1195
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1197
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1196
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 1198
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 1200
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v7

    iget-object v8, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v8}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v8

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 1206
    :goto_2
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1207
    :try_start_0
    iget v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v5, 0x1

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    .line 1208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1209
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v7, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    .line 1213
    :cond_3
    :goto_3
    iget-object v8, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    iget v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v4, v5, :cond_4

    move v9, v5

    goto :goto_4

    :cond_4
    move v9, v3

    :goto_4
    iget-boolean v10, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;Z)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1217
    sget-object p0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string p1, "change of connection state failed"

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 1218
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1219
    monitor-exit v2

    return-void

    .line 1221
    :cond_5
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz p0, :cond_7

    .line 1222
    sget-object p0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1223
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {p0, v3, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    .line 1226
    :cond_6
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    :cond_7
    const/16 p0, 0x400

    if-ne v0, p0, :cond_8

    .line 1229
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    .line 1231
    :cond_8
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez p0, :cond_a

    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1233
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1232
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v6, :cond_9

    .line 1235
    iget-object p0, v7, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->dispatchPreferredMixerAttributesChangedCausedByDeviceRemoved(Landroid/media/AudioDeviceInfo;)V

    goto :goto_5

    .line 1238
    :cond_9
    const-string p0, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find AudioDeviceInfo to notify preferred mixer attributes change for type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1239
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1238
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_a
    :goto_5
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 1243
    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1242
    invoke-virtual {v7, v0, p0, v3, v4}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget p0, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-virtual {v7, v0, p0}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    .line 1245
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    .line 1245
    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 1

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->synchronizeBleDeviceInInventory(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->synchronizeDeviceProfilesInInventory(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 317
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->postPersistAudioDeviceSettings()V

    return-void
.end method

.method public onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDeviceInInventory_l(Lcom/android/server/audio/AdiDeviceState;)V

    goto :goto_0

    .line 304
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 304
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 305
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onToggleHdmi()V
    .locals 12

    const/high16 v0, 0x40000

    const v1, 0x40001

    const/16 v2, 0x400

    .line 1250
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    .line 1253
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1254
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1255
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1258
    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.onToggleHdmi"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 1260
    invoke-static {v6}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v6

    .line 1259
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    .line 1261
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    iget v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 1263
    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    iget-object v8, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioProfiles:Ljava/util/List;

    iget-object v11, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mAudioDescriptors:Ljava/util/List;

    const/4 v6, 0x2

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1268
    const-string/jumbo v3, "onToggleHdmi"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)I

    .line 1270
    const-string/jumbo v3, "onToggleHdmi"

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7, v3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)I

    .line 1272
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1275
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUpdateLeAudioGroupAddresses(I)V
    .locals 8

    .line 1113
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1117
    iget v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mGroupId:I

    if-ne v4, p1, :cond_0

    .line 1118
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getLeAudioGroupAddresses(I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1121
    :cond_1
    :goto_1
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1123
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1124
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 1125
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    goto :goto_2

    .line 1129
    :cond_3
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1131
    const-string v4, ""

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 1132
    const-string v4, ""

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerIdentityDeviceAddress:Ljava/lang/String;

    .line 1134
    :cond_4
    :goto_2
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1136
    iget-object v6, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1137
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceIdentityAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 1144
    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final purgeDevicesRoles_l()V
    .locals 2

    .line 1775
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    return-void
.end method

.method public final purgeRoles(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;)V
    .locals 8

    .line 1786
    monitor-enter p1

    const/4 p0, 0x3

    .line 1787
    :try_start_0
    invoke-static {p0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 1791
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1793
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1795
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1796
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1797
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1798
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 1801
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda36;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda36;-><init>(Landroid/media/AudioDeviceAttributes;)V

    .line 1802
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;

    invoke-direct {v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda37;-><init>(Landroid/media/AudioDeviceAttributes;)V

    .line 1803
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1805
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    .line 1806
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceInfo;

    if-nez v4, :cond_1

    .line 1809
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_2

    .line 1810
    const-string v4, "AS.AudioDeviceInventory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "purgeRoles() removing device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", for strategy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and role: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1814
    :cond_2
    :goto_2
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/media/AudioDeviceAttributes;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v4, v5, v3}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    .line 1815
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 1818
    :cond_3
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1822
    :cond_4
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reapplyExternalDevicesRoles()V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 837
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 838
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 841
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 849
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;Z)V
    .locals 0

    .line 1566
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;Z)V
    .locals 0

    .line 1485
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;Z)V
    .locals 0

    .line 1475
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I
    .locals 5

    .line 1457
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1458
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1459
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1461
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 1465
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveRemoveDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1467
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1468
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1458
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1468
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .locals 4

    .line 1674
    monitor-enter p1

    .line 1675
    :try_start_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1676
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    .line 1678
    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1680
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1682
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1683
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1684
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1687
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p0, 0x0

    .line 1688
    monitor-exit p1

    return p0

    .line 1690
    :cond_3
    invoke-interface {p2, p3, p4, v1}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_5

    .line 1692
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1693
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1694
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1696
    :cond_4
    invoke-virtual {p1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    :cond_5
    :goto_1
    monitor-exit p1

    return p2

    .line 1700
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeDevicesRoleForCapturePresetInt(IILjava/util/List;)I
    .locals 6

    .line 1542
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final removeDevicesRoleForStrategy(IILjava/util/List;Z)I
    .locals 6

    if-eqz p4, :cond_0

    .line 1586
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_0
    move-object v1, p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceInventory;->removeDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removePreferredDevicesForStrategy(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1413
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IIZ)I

    move-result p0

    return p0
.end method

.method public removePreferredDevicesForStrategyAndSave(I)I
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1402
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->removePreferredDevicesForStrategy(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1404
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->saveRemovePreferredDevices(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1407
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1401
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1408
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public removePreferredDevicesForStrategyInt(I)I
    .locals 10

    .line 1418
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreferredDevicesForStrategyInt, strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1419
    const-string v2, "AS.AudioDeviceInventory"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1418
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    .line 1421
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IIZ)I

    move-result p0

    .line 1423
    const-string/jumbo v1, "ms"

    const-string v5, ", "

    if-nez p0, :cond_0

    .line 1424
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePreferredDevicesForStrategyInt APM removed, strategy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 1424
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return p0

    .line 1428
    :cond_0
    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePreferredDevicesForStrategyInt APM fail to removed, strategy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v6, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 1428
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return p0
.end method

.method public final saveClearPreferredDevicesForCapturePreset(I)V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public final saveRemoveDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1334
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final saveRemovePreferredDevices(I)V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public final saveSetDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1312
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1321
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1322
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    :cond_2
    return-void
.end method

.method public final saveSetPreferredDevices(ILjava/util/List;)V
    .locals 3

    .line 1281
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1284
    invoke-interface {v0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1286
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 1294
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method public final saveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1343
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public final sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2969
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    const-string v6, "AS.AudioDeviceInventory"

    if-eqz v5, :cond_1

    .line 2970
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " state:0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " address:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " name:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ");"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2970
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v7, -0x80000000

    and-int v12, v1, v7

    if-ne v12, v7, :cond_0

    .line 2975
    invoke-static {v1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2977
    :cond_0
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    .line 2979
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] address:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2979
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/16 v8, 0x4000

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/high16 v11, -0x7e000000

    .line 2987
    const-string/jumbo v13, "microphone"

    const-string v14, "android.intent.action.HEADSET_PLUG"

    const-string v15, ""

    const/4 v12, 0x1

    if-eq v1, v11, :cond_7

    if-eq v1, v10, :cond_6

    const/4 v10, 0x0

    if-eq v1, v9, :cond_5

    const/16 v9, 0x400

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_5

    const/high16 v9, 0x20000

    if-eq v1, v9, :cond_5

    const/high16 v9, 0x4000000

    if-eq v1, v9, :cond_2

    const/high16 v9, 0x40000

    if-eq v1, v9, :cond_4

    const v9, 0x40001

    if-eq v1, v9, :cond_4

    goto :goto_1

    .line 2999
    :cond_2
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3001
    invoke-static {v11, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_3

    move v10, v12

    .line 3000
    :cond_3
    invoke-virtual {v7, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 3017
    :cond_4
    invoke-virtual {v0, v7, v2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2995
    :cond_5
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2996
    invoke-virtual {v7, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2989
    :cond_6
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2990
    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    const/high16 v9, 0x4000000

    .line 3005
    invoke-static {v9, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_b

    .line 3007
    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3008
    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3021
    :goto_1
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    if-eqz v5, :cond_b

    .line 3023
    const-string v0, "Headset Plugged-out broadcast is not send.Action is null"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-nez v2, :cond_a

    .line 3033
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-ne v1, v14, :cond_a

    const/high16 v9, 0x4000000

    .line 3034
    invoke-static {v9, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_9

    const/16 v1, 0x8

    .line 3036
    invoke-static {v1, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_9

    .line 3038
    invoke-static {v8, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_9

    const/4 v1, 0x4

    .line 3040
    invoke-static {v1, v15}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_a

    :cond_9
    if-eqz v5, :cond_b

    .line 3043
    const-string v0, "Headset Plugged-out broadcast is not send.Still headset is Plugged-in"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3050
    :cond_a
    const-string/jumbo v1, "state"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3051
    const-string v1, "address"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3052
    const-string/jumbo v1, "portName"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 3054
    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3058
    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3061
    throw v0

    :cond_b
    return-void
.end method

.method public setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)I
    .locals 5

    .line 2149
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2150
    :try_start_0
    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mSupprNoisy:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v3, 0x16

    const/4 v4, 0x2

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_1

    :cond_0
    iget-boolean v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-nez v3, :cond_2

    :cond_1
    const/16 v3, 0x15

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_4

    :cond_2
    iget-boolean v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsDeviceSwitch:Z

    if-nez v1, :cond_4

    .line 2158
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v1, v4, :cond_3

    const/4 v2, 0x1

    .line 2161
    :cond_3
    iget v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mAudioSystemDevice:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mMusicDevice:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2167
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_5

    .line 2168
    const-string v1, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothActiveDevice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " delay(ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;I)V

    .line 2171
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .locals 2

    .line 2853
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 2854
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2855
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2857
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2858
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 2859
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 2861
    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDeviceAsNonDefaultForStrategyAndSave(ILandroid/media/AudioDeviceAttributes;)I
    .locals 5

    .line 1439
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1440
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1441
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1443
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/android/server/audio/AudioDeviceInventory;->addDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetDeviceAsNonDefault(ILandroid/media/AudioDeviceAttributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1449
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1450
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1440
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1450
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setDeviceSettings(Ljava/lang/String;)V
    .locals 4

    .line 3245
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->clearDeviceInventory()V

    .line 3246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\\|"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3249
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3250
    invoke-static {v3}, Lcom/android/server/audio/AdiDeviceState;->fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/AdiDeviceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3254
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateDeviceSAStateInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 3255
    invoke-virtual {p0, v3, v1}, Lcom/android/server/audio/AudioDeviceInventory;->addOrUpdateAudioDeviceCategoryInInventory(Lcom/android/server/audio/AdiDeviceState;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I
    .locals 2

    .line 1729
    monitor-enter p1

    .line 1730
    :try_start_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1731
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p6, v0}, Lcom/android/server/audio/AudioDeviceInventory;->devicesListEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1734
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1736
    :cond_0
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    monitor-exit p1

    return v1

    .line 1741
    :cond_1
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 1742
    invoke-interface {p3, p4, p5, p2}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_3

    .line 1744
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1747
    :cond_2
    invoke-interface {p2, p4, p5, p6}, Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;->deviceRoleAction(IILjava/util/List;)I

    move-result p2

    if-nez p2, :cond_3

    .line 1749
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    :cond_3
    :goto_0
    monitor-exit p1

    return p2

    .line 1753
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 7

    .line 1550
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setDevicesRoleForStrategy(IILjava/util/List;Z)I
    .locals 7

    if-eqz p4, :cond_0

    .line 1595
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    :goto_0
    move-object v1, p4

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRole(Landroid/util/ArrayMap;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;Lcom/android/server/audio/AudioDeviceInventory$AudioSystemInterface;IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setPreferredDevicesForCapturePreset(ILjava/util/List;)I
    .locals 1

    const/4 v0, 0x1

    .line 1509
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForCapturePresetAndSave(ILjava/util/List;)I
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1497
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1499
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1502
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1496
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1503
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setPreferredDevicesForStrategy(ILjava/util/List;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1374
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method public setPreferredDevicesForStrategyAndSave(ILjava/util/List;)I
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1361
    :try_start_0
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1362
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1364
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->saveSetPreferredDevices(ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1367
    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1361
    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    .line 1368
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setPreferredDevicesForStrategyInt(ILjava/util/List;)I
    .locals 7

    .line 1380
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredDevicesForStrategyInt, strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " devices: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1382
    const-string v2, "AS.AudioDeviceInventory"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v1

    .line 1380
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v1, 0x1

    .line 1384
    invoke-virtual {p0, p1, v1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IILjava/util/List;Z)I

    move-result p0

    if-nez p0, :cond_0

    .line 1387
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", APM made devices: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "preferred device in"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 1387
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return p0

    .line 1392
    :cond_0
    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", APM fail to set devices: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 1392
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return p0
.end method

.method public setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2

    .line 2192
    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    const-string v1, "com.android.server.audio"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 2194
    iput-boolean p1, v0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 2195
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    return-void
.end method

.method public setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Z)I
    .locals 5

    .line 2177
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 2181
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    .line 2180
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2183
    :cond_0
    :goto_0
    const-string v2, "AS.AudioDeviceInventory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWiredDeviceConnectionState(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance p4, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p0, p4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    .line 2186
    monitor-exit v0

    return v1

    .line 2187
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3

    .line 2132
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 2133
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 2134
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2135
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 2136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synchronizeBleDeviceInInventory(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 10

    .line 336
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 337
    iget v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "AS.AudioDeviceInventory"

    const-string/jumbo v6, "synchronizeBleDeviceInInventory synced device pair ads1="

    if-eqz v3, :cond_5

    .line 341
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AdiDeviceState;

    .line 342
    iget v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v9

    if-ne v8, v9, :cond_2

    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    .line 343
    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 347
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-ne v0, v1, :cond_4

    .line 348
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 349
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 350
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 352
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 354
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v7, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 355
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ads2="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v4

    .line 361
    :cond_5
    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mPeerDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AdiDeviceState;

    .line 363
    iget v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v9

    if-ne v8, v9, :cond_6

    iget-object v8, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 364
    invoke-virtual {v7}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 367
    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 368
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->isSADevice(Lcom/android/server/audio/AdiDeviceState;)Z

    move-result v1

    if-ne v0, v1, :cond_8

    .line 369
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 370
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 371
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 373
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 375
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v7, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 376
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " peer ads2="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v4

    :cond_9
    return v2
.end method

.method public final synchronizeDeviceProfilesInInventory(Lcom/android/server/audio/AdiDeviceState;)Z
    .locals 5

    .line 388
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AdiDeviceState;

    .line 389
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 395
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 396
    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "synchronizeDeviceProfilesInInventory synced device pair ads1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ads2="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.AudioDeviceInventory"

    .line 398
    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 0

    .line 1571
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V
    .locals 0

    .line 1490
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 0

    .line 1480
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final updateAudioRoutes(II)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/16 v3, 0x400

    if-eq p1, v3, :cond_1

    const/16 v3, 0x1000

    if-eq p1, v3, :cond_4

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const v0, 0x40001

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 3089
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1

    if-nez v0, :cond_5

    .line 3091
    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3093
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eqz p2, :cond_6

    or-int p2, v3, v0

    goto :goto_1

    :cond_6
    not-int p2, v0

    and-int/2addr p2, v3

    :goto_1
    if-eq p2, v3, :cond_7

    .line 3100
    iput p2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 3101
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    .line 3103
    :cond_7
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBluetoothPreferredModes_l(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9

    .line 2406
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2409
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2410
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2411
    iget v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v3}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 2412
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 2415
    :cond_2
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->getPreferredAudioProfiles(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2416
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_3

    .line 2417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBluetoothPreferredModes_l processing device address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", preferredProfiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_3
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 2421
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 2422
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 2425
    :cond_5
    iget v6, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v6}, Lcom/android/server/audio/BtHelper;->getProfileFromType(I)I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 2430
    :cond_6
    const-string v7, "audio_mode_duplex"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2429
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    move-result v8

    if-eq v8, v6, :cond_8

    if-nez v8, :cond_7

    goto :goto_2

    .line 2434
    :cond_7
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeDisabled(Ljava/lang/String;)V

    goto :goto_3

    .line 2432
    :cond_8
    :goto_2
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeEnabled(Ljava/lang/String;)V

    .line 2437
    :goto_3
    const-string v7, "audio_mode_output_only"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2436
    invoke-virtual {p0, v8}, Lcom/android/server/audio/AudioDeviceInventory;->checkProfileIsConnected(I)I

    move-result v8

    if-eq v8, v6, :cond_a

    if-nez v8, :cond_9

    goto :goto_4

    .line 2441
    :cond_9
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeDisabled(Ljava/lang/String;)V

    goto :goto_1

    .line 2439
    :cond_a
    :goto_4
    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->setModeEnabled(Ljava/lang/String;)V

    goto :goto_1

    .line 2444
    :cond_b
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2446
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    if-eqz p1, :cond_d

    .line 2448
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postNotifyPreferredAudioProfileApplied(Landroid/bluetooth/BluetoothDevice;)V

    :cond_d
    :goto_5
    return-void
.end method
