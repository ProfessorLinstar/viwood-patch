.class public Lcom/android/server/audio/SoundDoseHelper$1;
.super Landroid/media/ISoundDoseCallback$Stub;
.source "SoundDoseHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundDoseHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundDoseHelper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-direct {p0}, Landroid/media/ISoundDoseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMomentaryExposure(FI)V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmEnableCsd(Lcom/android/server/audio/SoundDoseHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string p0, "AS.SoundDoseHelper"

    const-string/jumbo p1, "onMomentaryExposure: csd not supported, ignoring callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " triggered momentary exposure with value: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p2}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmLogger(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/utils/EventLogger;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getMomentaryExposureEvent(F)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 257
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmCsdStateLock(Lcom/android/server/audio/SoundDoseHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 258
    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p2}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p2}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x44aa200

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 261
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fputmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;J)V

    const/4 p2, 0x1

    .line 264
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 267
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    const/4 p2, 0x3

    .line 269
    invoke-static {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I

    move-result p0

    .line 267
    invoke-interface {p1, p2, p0}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplayCsdWarning(II)V

    :cond_3
    return-void

    .line 264
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmEnableCsd(Lcom/android/server/audio/SoundDoseHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string p0, "AS.SoundDoseHelper"

    const-string/jumbo p1, "onNewCsdValue: csd not supported, ignoring value"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewCsdValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmCsdStateLock(Lcom/android/server/audio/SoundDoseHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    cmpg-float v1, v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v3}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    .line 284
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    const/4 v4, 0x2

    .line 288
    invoke-static {v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I

    move-result v3

    .line 286
    invoke-interface {v1, v4, v3}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplayCsdWarning(II)V

    .line 291
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmAudioService(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->postLowerVolumeToRs1()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    const/4 v4, 0x1

    .line 295
    invoke-static {v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I

    move-result v3

    .line 293
    invoke-interface {v1, v4, v3}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplayCsdWarning(II)V

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v3

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fputmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;F)V

    goto :goto_1

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fputmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;F)V

    .line 307
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {v1, p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$fputmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;F)V

    .line 308
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V

    .line 309
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
