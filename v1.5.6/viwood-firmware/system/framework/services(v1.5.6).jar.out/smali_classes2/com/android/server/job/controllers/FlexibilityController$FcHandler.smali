.class public Lcom/android/server/job/controllers/FlexibilityController$FcHandler;
.super Landroid/os/Handler;
.source "FlexibilityController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public static synthetic $r8$lambda$5CvPVqmgOUfjOuy9DIWNcoGKJmo(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->lambda$handleMessage$0(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yWWuwRoUvOTH-mThpIBxsAo7feI(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;JLandroid/util/ArraySet;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->lambda$handleMessage$1(JLandroid/util/ArraySet;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1058
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1063
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 1119
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1120
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1121
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1123
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    new-instance v4, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;)V

    new-instance v5, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;JLandroid/util/ArraySet;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1137
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1138
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1140
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1096
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1097
    :try_start_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1098
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1100
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_2
    if-ltz v4, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 1102
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1103
    const-string v5, "JobScheduler.Flex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1105
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1106
    invoke-virtual {v5, v0}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 1105
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1107
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1111
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1112
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1113
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1115
    :cond_6
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    const/4 p1, 0x0

    .line 1065
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1069
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1070
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1071
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1073
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    move v5, p1

    :goto_5
    if-gt v5, v4, :cond_a

    .line 1076
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v6, v6, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 1077
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->getJobsByNumRequiredConstraints(I)Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_9

    move v7, p1

    .line 1080
    :goto_6
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 1081
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 1082
    iget-object v9, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1083
    invoke-virtual {v9, v8}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 1082
    invoke-virtual {v8, v1, v2, v9}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1084
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_8
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1089
    :cond_a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 1090
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1092
    :cond_b
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method

.method public final synthetic lambda$handleMessage$0(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getCallingPackageName()Ljava/lang/String;

    move-result-object p1

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

.method public final synthetic lambda$handleMessage$1(JLandroid/util/ArraySet;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 1127
    invoke-static {}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Flex"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 1131
    invoke-virtual {p0, p4}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    .line 1130
    invoke-virtual {p4, p1, p2, p0}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1132
    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
