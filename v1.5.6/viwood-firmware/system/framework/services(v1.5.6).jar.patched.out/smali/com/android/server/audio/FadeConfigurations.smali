.class public final Lcom/android/server/audio/FadeConfigurations;
.super Ljava/lang/Object;
.source "FadeConfigurations.java"


# static fields
.field public static final DEFAULT_FADEABLE_USAGES:Ljava/util/List;

.field public static final DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

.field public static final DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;


# instance fields
.field public mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public final mLock:Ljava/lang/Object;

.field public mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

    const/16 v2, 0xe

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 65
    invoke-static {v2, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEABLE_USAGES:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v2, 0x2

    .line 72
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 73
    invoke-virtual {v0, v3, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearFadeManagerConfiguration()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 128
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 129
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 130
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearTransientFadeManagerConfiguration()I
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 186
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 188
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_0

    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-eqz v0, :cond_1

    return-object v0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getDefaultFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/media/FadeManagerConfiguration$Builder;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$Builder;->build()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object p0
.end method

.method public getDelayFadeInOffenders(Landroid/media/AudioAttributes;)J
    .locals 2

    .line 330
    iget-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->getFadeInDelayForOffenders()J

    move-result-wide v0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception p0

    .line 332
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFadeInVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeInVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getFadeManagerConfiguration()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFadeOutDuration(Landroid/media/AudioAttributes;)J
    .locals 1

    const/4 v0, -0x1

    .line 309
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeOutDuration(Landroid/media/AudioAttributes;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->getOptimalFadeOutVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    return-object p0
.end method

.method public final getOptimalFadeInVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    .line 437
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 445
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOptimalFadeOutDuration(Landroid/media/AudioAttributes;)J
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    .line 453
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 455
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutDurationForUsage(I)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 461
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOptimalFadeOutVolShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    .line 419
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p1

    .line 426
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 428
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    return-object p0
.end method

.method public final isAudioAttributesUnfadeableLocked(Landroid/media/AudioAttributes;)Z
    .locals 0

    .line 511
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z

    move-result p0

    return p0
.end method

.method public final isContentTypeUnfadeableLocked(I)Z
    .locals 0

    .line 494
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isContentTypeUnfadeable(I)Z

    move-result p0

    return p0
.end method

.method public isFadeEnabled()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFadeable(Landroid/media/AudioAttributes;II)Z
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/audio/FadeConfigurations;->isPlayerTypeUnfadeableLocked(I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 391
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/audio/FadeConfigurations;->isContentTypeUnfadeableLocked(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 397
    monitor-exit v0

    return v1

    .line 399
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/audio/FadeConfigurations;->isUsageFadeableLocked(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 403
    monitor-exit v0

    return v1

    .line 406
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/FadeConfigurations;->isUnfadeableForFadeMgrConfigLocked(Landroid/media/AudioAttributes;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 407
    monitor-exit v0

    return v1

    :cond_3
    const/4 p0, 0x1

    .line 409
    monitor-exit v0

    return p0

    .line 410
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPlayerTypeUnfadeableLocked(I)Z
    .locals 0

    .line 502
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isPlayerTypeUnfadeable(I)Z

    move-result p0

    return p0
.end method

.method public final isUidUnfadeableLocked(I)Z
    .locals 0

    .line 520
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isUidUnfadeable(I)Z

    move-result p0

    return p0
.end method

.method public final isUnfadeableForFadeMgrConfigLocked(Landroid/media/AudioAttributes;I)Z
    .locals 1

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/audio/FadeConfigurations;->isAudioAttributesUnfadeableLocked(Landroid/media/AudioAttributes;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 472
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FadeConfigurations;->isUidUnfadeableLocked(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isUsageFadeableLocked(I)Z
    .locals 0

    .line 486
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isUsageFadeable(I)Z

    move-result p0

    return p0
.end method

.method public setFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 110
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTransientFadeManagerConfiguration(Landroid/media/FadeManagerConfiguration;)I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 169
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
