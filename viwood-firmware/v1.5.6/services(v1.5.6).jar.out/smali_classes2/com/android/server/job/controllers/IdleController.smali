.class public final Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "IdleController.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessListener;


# instance fields
.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

.field public final mTrackedTasks:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/RestrictingController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 51
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracker()V

    .line 60
    iput-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 150
    const-string v0, "IdleController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {p0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v0, "Idleness tracker:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 165
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 170
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 172
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 8

    .line 179
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000006L

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v2}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v2

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 183
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    const-wide v3, 0x10b00000003L

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    const/4 v2, 0x0

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 187
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide v4, 0x20b00000002L

    .line 190
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000001L

    .line 191
    invoke-virtual {v3, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v6, 0x10500000002L

    .line 193
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 192
    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final initIdleStateTracker()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;

    invoke-direct {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    invoke-direct {v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 70
    iget-object p2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x8

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 72
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(JZ)Z

    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    const/16 p2, 0x8

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 105
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result p0

    .line 104
    invoke-interface {v0, v1, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->onBatteryStateChanged(ZZ)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {p0, p1, p2}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public reportNewIdleState(Z)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    .line 114
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/controllers/StateController;->logDeviceWideConstraintStateToStatsd(IZ)V

    .line 116
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 117
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v4, v1, p1, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IZJ)V

    .line 119
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(JZ)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    iget-object p0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-interface {p1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 125
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTrackingLocked()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/idle/IdlenessListener;)V

    return-void
.end method

.method public startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/IdleController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/IdleController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    return-void
.end method
