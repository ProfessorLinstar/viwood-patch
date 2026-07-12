.class public final Lcom/android/server/audio/AdiDeviceState;
.super Ljava/lang/Object;
.source "AdiDeviceState.java"


# instance fields
.field public mAudioDeviceCategory:I

.field public mAutoBtCategorySet:Z

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceId:Landroid/util/Pair;

.field public final mDeviceType:I

.field public mHasHeadTracker:Z

.field public mHeadTrackerEnabled:Z

.field public final mInternalDeviceType:I

.field public mSAEnabled:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 63
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 81
    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    if-eqz p2, :cond_0

    .line 83
    iput p2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 88
    :goto_0
    iget p1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    .line 89
    :cond_1
    const-string p3, ""

    :goto_1
    iput-object p3, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 91
    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;

    return-void
.end method

.method public static fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/AdiDeviceState;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 242
    :cond_1
    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_8

    array-length v2, v1

    const/4 v4, 0x7

    if-le v2, v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x0

    .line 251
    :try_start_0
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 253
    array-length v6, v1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_3

    .line 254
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_3
    const/4 v3, -0x1

    .line 257
    :goto_0
    array-length v6, v1

    if-ne v6, v4, :cond_4

    .line 258
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v2

    .line 260
    :goto_1
    new-instance v6, Lcom/android/server/audio/AdiDeviceState;

    const/4 v7, 0x1

    aget-object v8, v1, v7

    invoke-direct {v6, v5, v3, v8}, Lcom/android/server/audio/AdiDeviceState;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x2

    .line 262
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_5

    move v3, v7

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    const/4 v3, 0x3

    .line 263
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_6

    move v3, v7

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    const/4 v3, 0x4

    .line 264
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_7

    move v2, v7

    :cond_7
    invoke-virtual {v6, v2}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 265
    invoke-virtual {v6, v4}, Lcom/android/server/audio/AdiDeviceState;->setAudioDeviceCategory(I)V

    .line 267
    invoke-virtual {v6}, Lcom/android/server/audio/AdiDeviceState;->updateAudioDeviceCategory()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 270
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse setting for AdiDeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AS.AdiDeviceState"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    return-object v0
.end method

.method public static getPeristedMaxSize()I
    .locals 1

    .line 0
    const/16 v0, 0x27

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/audio/AdiDeviceState;

    if-eq v3, v2, :cond_2

    return v1

    .line 185
    :cond_2
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 186
    iget v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    iget v3, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    iget v3, p1, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    iget p1, p1, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public declared-synchronized getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;
    .locals 4

    monitor-enter p0

    .line 276
    :try_start_0
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V
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

.method public declared-synchronized getAudioDeviceCategory()I
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeviceAddress()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;
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

.method public declared-synchronized getDeviceId()Landroid/util/Pair;
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;
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

.method public declared-synchronized getDeviceType()I
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getInternalDeviceType()I
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized hasHeadTracker()Z
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 8

    .line 197
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget p0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized isBtDeviceCategoryFixed()Z
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AdiDeviceState;->updateAudioDeviceCategory()Z

    .line 149
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isHeadTrackerEnabled()Z
    .locals 1

    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isSAEnabled()Z
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setAudioDeviceCategory(I)V
    .locals 0

    monitor-enter p0

    .line 144
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHasHeadTracker(Z)V
    .locals 0

    monitor-enter p0

    .line 129
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setHeadTrackerEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 121
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSAEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 113
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toPersistableString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_2

    :cond_2
    const-string v1, "0"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " internal type: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 205
    invoke-static {v1, v2}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bt audio type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 207
    invoke-static {v1}, Landroid/media/AudioManager;->audioDeviceCategoryToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HTenabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized updateAudioDeviceCategory()Z
    .locals 2

    monitor-enter p0

    .line 153
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    monitor-exit p0

    return v1

    .line 156
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 158
    monitor-exit p0

    return v1

    .line 161
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 164
    monitor-exit p0

    return v1

    .line 167
    :cond_2
    :try_start_3
    iput v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
