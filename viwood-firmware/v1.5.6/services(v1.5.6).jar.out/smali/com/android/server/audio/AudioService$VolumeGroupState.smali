.class public Lcom/android/server/audio/AudioService$VolumeGroupState;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field public mHasValidStreamType:Z

.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mIsMuted:Z

.field public mPublicStreamType:I

.field public mSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$gCNLKhwqvcsugo2bjA3Lt37fh-s(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 9786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIndexMin(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/audio/AudioService$VolumeGroupState;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misVssMuteBijective(Lcom/android/server/audio/AudioService$VolumeGroupState;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->persistVolumeGroup(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 5

    .line 9295
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9280
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 9283
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    const/4 v1, 0x3

    .line 9284
    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 9285
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 9286
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 9296
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9297
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_0

    .line 9298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeGroupState for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9301
    :cond_0
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 9302
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9303
    iput-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 9307
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v1

    .line 9309
    array-length v2, v1

    const-string v3, ""

    if-eqz v2, :cond_5

    .line 9311
    array-length p2, v1

    :goto_0
    if-ge v0, p2, :cond_4

    aget v2, v1, v0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 9313
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 9314
    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 p2, 0x1

    .line 9315
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    .line 9316
    sget-object p2, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v3, p2, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9322
    :cond_4
    :goto_1
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 9323
    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    goto :goto_2

    .line 9328
    :cond_5
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 9329
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 9330
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 9335
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "volume_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    .line 9337
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    return-void

    .line 9332
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "volume group: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has neither valid attributes nor valid stream types assigned"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;Lcom/android/server/audio/AudioService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V

    return-void
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 8

    .line 9394
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9396
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v2

    .line 9397
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v3

    .line 9398
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$misMuteAdjust(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMutable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9400
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_0

    .line 9401
    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mute on unmutable volume group "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 9403
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 9406
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v4

    .line 9407
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexStepFactor()F

    move-result v4

    const/16 v5, -0x64

    const/4 v6, 0x1

    if-eq p1, v5, :cond_7

    const/4 v5, -0x1

    const/4 v7, 0x0

    if-eq p1, v5, :cond_5

    if-eq p1, v6, :cond_4

    const/16 p2, 0x64

    if-eq p1, p2, :cond_3

    const/16 p2, 0x65

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 9411
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    xor-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    goto :goto_1

    .line 9416
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    goto :goto_1

    :cond_4
    add-int/2addr v3, v6

    int-to-float p1, v3

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 9428
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(III)V

    goto :goto_1

    .line 9435
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    .line 9436
    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    goto :goto_1

    :cond_6
    sub-int/2addr v3, v6

    int-to-float p1, v3

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 9438
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9440
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(III)V

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 9422
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    .line 9424
    :cond_8
    iput-boolean v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 9444
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9445
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 9444
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 9445
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public applyAllVolumes(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 9562
    const-string v1, "from vgs"

    .line 9563
    iget-object v2, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v4, 0x0

    .line 9565
    :goto_0
    :try_start_0
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-ge v4, v5, :cond_7

    .line 9566
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 9567
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eq v5, v6, :cond_6

    .line 9570
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getLegacyStreamTypes()[I

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget v12, v6, v10

    .line 9571
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isValidStream(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 9572
    iget-object v13, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v13, v12}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v13

    .line 9573
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v14

    .line 9574
    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v15, v12}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v15

    .line 9575
    invoke-virtual {v13, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x5

    div-int/lit8 v3, v16, 0xa

    if-ne v5, v15, :cond_2

    if-ne v3, v8, :cond_0

    .line 9577
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v15

    if-ne v15, v14, :cond_0

    .line 9578
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move v11, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 9582
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v15

    if-eq v15, v14, :cond_1

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 9583
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v12

    const-string v14, "VGS.applyAllVolumes#1"

    invoke-virtual {v13, v12, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(ZLjava/lang/String;)Z

    :cond_1
    if-eq v3, v8, :cond_2

    mul-int/lit8 v3, v8, 0xa

    .line 9586
    invoke-virtual {v13, v3, v5, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-nez v11, :cond_6

    .line 9593
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_4

    .line 9594
    const-string v3, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAllVolumes: apply index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9595
    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9596
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9594
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9598
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v8, 0x0

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v5, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 9604
    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v3

    .line 9606
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v4

    if-eqz p1, :cond_8

    .line 9607
    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_8

    move v5, v7

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 9608
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getLegacyStreamTypes()[I

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v10, v9, :cond_d

    aget v12, v8, v10

    .line 9609
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isValidStream(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 9610
    iget-object v13, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v13, v12}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v13

    .line 9611
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-$$Nest$fgetmIsMuted(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v14

    .line 9612
    invoke-virtual {v13, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x5

    div-int/lit8 v15, v15, 0xa

    if-eqz v5, :cond_9

    mul-int/lit8 v6, v3, 0xa

    .line 9615
    invoke-virtual {v13, v6, v4, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    :cond_9
    if-ne v15, v3, :cond_a

    .line 9618
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v6

    if-ne v6, v14, :cond_a

    .line 9619
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move v11, v7

    goto :goto_5

    :cond_a
    if-eq v15, v3, :cond_b

    mul-int/lit8 v6, v3, 0xa

    const/high16 v15, 0x40000000    # 2.0f

    .line 9624
    invoke-virtual {v13, v6, v15, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 9627
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v6

    if-eq v6, v14, :cond_c

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 9628
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v6

    const-string v12, "VGS.applyAllVolumes#2"

    invoke-virtual {v13, v6, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(ZLjava/lang/String;)Z

    :cond_c
    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_4

    :cond_d
    if-nez v11, :cond_10

    .line 9633
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_e

    .line 9634
    const-string v1, "AS.AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAllVolumes: apply default device index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", group "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9635
    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9634
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9638
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_6
    const/4 v6, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_7

    :cond_f
    move v1, v3

    goto :goto_6

    .line 9637
    :goto_7
    invoke-virtual {v0, v1, v15, v6}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    :cond_10
    if-eqz v5, :cond_13

    .line 9641
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_11

    .line 9642
    const-string v1, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyAllVolumes: forceDeviceSync index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9643
    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9644
    invoke-virtual {v6}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9642
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9646
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v3, 0x0

    :cond_12
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 9648
    :cond_13
    monitor-exit v2

    return-void

    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearIndexCache()V
    .locals 0

    .line 9652
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 9747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- VOLUME GROUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9748
    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9749
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9750
    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9751
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9752
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9753
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9754
    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 9755
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, ", "

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_0

    .line 9757
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9759
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 9760
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    .line 9761
    const-string v2, "default"

    goto :goto_1

    .line 9762
    :cond_1
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 9763
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9764
    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9765
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9766
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9768
    :cond_2
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9769
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9771
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9772
    const-string v1, "   Devices: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9774
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v1

    .line 9775
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int v5, v1, v4

    if-ne v5, v4, :cond_4

    add-int/lit8 v5, v0, 0x1

    if-lez v0, :cond_5

    .line 9778
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9780
    :cond_5
    invoke-static {v4}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v5

    goto :goto_2

    .line 9783
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9784
    const-string v0, "   Streams: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9785
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getLegacyStreamTypes()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$VolumeGroupState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 9786
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final getDeviceForVolume()I
    .locals 1

    .line 9292
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public final getIndex(I)I
    .locals 2

    .line 9531
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    return p1

    .line 9533
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public getLegacyStreamTypes()[I
    .locals 0

    .line 9341
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxIndex()I
    .locals 0

    .line 9542
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return p0
.end method

.method public getMinIndex()I
    .locals 0

    .line 9546
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    return p0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 1

    .line 9731
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 9732
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9733
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    return-object p0

    .line 9735
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValidIndex(I)I
    .locals 1

    .line 9722
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    if-ge p1, v0, :cond_0

    return v0

    .line 9724
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 9725
    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return p0
.end method

.method public getVolumeIndex()I
    .locals 2

    .line 9449
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9450
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 9451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getVolumePersistenceUserId()I
    .locals 1

    .line 9656
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public isMusic()Z
    .locals 1

    .line 9554
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMutable()Z
    .locals 1

    .line 9365
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

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

.method public isMuted()Z
    .locals 0

    .line 9390
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    return p0
.end method

.method public final isValidStream(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 9550
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVoiceCall()Z
    .locals 1

    .line 9558
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVssMuteBijective(I)Z
    .locals 2

    .line 9359
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9360
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getMinIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    if-ne v0, v1, :cond_1

    .line 9361
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getMinIndex()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$smisCallStream(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public mute(Z)Z
    .locals 2

    .line 9373
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isMutable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9375
    sget-boolean p1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p1, :cond_0

    .line 9376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid mute on unmutable volume group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 9380
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 9383
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    .line 9384
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes(Z)V

    :cond_3
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    .line 9345
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final persistVolumeGroup(I)V
    .locals 5

    .line 9663
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 9666
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9667
    :try_start_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_1

    .line 9668
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistVolumeGroup: storing index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9669
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9670
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and User="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 9671
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSettingName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9668
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9675
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 9676
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v3

    .line 9677
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result p1

    .line 9678
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getVolumePersistenceUserId()I

    move-result v4

    .line 9675
    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9680
    const-string p1, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistVolumeGroup failed for group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9682
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public readSettings()V
    .locals 10

    .line 9686
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9688
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 9689
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 9690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 9692
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v2, :cond_1

    .line 9697
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget v5, v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    .line 9699
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v6

    .line 9700
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    .line 9702
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getVolumePersistenceUserId()I

    move-result v9

    .line 9700
    invoke-virtual {v7, v8, v6, v5, v9}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_2

    goto :goto_0

    .line 9706
    :cond_2
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 v7, 0x7

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    .line 9707
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9708
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 9710
    :cond_3
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_4

    .line 9711
    const-string v4, "AS.AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readSettings: found stored index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 9712
    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", User="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    .line 9713
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9711
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9715
    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 9717
    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSettingName(Ljava/lang/String;)V
    .locals 0

    .line 9739
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mSettingName:Ljava/lang/String;

    return-void
.end method

.method public setVolumeIndex(II)V
    .locals 3

    .line 9455
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmVolumeStateLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9457
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9458
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 9460
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(III)V

    .line 9461
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9462
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 9461
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 9462
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final setVolumeIndex(III)V
    .locals 1

    .line 9468
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9470
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9473
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result p1

    .line 9474
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    :cond_1
    return-void
.end method

.method public final setVolumeIndexInt(III)V
    .locals 3

    .line 9503
    iget-boolean p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mHasValidStreamType:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {p0, p3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isVssMuteBijective(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 9504
    invoke-virtual {p3, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result p3

    if-eqz p3, :cond_0

    move p1, v0

    goto :goto_0

    .line 9510
    :cond_0
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-static {p3, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$misStreamBluetoothSco(Lcom/android/server/audio/AudioService;I)Z

    .line 9515
    :goto_0
    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    int-to-float v1, p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 9516
    invoke-virtual {p3, v2}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexStepFactor()F

    move-result p3

    div-float/2addr p1, p3

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 9520
    sget-boolean p3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz p3, :cond_1

    .line 9521
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolumeIndexInt("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "AS.AudioService"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9526
    :cond_1
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p3, p0, p1, v0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IZI)I

    return-void
.end method

.method public updateVolumeIndex(II)V
    .locals 7

    .line 9481
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 9483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 9486
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    const/4 v1, 0x2

    const/4 v2, 0x2

    move-object v5, p0

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method
