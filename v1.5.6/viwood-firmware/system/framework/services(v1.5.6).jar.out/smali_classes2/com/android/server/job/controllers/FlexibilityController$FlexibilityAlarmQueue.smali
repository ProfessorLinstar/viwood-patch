.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "FlexibilityController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 961
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    const/4 v5, 0x1

    .line 962
    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v6

    const-string v3, "*job.flexibility_check*"

    const-string v4, "Flexible Constraint Check"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/FlexibilityController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public isForUser(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 0

    .line 969
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0

    .line 959
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->isForUser(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 9

    .line 1034
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1036
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1037
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1038
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1039
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1040
    const-string v6, "JobScheduler.Flex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm fired for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1042
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v6, v6, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 1043
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v6

    if-lez v6, :cond_1

    .line 1044
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 1046
    :cond_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1047
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 1046
    invoke-virtual {v5, v2, v3, v6}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1048
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1051
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1052
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 12

    .line 973
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v4

    .line 975
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-object v3, p1

    move-wide v6, v4

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p1

    move-wide v8, v4

    move-wide v4, v6

    cmp-long p3, p1, v4

    const/4 v0, 0x1

    if-gtz p3, :cond_0

    .line 979
    const-string p1, "JobScheduler.Flex"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got invalid latest when scheduling alarm. prefetch="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " periodic="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 979
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 985
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result p2

    .line 984
    invoke-virtual {p1, v3, p2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->setNumDroppedFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;I)V

    .line 986
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 988
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_0

    .line 991
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-wide v6, p1

    .line 992
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p1

    .line 994
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 995
    const-string p3, "JobScheduler.Flex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "scheduleDropNumConstraintsAlarm: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " numApplied: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " numRequired: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " numSatisfied: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget v11, v10, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 1000
    invoke-virtual {v10, v3}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v10

    and-int/2addr v10, v11

    .line 999
    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " curTime: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " earliest: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " latest: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " nextTime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sub-long v4, v6, v8

    .line 1006
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p3}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v8

    cmp-long p3, v4, v8

    if-gez p3, :cond_3

    .line 1007
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1008
    const-string p1, "JobScheduler.Flex"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deadline proximity met: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 1011
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result p2

    .line 1010
    invoke-virtual {p1, v3, p2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->setNumDroppedFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;I)V

    .line 1012
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1014
    monitor-exit v1

    return-void

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    cmp-long p3, p1, v4

    if-nez p3, :cond_4

    .line 1018
    invoke-virtual {p0, v3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1019
    monitor-exit v1

    return-void

    :cond_4
    sub-long v4, v6, p1

    .line 1021
    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p3}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide v8

    cmp-long p3, v4, v8

    if-gtz p3, :cond_6

    .line 1022
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1023
    const-string p1, "JobScheduler.Flex"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "last alarm set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J

    move-result-wide p1

    sub-long p1, v6, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 1026
    monitor-exit v1

    return-void

    .line 1028
    :cond_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 1029
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
