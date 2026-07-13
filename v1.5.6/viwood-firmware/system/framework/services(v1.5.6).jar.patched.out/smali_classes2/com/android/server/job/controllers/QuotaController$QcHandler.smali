.class public Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "QuotaController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .locals 0

    .line 2739
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2740
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 2745
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2746
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-wide/32 v5, 0x20000

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_c

    .line 2817
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserPackage;

    .line 2818
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2819
    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its count quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    .line 2822
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2823
    const-string v2, "QuotaStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    .line 2825
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2827
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 2829
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2831
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget v4, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 2830
    invoke-static {p0, v2, v3, v4, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2829
    invoke-interface {v1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_c

    .line 2961
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2962
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 2971
    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 2972
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    cmp-long v2, v4, v9

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v2

    .line 2973
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    cmp-long v2, v4, v9

    if-gez v2, :cond_2

    goto/16 :goto_3

    .line 2980
    :cond_2
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2981
    const-string v2, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is now out of grace period"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    .line 2983
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2984
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    const-wide/32 v9, 0x80000

    .line 2985
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2986
    const-string v2, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ">#"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v10, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 2990
    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2992
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2993
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v8

    :goto_2
    if-ltz v6, :cond_6

    .line 2994
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v8, :cond_5

    .line 2996
    invoke-virtual {v8, v4, v5, v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 2999
    :cond_6
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3000
    invoke-static {v2, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 3001
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 3002
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 3005
    :cond_7
    monitor-exit v1

    goto/16 :goto_c

    .line 2975
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2976
    const-string p0, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still in grace period"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :cond_9
    monitor-exit v1

    goto/16 :goto_c

    .line 2966
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 2967
    const-string p0, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is still allowed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_b
    monitor-exit v1

    goto/16 :goto_c

    .line 3005
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    .line 2921
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2922
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    .line 2923
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2924
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2925
    const-string v5, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    invoke-static {v1, v3}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2925
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :cond_c
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v5

    if-eq v5, v8, :cond_f

    if-eq v5, v2, :cond_f

    if-eq v5, v4, :cond_e

    const/16 v2, 0xc

    if-eq v5, v2, :cond_e

    const/16 v2, 0x9

    if-eq v5, v2, :cond_e

    const/16 v2, 0xa

    if-eq v5, v2, :cond_d

    const/16 v2, 0x17

    if-eq v5, v2, :cond_f

    const/16 v2, 0x18

    if-eq v5, v2, :cond_f

    goto/16 :goto_c

    .line 2953
    :cond_d
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    invoke-static {p0, v1, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    goto/16 :goto_c

    .line 2947
    :cond_e
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v4

    invoke-static {p0, v1, v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V

    goto/16 :goto_c

    .line 2933
    :cond_f
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, v2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2934
    :try_start_3
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-nez v4, :cond_10

    .line 2936
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v4, v5, v1, v3}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;-><init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 2937
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    .line 2939
    :cond_10
    :goto_6
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->processEventLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 2940
    monitor-exit v2

    goto/16 :goto_c

    :goto_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    .line 2783
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserPackage;

    .line 2784
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2785
    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its EJ quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_11
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v2, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v3, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x4

    if-gtz v1, :cond_13

    .line 2791
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "JobScheduler.Quota"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has reached its EJ quota."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2793
    const-string v3, "QuotaStateChanged:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2794
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    .line 2795
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 2798
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2800
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget v4, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 2799
    invoke-static {p0, v2, v3, v4, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2798
    invoke-interface {v1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_c

    .line 2806
    :cond_13
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2807
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v4, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 2809
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2810
    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms left for EJ"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_14
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_c

    .line 2855
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2856
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2857
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2858
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 2860
    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v9, v9, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gt p1, v2, :cond_16

    .line 2863
    :try_start_5
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2864
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2865
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2868
    monitor-exit v9

    goto/16 :goto_c

    :catchall_3
    move-exception p0

    goto/16 :goto_b

    .line 2870
    :cond_15
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v8

    goto :goto_9

    .line 2874
    :cond_16
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController;->getProcessStateQuotaFreeThreshold(I)I

    move-result v2

    if-gt p1, v2, :cond_17

    .line 2875
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    xor-int/2addr p1, v8

    .line 2876
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v8

    goto :goto_8

    .line 2880
    :cond_17
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    move v2, v7

    move p1, v8

    .line 2883
    :goto_8
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2884
    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v10}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    add-long/2addr v10, v5

    .line 2885
    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2886
    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v12

    invoke-virtual {v12, v1, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2887
    invoke-virtual {p0, v3, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v10

    invoke-virtual {p0, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_18
    if-nez p1, :cond_19

    .line 2891
    monitor-exit v9

    goto/16 :goto_c

    .line 2895
    :cond_19
    :goto_9
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1a

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object p1

    .line 2896
    invoke-virtual {p1, v4}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1d

    .line 2897
    :cond_1a
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 2898
    invoke-virtual {p1, v1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 2900
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v8

    :goto_a
    if-ltz v3, :cond_1d

    .line 2901
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v7

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_1b

    .line 2903
    invoke-virtual {v7, v5, v6, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 2905
    :cond_1b
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v7

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_1c

    .line 2907
    invoke-virtual {v7, v5, v6, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_1c
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 2912
    :cond_1d
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2913
    invoke-static {p1, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 2914
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 2915
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2917
    :cond_1e
    monitor-exit v9

    goto/16 :goto_c

    :goto_b
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw p0

    .line 2844
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2845
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2846
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2847
    const-string v2, "JobScheduler.Quota"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_1f
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2850
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-static {p0, v3, v4, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2849
    invoke-interface {v2, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto/16 :goto_c

    .line 2836
    :pswitch_6
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 2837
    const-string p1, "JobScheduler.Quota"

    const-string v1, "Cleaning up timing sessions."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    :cond_20
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 2840
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    goto/16 :goto_c

    .line 2748
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserPackage;

    .line 2749
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2750
    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_21
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v2, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v3, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-gtz v1, :cond_23

    .line 2757
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2759
    const-string v2, "QuotaStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    .line 2761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 2764
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2766
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget v4, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 2765
    invoke-static {p0, v2, v3, v4, p1}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 2764
    invoke-interface {v1, p0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_c

    .line 2772
    :cond_23
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2773
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v4, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 2775
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2776
    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms left."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_24
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3010
    :goto_c
    monitor-exit v0

    return-void

    :goto_d
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
