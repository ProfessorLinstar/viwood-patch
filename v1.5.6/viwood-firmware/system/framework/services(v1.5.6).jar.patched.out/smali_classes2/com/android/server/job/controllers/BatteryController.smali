.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "BatteryController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

.field public mLastReportedStatsdStablePower:Ljava/lang/Boolean;

.field public final mTopStartedJobs:Landroid/util/ArraySet;

.field public final mTrackedTasks:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$DwuA24RhfmVhbCbTaQHfw8G5JE4(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->lambda$onBatteryStateChangedLocked$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Battery"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 48
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 53
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 61
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    .line 65
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    .line 71
    iput-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 245
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 248
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 250
    const-string v1, " from "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 252
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 8

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000002L

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 262
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 263
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide v4, 0x10800000001L

    .line 262
    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 265
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    const-wide v4, 0x10800000002L

    .line 264
    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 267
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 269
    invoke-interface {p4, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const-wide v4, 0x20b00000005L

    .line 272
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000001L

    .line 273
    invoke-virtual {v2, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v6, 0x10500000002L

    .line 275
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 274
    invoke-virtual {p1, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 276
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 280
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTopStartedJobs()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getTrackedJobs()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 161
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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

.method public final synthetic lambda$onBatteryStateChangedLocked$0()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeReportNewChargingStateLocked()V
    .locals 9

    .line 166
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isPowerConnected()Z

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v3

    .line 169
    sget-boolean v4, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Battery"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v1, :cond_3

    .line 176
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 177
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdStablePower:Ljava/lang/Boolean;

    .line 179
    :cond_3
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    .line 180
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v3, :cond_5

    .line 181
    :cond_4
    invoke-virtual {p0, v5, v3}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 183
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mLastReportedStatsdBatteryNotLow:Ljava/lang/Boolean;

    .line 186
    :cond_5
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 188
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v8, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 189
    invoke-virtual {v8}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v8

    .line 188
    invoke-virtual {v4, v2, v8, v6, v7}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    .line 190
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    .line 193
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_9

    .line 194
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 195
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v5

    const/16 v8, 0x12c

    if-lt v5, v8, :cond_6

    .line 204
    invoke-virtual {v2, v6, v7, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 205
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_6
    invoke-virtual {v2, v6, v7, v1}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 208
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 213
    iget-object v5, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_9
    if-nez v1, :cond_b

    if-eqz v3, :cond_a

    goto :goto_3

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 222
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_4

    .line 218
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 224
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 77
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 78
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 80
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/BatteryController;->hasTopExemptionLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 83
    invoke-virtual {p2}, Lcom/android/server/job/JobSchedulerService;->isPowerConnected()Z

    move-result p2

    .line 82
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    goto :goto_1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 86
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(JZ)Z

    .line 89
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(JZ)Z

    :cond_3
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BatteryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .locals 0

    const/16 p1, 0x28

    if-eq p2, p1, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 154
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    const-string v1, "JobScheduler.Battery"

    if-eqz v0, :cond_1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BatteryController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
