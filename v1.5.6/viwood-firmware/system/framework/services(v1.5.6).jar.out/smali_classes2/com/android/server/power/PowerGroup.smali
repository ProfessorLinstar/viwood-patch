.class public Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "PowerGroup.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerGroup"


# instance fields
.field public final mDimDuration:J

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastPowerOnTime:J

.field public mLastSleepReason:I

.field public mLastSleepTime:J

.field public mLastUserActivityEvent:I

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeReason:I

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mScreenOffTimeout:J

.field public mShutdownFlag:Z

.field public final mSupportsSandman:Z

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;IZZJLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    .line 101
    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 104
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mShutdownFlag:Z

    .line 112
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 113
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 114
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 115
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 116
    iput p5, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 117
    iput-boolean p6, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 118
    iput-boolean p7, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 119
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 120
    iput-wide p8, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 121
    iput-object p10, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    if-eqz p1, :cond_0

    .line 127
    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 128
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    array-length p3, p1

    if-lez p3, :cond_0

    .line 132
    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result p1

    .line 133
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isValidVirtualDeviceId(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDimDurationMillisForDeviceId(I)J

    move-result-wide p3

    .line 135
    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getScreenOffTimeoutMillisForDeviceId(I)J

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_1

    cmp-long p5, p3, p1

    if-lez p5, :cond_1

    move-wide p3, p1

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    move-wide p1, p3

    .line 144
    :cond_1
    :goto_0
    iput-wide p3, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 145
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    return-void
.end method

.method public constructor <init>(ILcom/android/server/power/PowerGroup$PowerGroupListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    .line 101
    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 104
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mShutdownFlag:Z

    .line 151
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 152
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    .line 153
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 154
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 155
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 156
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 158
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 159
    iput-wide p5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 160
    iput-object p7, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const-wide/16 p1, -0x1

    .line 161
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    .line 162
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    return-void
.end method

.method public static sleepReasonToDisplayStateReason(I)I
    .locals 2

    .line 0
    const/4 v0, 0x4

    const/4 v1, 0x6

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static wakeReasonToDisplayStateReason(I)I
    .locals 3

    .line 0
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/16 v2, 0xe

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public dozeLocked(JII)Z
    .locals 12

    move/from16 v1, p4

    const/16 v2, 0x8

    const/4 v9, 0x1

    if-ne v1, v2, :cond_0

    .line 320
    iput-boolean v9, p0, Lcom/android/server/power/PowerGroup;->mShutdownFlag:Z

    return v9

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getLastWakeTimeLocked()J

    move-result-wide v2

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 329
    :cond_1
    const-string/jumbo v2, "powerOffDisplay"

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 332
    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0xe

    .line 331
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 333
    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 335
    sget-object v3, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Powering off display group due to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (groupId= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", millisSinceLastUserActivity="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUserActivityEvent="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    .line 339
    invoke-static {v1}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0, v9}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 343
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    throw v0

    :cond_2
    :goto_0
    return v3
.end method

.method public dreamLocked(JIZ)Z
    .locals 12

    .line 301
    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    const/4 v9, 0x1

    if-nez p4, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v1, v9, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dreamPowerGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 307
    :try_start_0
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Napping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, v9}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 309
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 313
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 0

    .line 186
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return p0
.end method

.method public getLastPowerOnTimeLocked()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-wide v0
.end method

.method public getLastSleepTimeLocked()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeLocked()J
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public getLastUserActivityTimeNoChangeLightsLocked()J
    .locals 2

    .line 388
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method public getLastWakeTimeLocked()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    return-wide v0
.end method

.method public getPolicyLocked()I
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return p0
.end method

.method public getScreenDimDurationOverrideLocked(J)J
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public getScreenOffTimeoutOverrideLocked(J)J
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public getScreenTimeoutPolicy()I
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->hasWakeLockKeepingScreenOnLocked()Z

    move-result p0

    return p0
.end method

.method public getUserActivitySummaryLocked()I
    .locals 0

    .line 398
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return p0
.end method

.method public getWakeLockSummaryLocked()I
    .locals 0

    .line 418
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return p0
.end method

.method public getWakefulnessLocked()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    return p0
.end method

.method public hasWakeLockKeepingScreenOnLocked()Z
    .locals 0

    .line 434
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 p0, p0, 0x26

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBrightOrDimLocked()Z
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p0

    return p0
.end method

.method public isPolicyBrightLocked()Z
    .locals 1

    .line 402
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPolicyDimLocked()Z
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPoweringOnLocked()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return p0
.end method

.method public isReadyLocked()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    return p0
.end method

.method public isSandmanSummonedLocked()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return p0
.end method

.method public needSuspendBlockerLocked(ZZ)Z
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->isBrightOrDimLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v1

    .line 472
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v1, :cond_2

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setIsPoweringOnLocked(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    return-void
.end method

.method public setLastPowerOnTimeLocked(J)V
    .locals 0

    .line 250
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    return-void
.end method

.method public setLastUserActivityTimeLocked(JI)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 384
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    return-void
.end method

.method public setLastUserActivityTimeNoChangeLightsLocked(JI)V
    .locals 0

    .line 393
    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    .line 394
    iput p3, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityEvent:I

    return-void
.end method

.method public setReadyLocked(Z)Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    if-eq v0, p1, :cond_0

    .line 239
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSandmanSummonedLocked(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mIsSandmanSummoned:Z

    return-void
.end method

.method public setUserActivitySummaryLocked(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return-void
.end method

.method public setWakeLockSummaryLocked(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return-void
.end method

.method public setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    move/from16 v5, p5

    .line 196
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v0, p1, :cond_2

    const/4 v10, 0x1

    if-ne p1, v10, :cond_0

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/PowerGroup;->setLastPowerOnTimeLocked(J)V

    .line 199
    invoke-virtual {p0, v10}, Lcom/android/server/power/PowerGroup;->setIsPoweringOnLocked(Z)V

    .line 200
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 201
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iput-wide p2, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 206
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iput v5, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    .line 210
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 211
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerGroup$PowerGroupListener;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move v2, p1

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/server/power/PowerGroup$PowerGroupListener;->onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public sleepLocked(JII)Z
    .locals 12

    const/16 v1, 0x8

    const/4 v9, 0x1

    move/from16 v5, p4

    if-ne v5, v1, :cond_0

    .line 354
    iput-boolean v9, p0, Lcom/android/server/power/PowerGroup;->mShutdownFlag:Z

    return v9

    .line 359
    :cond_0
    iget-wide v1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v1, "sleepPowerGroup"

    const-wide/32 v10, 0x20000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 365
    :try_start_0
    sget-object v1, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping power group (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0, v9}, Lcom/android/server/power/PowerGroup;->setSandmanSummonedLocked(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 369
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v9

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 373
    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSandmanLocked()Z
    .locals 0

    .line 452
    iget-boolean p0, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    return p0
.end method

.method public updateLocked(FLjava/lang/CharSequence;ZZIIFZZLandroid/os/PowerSaveState;ZZZZZZ)Z
    .locals 7

    move-object/from16 v0, p10

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p16

    .line 542
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerGroup;->updateScreenPolicyLocked(ZZZZZ)V

    .line 544
    iget-object v2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 545
    iput-object p2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    .line 546
    iput-boolean p3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 547
    iput-boolean p4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 549
    iget p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 550
    iput p5, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 551
    iput p6, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 552
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    if-nez p9, :cond_1

    .line 553
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p3, 0x4

    const/4 p4, 0x2

    if-ne p2, p3, :cond_0

    const/4 p2, 0x3

    .line 554
    iput p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 555
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 558
    :cond_0
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 559
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 560
    iput p4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 564
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p7, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 565
    iput-boolean p8, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 567
    iput p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 568
    iput p3, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 569
    iput p2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    .line 571
    iput-boolean p1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 573
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 574
    iget p2, v0, Landroid/os/PowerSaveState;->brightnessFactor:F

    iput p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 575
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    move/from16 p4, p15

    invoke-virtual {p2, p3, p1, p4}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result p1

    .line 577
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iget p3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {p2, p3, p0}, Lcom/android/server/power/Notifier;->onScreenPolicyUpdate(II)V

    return p1
.end method

.method public final updateScreenPolicyLocked(ZZZZZ)V
    .locals 6

    .line 487
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v0

    .line 488
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getWakeLockSummaryLocked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    if-nez p1, :cond_3

    .line 491
    iget-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mShutdownFlag:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 495
    iget p1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    invoke-static {p1}, Lcom/android/server/power/PowerGroup;->sleepReasonToDisplayStateReason(I)I

    move-result p1

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_5

    and-int/lit8 p1, v1, 0x40

    if-eqz p1, :cond_2

    move p1, v4

    move v3, p1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    :cond_3
    :goto_0
    move p1, v4

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move p1, v4

    move v3, v5

    :goto_1
    if-ne v3, v5, :cond_8

    .line 510
    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 511
    iget p1, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    invoke-static {p1}, Lcom/android/server/power/PowerGroup;->wakeReasonToDisplayStateReason(I)I

    move-result p1

    :cond_6
    const/4 p2, 0x2

    and-int/lit8 p5, v1, 0x2

    if-nez p5, :cond_9

    if-eqz p3, :cond_9

    .line 515
    invoke-virtual {p0}, Lcom/android/server/power/PowerGroup;->getUserActivitySummaryLocked()I

    move-result p3

    and-int/2addr p3, v4

    if-nez p3, :cond_9

    if-eqz p4, :cond_7

    goto :goto_2

    :cond_7
    move v2, p2

    goto :goto_2

    :cond_8
    move v2, v3

    .line 523
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-virtual {p2}, Lcom/android/server/power/feature/PowerManagerFlags;->isPolicyReasonInDisplayPowerRequestEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 524
    iget-object p2, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p1, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    .line 526
    :cond_a
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return-void
.end method

.method public wakeUpLocked(JILjava/lang/String;ILjava/lang/String;ILcom/android/internal/util/LatencyTracker;)V
    .locals 6

    .line 276
    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wakePowerGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 282
    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waking up power group from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 283
    invoke-static {v4}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {p3}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", details="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v0, "Screen turning on"

    iget v3, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 291
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {p8, v3, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    move-object p8, p4

    move p4, p5

    move p5, p3

    move-wide p2, p1

    const/4 p1, 0x1

    move v5, p7

    move-object p7, p6

    move p6, v5

    .line 293
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/PowerGroup;->setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 297
    throw p0

    :cond_1
    :goto_0
    return-void
.end method
