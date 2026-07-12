.class public final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0

    .line 3441
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 3442
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3447
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3448
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v0, v2, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v0, :cond_0

    .line 3449
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    .line 3451
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 3580
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3581
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    .line 3582
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 3583
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    move-result-object v0

    .line 3584
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v2, v3, :cond_1

    move v8, v3

    .line 3585
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 3587
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/job/IUserVisibleJobObserver;

    .line 3588
    invoke-interface {v3, v0, v8}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3594
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUserVisibleJobObservers(Lcom/android/server/job/JobSchedulerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3595
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_5

    .line 3554
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/job/IUserVisibleJobObserver;

    .line 3556
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3557
    :try_start_3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_4

    .line 3559
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 3560
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 3561
    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3562
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    .line 3565
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;

    move-result-object v4

    .line 3564
    invoke-interface {p1, v4, v3}, Landroid/app/job/IUserVisibleJobObserver;->onUserVisibleJobStateChanged(Landroid/app/job/UserVisibleJobSummary;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3575
    :catch_1
    :cond_4
    :try_start_5
    monitor-exit v2

    goto/16 :goto_5

    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    .line 3544
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3545
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3546
    :try_start_7
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 3548
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3549
    :try_start_8
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 3548
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    .line 3483
    :pswitch_3
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 3484
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_CHANGED_JOB_LIST"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto/16 :goto_5

    .line 3528
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3529
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_6

    .line 3531
    const-string v7, "app uid idle"

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    .line 3537
    :cond_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3538
    :try_start_b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, v3, v8}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3539
    monitor-exit p1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p0

    .line 3521
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3522
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3523
    :try_start_d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3524
    monitor-exit v2

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw p0

    :pswitch_6
    move v0, v3

    .line 3504
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3505
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v8

    :goto_4
    const/16 p1, 0x13

    .line 3506
    invoke-virtual {v2, v3, p1, v8}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    if-eqz v0, :cond_8

    .line 3509
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v7, "uid gone"

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZIILjava/lang/String;)Z

    .line 3515
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3516
    :try_start_f
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v0

    invoke-virtual {v0, v3, v8}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 3517
    monitor-exit p1

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw p0

    .line 3495
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3496
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3497
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3498
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3499
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/job/JobSchedulerService;->updateUidState(III)V

    .line 3500
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    .line 3477
    :pswitch_8
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 3478
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_JOB_GREEDY"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_5

    .line 3489
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    iget v5, p1, Landroid/os/Message;->arg1:I

    const-string v7, "app no longer allowed to run"

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_5

    .line 3465
    :pswitch_a
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 3466
    const-string p1, "JobScheduler"

    const-string v0, "MSG_CHECK_JOB"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_a
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v0, p1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v0, :cond_b

    .line 3470
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_5

    .line 3473
    :cond_b
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_5

    .line 3453
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_d

    .line 3455
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3456
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 3457
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 3459
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3461
    :cond_d
    const-string p1, "JobScheduler"

    const-string v0, "Given null job to check individually"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    :goto_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 3600
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
