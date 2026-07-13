.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mIndexMinNoPerm:I

.field public mIndexStepFactor:F

.field public mIsMuted:Z

.field public mIsMutedInternally:Z

.field public mObservedDeviceSet:Ljava/util/Set;

.field public final mStreamDevicesChanged:Landroid/content/Intent;

.field public final mStreamDevicesChangedOptions:Landroid/os/Bundle;

.field public final mStreamType:I

.field public final mVolumeChanged:Landroid/content/Intent;

.field public final mVolumeChangedOptions:Landroid/os/Bundle;

.field public mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

.field public mVolumeIndexSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIndexMap(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMax(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIndexMin(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStreamType(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasValidSettingsName(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misMutable(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isMutable()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 3

    .line 9862
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9797
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9812
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    const/4 p1, 0x0

    .line 9814
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    .line 9815
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 9817
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    .line 9819
    new-instance p1, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 9863
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 9865
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 9866
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 9867
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p3

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 9869
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateIndexFactors()V

    .line 9870
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 9872
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 9873
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    .line 9874
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9875
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 9878
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 9880
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 9879
    invoke-virtual {p1, p2, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 p2, 0x2

    .line 9881
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 9882
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChangedOptions:Landroid/os/Bundle;

    .line 9884
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    .line 9885
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9886
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 9887
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 9889
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 9888
    invoke-virtual {p1, v2, p3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 9890
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 9892
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;Z)Z
    .locals 1

    .line 10222
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public applyAllVolumes()V
    .locals 13

    .line 10171
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 10175
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_8

    .line 10176
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    if-eq v9, v5, :cond_7

    .line 10178
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v0

    :goto_1
    move v10, v3

    goto :goto_4

    .line 10180
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10181
    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misA2dpAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10182
    invoke-static {v9}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 10191
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10192
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_2
    const/high16 v4, 0x8000000

    if-ne v9, v4, :cond_3

    .line 10195
    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    :goto_2
    move v10, v5

    goto :goto_4

    .line 10197
    :cond_3
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    .line 10186
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v9}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10187
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    goto :goto_2

    .line 10189
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    goto :goto_2

    .line 10200
    :goto_4
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 10201
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v6

    const/4 v12, 0x0

    const/16 v7, 0x3ee

    const/4 v8, 0x2

    move-object v11, p0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    :cond_6
    move-object v11, p0

    .line 10206
    :goto_5
    invoke-virtual {v11, v4, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    move v3, v10

    goto :goto_6

    :cond_7
    move-object v11, p0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object p0, v11

    goto/16 :goto_0

    :cond_8
    move-object v11, p0

    .line 10211
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    .line 10214
    :cond_9
    invoke-virtual {v11, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    div-int/lit8 v0, p0, 0xa

    .line 10216
    :goto_7
    invoke-virtual {v11, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    .line 10217
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 1

    .line 10148
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 10150
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10151
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misA2dpAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10152
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10159
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10160
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_2
    const/high16 v0, 0x8000000

    if-ne p1, v0, :cond_3

    .line 10162
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 10164
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 10154
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misAbsoluteVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10155
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 10157
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 10167
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    return-void
.end method

.method public checkFixedVolumeDevices()V
    .locals 5

    .line 10596
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10598
    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 10599
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10600
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 10601
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 10602
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFullVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10603
    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misFixedVolumeDevice(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 10604
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 10606
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10609
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doMute()V
    .locals 9

    .line 10575
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    .line 10582
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10588
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 10624
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10625
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 10626
    const-string v0, "   Muted Internally: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10627
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 10628
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10629
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10630
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq v0, v1, :cond_0

    .line 10631
    const-string v0, " w/o perm:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10632
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 10634
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10636
    :goto_0
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10637
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 10638
    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 10639
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10640
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-lez v0, :cond_1

    .line 10642
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10644
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 10645
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 10646
    const-string v1, "default"

    goto :goto_2

    .line 10647
    :cond_2
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 10648
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10649
    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10650
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10651
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10653
    :cond_3
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10654
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    .line 10655
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10657
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10658
    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10659
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10660
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 10661
    const-string v0, "   Volume Group: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10662
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string/jumbo p0, "n/a"

    :goto_3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getIndex(I)I
    .locals 3

    .line 10358
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 10362
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10364
    :cond_0
    :goto_0
    monitor-exit v0

    return p1

    .line 10365
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIndexStepFactor()F
    .locals 0

    .line 9975
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    return p0
.end method

.method public getMaxIndex()I
    .locals 0

    .line 10392
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public getMinIndex()I
    .locals 0

    .line 10399
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0
.end method

.method public getMinIndex(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 10408
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    return p0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 1

    .line 10044
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10047
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10048
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10049
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p0

    .line 10051
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    .line 10592
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return p0
.end method

.method public final getValidIndex(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 10613
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_0
    if-ge p1, p2, :cond_1

    return p2

    .line 10616
    :cond_1
    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, p2, :cond_2

    goto :goto_1

    :cond_2
    return p1

    .line 10617
    :cond_3
    :goto_1
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return p0
.end method

.method public hasIndexForDevice(I)Z
    .locals 2

    .line 10386
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10387
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 10388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasValidSettingsName()Z
    .locals 0

    .line 10055
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFullyMuted()Z
    .locals 1

    .line 10522
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

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

.method public final isMutable()Z
    .locals 2

    .line 10527
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10528
    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$smisCallStream(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public mute(ZLjava/lang/String;)Z
    .locals 2

    .line 10489
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 10490
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(ZZLjava/lang/String;)Z

    move-result p2

    .line 10491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 10493
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$mbroadcastMuteSetting(Lcom/android/server/audio/AudioService;IZ)V

    :cond_0
    return p2

    :catchall_0
    move-exception p0

    .line 10491
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public mute(ZZLjava/lang/String;)Z
    .locals 6

    .line 10541
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10542
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 10544
    sget-object v3, Lcom/android/server/audio/AudioService;->sMuteLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v5, p1, p3}, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p1, :cond_1

    .line 10547
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {p3, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamMutedByRingerOrZenMode(Lcom/android/server/audio/AudioService;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10548
    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to unmute stream "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " despite ringer-zen muted stream 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    .line 10550
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 10548
    invoke-static {p1, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10552
    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget p2, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;-><init>(II)V

    invoke-virtual {v3, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10555
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10557
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p2, :cond_2

    .line 10559
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    .line 10562
    :cond_2
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public muteInternally(Z)Z
    .locals 4

    .line 10505
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10506
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eq p1, v1, :cond_0

    .line 10508
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    .line 10510
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 10512
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 10514
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0x9

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v2, v3, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_1
    return v1

    .line 10512
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public observeDevicesForStream_syncVSS(Z)Ljava/util/Set;
    .locals 7

    .line 10007
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemServer(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10008
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    .line 10010
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10011
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetDeviceSetForStreamDirect(Lcom/android/server/audio/AudioService;I)Ljava/util/Set;

    move-result-object v0

    .line 10012
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10013
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0

    .line 10018
    :cond_1
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v4

    .line 10019
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v3

    .line 10021
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 10024
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    .line 10027
    :cond_2
    sget-object p1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_3

    .line 10028
    invoke-static {v0, v3, v4}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    .line 10032
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 10033
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 10034
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 10035
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x20

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10040
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0
.end method

.method public readSettings()V
    .locals 11

    .line 10070
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 10073
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 10074
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 10079
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x7

    if-ne v1, v4, :cond_1

    goto :goto_3

    .line 10089
    :cond_1
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v2, :cond_2

    .line 10095
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    .line 10097
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 10100
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v7

    .line 10101
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v7, v6, v10}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    :goto_2
    if-ne v6, v5, :cond_4

    goto :goto_0

    .line 10108
    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v6, v6, 0xa

    invoke-virtual {p0, v6, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 10111
    :cond_5
    monitor-exit v0

    return-void

    .line 10081
    :cond_6
    :goto_3
    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    .line 10082
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10083
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 10085
    :cond_7
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 10086
    monitor-exit v0

    return-void

    .line 10111
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 10421
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 10424
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 10427
    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 10428
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 10429
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 10430
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10433
    :cond_1
    iget-object p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    .line 10434
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 10435
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 10436
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 10437
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v4, v3, v0, v5}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v3

    const/4 v4, 0x1

    .line 10439
    invoke-virtual {p0, v3, v1, p2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 4

    const/4 v0, 0x0

    .line 10446
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10447
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 10231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10232
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10233
    :try_start_0
    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10234
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    move/from16 v8, p1

    .line 10235
    invoke-virtual {v0, v8, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v8

    .line 10238
    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    .line 10239
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 10240
    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    move v9, v8

    .line 10242
    :goto_0
    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v11, 0x1

    if-eq v7, v9, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 10250
    :goto_1
    iget-object v13, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v14, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v13, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    if-ne v1, v13, :cond_2

    move v13, v11

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 10251
    :goto_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    sub-int/2addr v14, v11

    :goto_3
    const/4 v11, -0x1

    if-ltz v14, :cond_7

    .line 10253
    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v15, v14}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 10254
    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v14, v10, :cond_3

    sget-object v10, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    .line 10255
    invoke-virtual {v10, v14, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget v11, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v10, v11, :cond_3

    if-nez v12, :cond_4

    .line 10256
    invoke-virtual {v15, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v16, v7

    goto :goto_6

    .line 10258
    :cond_4
    :goto_4
    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v11, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10259
    invoke-static {v10, v8, v11, v14}, Lcom/android/server/audio/AudioService;->-$$Nest$mrescaleIndex(Lcom/android/server/audio/AudioService;III)I

    move-result v10

    .line 10260
    invoke-virtual {v15, v10, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v11

    if-eqz v13, :cond_5

    move/from16 v16, v7

    .line 10263
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    .line 10264
    invoke-virtual {v7, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 10263
    invoke-virtual {v15, v10, v7, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v7

    or-int/2addr v11, v7

    goto :goto_5

    :cond_5
    move/from16 v16, v7

    :goto_5
    if-eqz v11, :cond_6

    .line 10268
    invoke-static {v14}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    .line 10269
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x5

    div-int/lit8 v10, v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move/from16 v7, v16

    goto :goto_3

    :cond_7
    move/from16 v16, v7

    if-eqz v12, :cond_9

    .line 10274
    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_9

    if-ne v1, v7, :cond_9

    const/4 v3, 0x0

    .line 10276
    :goto_7
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_9

    .line 10277
    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 10278
    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 10279
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    if-eqz v12, :cond_10

    const/4 v3, 0x0

    .line 10285
    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    add-int/lit8 v7, v16, 0x5

    .line 10287
    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v9, v9, 0x5

    .line 10288
    div-int/lit8 v9, v9, 0xa

    .line 10290
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v3, :cond_b

    if-nez v2, :cond_a

    .line 10293
    const-string v1, "AS.AudioService"

    const-string v3, "No caller for volume_changed event"

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10295
    :cond_a
    iget v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v1, v7, v9, v3, v2}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    :cond_b
    if-eq v9, v7, :cond_10

    if-eqz v13, :cond_10

    .line 10304
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10305
    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 10306
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmIsSingleVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v2, :cond_10

    .line 10307
    :cond_c
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10309
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10311
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10313
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothSco(Lcom/android/server/audio/AudioService;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 10314
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v8, 0x6

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v2, v8

    goto :goto_8

    .line 10318
    :cond_d
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10321
    :goto_8
    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10324
    iget v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v1, :cond_f

    .line 10325
    const-string v1, ""

    .line 10326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 10327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aliased streams: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10330
    :cond_e
    sget-object v3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;

    invoke-direct {v4, v2, v1, v9, v7}, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10333
    iget v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v4, :cond_f

    .line 10334
    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v8, v1, v9, v7}, Lcom/android/server/audio/AudioServiceEvents$VolChangedBroadcastEvent;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 10339
    :cond_f
    iget-object v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChangedOptions:Landroid/os/Bundle;

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10340
    iget v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v1, :cond_10

    .line 10343
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10347
    iget-object v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10352
    :cond_10
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v12

    :catchall_1
    move-exception v0

    goto :goto_a

    .line 10353
    :goto_9
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 10354
    :goto_a
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setSettingName(Ljava/lang/String;)V
    .locals 0

    .line 10059
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 10060
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p0, :cond_0

    .line 10061
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setSettingName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setStreamVolumeIndex(II)V
    .locals 2

    .line 10126
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothSco(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    :cond_0
    if-eqz p1, :cond_1

    .line 10131
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    int-to-float v1, v0

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexStepFactor()F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    const/high16 p1, 0x40a00000    # 5.0f

    add-float/2addr v1, p1

    float-to-int p1, v1

    div-int/lit8 p1, p1, 0xa

    .line 10141
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setStreamVolumeIndexAS(IIZI)I

    return-void
.end method

.method public setVolumeGroupState(Lcom/android/server/audio/AudioService$VolumeGroupState;)V
    .locals 0

    .line 9968
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p1, :cond_0

    .line 9970
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setSettingName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateIndexFactors()V
    .locals 8

    .line 9901
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    .line 9902
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v2, v1

    .line 9903
    monitor-enter p0

    .line 9904
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 9905
    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v6, 0x6

    aget v7, v5, v6

    aget v5, v5, v2

    if-le v7, v5, :cond_0

    mul-int/lit8 v7, v7, 0xa

    .line 9907
    iput v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 9916
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothComm(Lcom/android/server/audio/AudioService;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9918
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmBtCommDeviceActive(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 9919
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, v6

    mul-int/lit8 v1, v0, 0xa

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 9921
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    goto :goto_1

    .line 9923
    :cond_1
    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9925
    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    goto :goto_2

    .line 9927
    :cond_2
    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    .line 9928
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0xa

    sget-object v7, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v6, v7, v6

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    .line 9933
    :goto_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v2, :cond_3

    .line 9934
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$fputmIndexMin(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 9937
    :cond_3
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 9939
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9947
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result v0

    .line 9949
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIndexFactors() stream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " index min/max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " indexStepFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioService"

    .line 9952
    invoke-virtual {v2, v3, v5}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v2

    .line 9949
    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-eqz v0, :cond_5

    .line 9954
    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed initStreamVolume with status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioService"

    .line 9955
    invoke-virtual {v2, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object v0

    .line 9954
    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 9956
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const-string/jumbo v5, "updateIndexFactors()"

    const/16 v6, 0x7d0

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_5
    return-void

    .line 9939
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateNoPermMinIndex(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0xa

    .line 9985
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    .line 9986
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_0

    .line 9987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mIndexMinNoPerm for stream "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9988
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :cond_0
    return-void
.end method

.method public final updateVolumeGroupIndex(IZ)V
    .locals 6

    .line 10456
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10458
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v2, :cond_5

    .line 10459
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 10460
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_0

    .line 10461
    const-string v3, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVolumeGroupIndex for stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", muted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10463
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Muted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 10464
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", forceMuteState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10461
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 10467
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    .line 10469
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10472
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz p2, :cond_1

    .line 10473
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 10475
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 10474
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$smisCallStream(I)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    .line 10472
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    .line 10478
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10479
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 10478
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 10479
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
