.class Lcom/android/server/broadcastradio/hal1/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "Tuner.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.Tuner"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeContext:J

.field public mRegion:I

.field public final mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

.field public final mWithAudio:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 55
    new-instance v1, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 59
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 60
    new-instance v1, Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/hal1/TunerCallback;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 61
    iput p3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 62
    iput-boolean p4, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    .line 63
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeInit(IZI)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    .line 64
    new-instance p2, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/broadcastradio/hal1/Tuner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/Tuner;)V

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 66
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 68
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    return-void
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Cannot cancel on HAL 1.x client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 230
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancel(J)V

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelAnnouncement()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Cannot cancel announcement on HAL 1.x client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 242
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeCancelAnnouncement(J)V

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkConfiguredLocked()Z
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->isInitialConfigurationDone()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 126
    :cond_0
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Initial configuration is still pending, skipping the operation"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkNotClosedLocked()V
    .locals 1

    .line 119
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-nez p0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    .line 107
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->detach()V

    .line 108
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 109
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeClose(J)V

    .line 110
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeFinalize(J)V

    .line 75
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 150
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    iget v3, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetImage(JI)[B

    move-result-object p0

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 256
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 260
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 255
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 249
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image ID is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 280
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 284
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 282
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Program list is not ready"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isClosed()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsClosed:Z

    return p0
.end method

.method public isConfigFlagSet(I)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 316
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 318
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeIsAnalogForced(J)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 319
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isConfigFlagSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMuted()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-nez v0, :cond_0

    .line 170
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Tuner did not request audio, pretending it was muted"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 175
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public seek(ZZ)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot seek on HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 201
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeScan(JZZ)V

    .line 202
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setConfigFlag(IZ)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot set config flag for HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 331
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 333
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetAnalogForced(JZ)V

    .line 334
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 335
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 337
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot set configuration for HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 141
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    .line 142
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mRegion:I

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 137
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The argument must not be a null pointer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMuted(Z)V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mWithAudio:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 161
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 162
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mIsMuted:Z

    .line 163
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 157
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t operate on mute - no audio requested"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported by HAL 1.x"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startBackgroundScan()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Cannot start background scan on HAL 1.x client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 272
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStartBackgroundScan(J)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot start program list updates on HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V

    return-void
.end method

.method public step(ZZ)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot step on HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 188
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeStep(JZZ)V

    .line 189
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopProgramListUpdates()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-string p0, "BcRadio1Srv.Tuner"

    const-string v0, "Cannot stop program list updates on HAL 1.x client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->stopProgramListUpdates()V

    return-void
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string p0, "BcRadio1Srv.Tuner"

    const-string p1, "Cannot tune on HAL 1.x client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 214
    const-string v0, "BcRadio1Srv.Tuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkNotClosedLocked()V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->checkConfiguredLocked()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 218
    :cond_1
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/Tuner;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/broadcastradio/hal1/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V

    .line 219
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 212
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The argument must not be a null pointer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
