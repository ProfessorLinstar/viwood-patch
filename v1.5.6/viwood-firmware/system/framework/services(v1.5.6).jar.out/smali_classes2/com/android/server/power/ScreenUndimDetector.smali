.class public Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "ScreenUndimDetector.java"


# static fields
.field static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"

.field static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"

.field static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"


# instance fields
.field public mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

.field public mContext:Landroid/content/Context;

.field mCurrentScreenPolicy:I

.field public mInteractionAfterUndimTime:J

.field public mKeepScreenOnEnabled:Z

.field public mKeepScreenOnForMillis:J

.field public mMaxDurationBetweenUndimsMillis:J

.field mUndimCounter:I

.field mUndimCounterStartedMillis:J

.field public mUndimOccurredTime:J

.field public mUndimsRequired:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$l8r9IiUhjtawcWAERzTlYOAykvg(Lcom/android/server/power/ScreenUndimDetector;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 86
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    .line 91
    new-instance v0, Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-direct {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    return-void
.end method


# virtual methods
.method public final checkAndLogUndim(I)V
    .locals 12

    .line 293
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    .line 295
    iget-wide v4, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    sub-long v8, v0, v4

    .line 299
    iget-wide v4, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide v10, v2

    :goto_0
    const/16 v6, 0x16d

    move v7, p1

    .line 295
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 301
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 302
    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_1
    return-void
.end method

.method public final synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 110
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/ScreenUndimDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public final onDeviceConfigChange(Ljava/util/Set;)V
    .locals 4

    .line 242
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceConfigChange; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenUndimDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "max_duration_between_undims_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "keep_screen_on_for_millis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "keep_screen_on_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "undims_required"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e0c2586 -> :sswitch_3
        -0x6f8997a6 -> :sswitch_2
        0x14fb26c3 -> :sswitch_1
        0x65e239ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final readKeepScreenOnEnabled()Z
    .locals 2

    .line 202
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110132

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 204
    const-string v0, "attention_manager_service"

    const-string v1, "keep_screen_on_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final readKeepScreenOnForMillis()J
    .locals 3

    .line 210
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0065

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    .line 212
    const-string p0, "attention_manager_service"

    const-string v2, "keep_screen_on_for_millis"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMaxDurationBetweenUndimsMillis()J
    .locals 3

    .line 234
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0059

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    .line 236
    const-string p0, "attention_manager_service"

    const-string/jumbo v2, "max_duration_between_undims_millis"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readUndimsRequired()I
    .locals 3

    .line 218
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e006c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 220
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "undims_required"

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 225
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided undimsRequired="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed [1, 5]; using the default="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenUndimDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public readValuesFromDeviceConfig()V
    .locals 3

    .line 259
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnForMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    .line 261
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readUndimsRequired()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    .line 262
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readMaxDurationBetweenUndimsMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmKeepScreenOnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmUndimsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmMaxDurationBetweenUndimsMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenUndimDetector"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordScreenPolicy(II)V
    .locals 5

    if-nez p1, :cond_b

    .line 123
    iget p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iput p2, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    .line 137
    iget-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-ne p2, v2, :cond_4

    .line 180
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    :cond_4
    if-eq p2, v1, :cond_b

    .line 183
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    return-void

    :cond_5
    if-ne p2, v0, :cond_8

    .line 144
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide p1

    .line 145
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    sub-long v0, p1, v0

    .line 146
    iget-wide v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 149
    :cond_6
    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    if-nez v0, :cond_7

    .line 150
    iput-wide p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    :cond_7
    add-int/2addr v0, v2

    .line 153
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 161
    iget p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    if-lt v0, p1, :cond_b

    .line 162
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    .line 166
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_b

    .line 167
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    .line 168
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :cond_8
    if-eqz p2, :cond_9

    if-ne p2, v2, :cond_a

    .line 173
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    .line 175
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    :cond_b
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, 0x0

    .line 195
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    .line 196
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2

    .line 106
    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    .line 108
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenUndimDetector;)V

    .line 108
    const-string v1, "attention_manager_service"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 112
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const v0, 0x2000000a

    .line 113
    const-string v1, "UndimDetectorWakeLock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public userActivity(I)V
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {p1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_1
    :goto_0
    return-void
.end method
