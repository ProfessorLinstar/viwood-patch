.class public Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# instance fields
.field public mFalseWakeups:I

.field public mWtfThreshold:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 4529
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4530
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4531
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    const/16 p1, 0x64

    .line 4532
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 4536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4538
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4539
    :try_start_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4540
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4541
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 4544
    :goto_0
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v2

    .line 4545
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 4546
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    .line 4547
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4548
    :try_start_1
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4549
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v2, :cond_0

    .line 4551
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", nowElapsed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/high16 v7, 0x10000

    and-int v8, v2, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 4561
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4562
    :try_start_2
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4563
    iget-wide v13, v10, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v13, v5, v13

    add-long/2addr v11, v13

    .line 4565
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v13, 0x3e8

    sub-long v15, v11, v13

    cmp-long v8, v3, v15

    if-ltz v8, :cond_1

    add-long/2addr v11, v13

    cmp-long v8, v3, v11

    if-lez v8, :cond_3

    .line 4569
    :cond_1
    sget-boolean v8, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v8, :cond_2

    .line 4570
    const-string v8, "AlarmManager"

    const-string v10, "Time changed notification from kernel; rebatching"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v8, 0x2d

    .line 4573
    invoke-static {v8, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 4574
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4575
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v8, v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4576
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    .line 4577
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4578
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4579
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v8, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4580
    :try_start_3
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    add-int/2addr v12, v9

    iput v12, v8, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    .line 4581
    iput-wide v3, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4582
    iput-wide v5, v8, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4583
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4584
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.TIME_SET"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x25200000

    .line 4585
    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4589
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-static {v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v10

    .line 4590
    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v13

    const/16 v16, 0xcd

    const-string v17, ""

    const/4 v15, 0x0

    .line 4589
    invoke-virtual/range {v12 .. v17}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 4593
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v10, v9}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 4595
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v10}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 4596
    invoke-virtual {v13}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 4595
    invoke-virtual {v10, v8, v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    or-int/lit8 v2, v2, 0x5

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4583
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 4565
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_3
    :goto_1
    if-eq v2, v7, :cond_12

    .line 4606
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4607
    :try_start_6
    sget-boolean v7, Lcom/android/server/alarm/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_4

    .line 4608
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking for alarms... rtc="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", elapsed="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 4612
    :cond_4
    :goto_2
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 4613
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    .line 4614
    invoke-virtual {v3, v5, v6}, Lcom/android/server/alarm/UserWakeupStore;->getUserIdsToWakeup(J)[I

    move-result-object v3

    move v7, v4

    .line 4615
    :goto_3
    array-length v8, v3

    if-ge v7, v8, :cond_7

    .line 4616
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v8

    aget v10, v3, v7

    invoke-virtual {v8, v10, v4}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v8

    aget v10, v3, v7

    .line 4617
    invoke-virtual {v8, v10}, Landroid/app/ActivityManagerInternal;->startUserInBackground(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 4619
    :cond_5
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    aget v10, v3, v7

    invoke-virtual {v8, v10}, Lcom/android/server/alarm/UserWakeupStore;->removeUserWakeup(I)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4623
    :cond_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V

    .line 4624
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3, v1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    move-result v3

    if-nez v3, :cond_9

    .line 4625
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4628
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 4629
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4631
    invoke-virtual {v3, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    const-wide/16 v9, 0x3

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4633
    :cond_8
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4634
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4635
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4636
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto/16 :goto_6

    .line 4642
    :cond_9
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 4643
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4644
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4645
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4646
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v10, v5, v10

    .line 4647
    iget-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v12, v10

    iput-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4648
    iget-wide v12, v7, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v8, v12, v10

    if-gez v8, :cond_a

    .line 4649
    iput-wide v10, v7, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4651
    :cond_a
    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4653
    :cond_b
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4654
    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v8, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v7, v8, :cond_d

    .line 4655
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") false wakeups, nowElapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v8, 0x186a0

    if-ge v7, v8, :cond_c

    mul-int/lit8 v7, v7, 0xa

    .line 4658
    iput v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_4

    .line 4660
    :cond_c
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4664
    :cond_d
    :goto_4
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 4665
    new-instance v8, Landroid/util/IntArray;

    invoke-direct {v8}, Landroid/util/IntArray;-><init>()V

    .line 4666
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 4667
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 4668
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_10

    .line 4669
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/Alarm;

    .line 4670
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v9, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smincrement(Landroid/util/SparseIntArray;I)V

    .line 4671
    iget-boolean v12, v11, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v12, :cond_e

    .line 4672
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v8, v12}, Landroid/util/IntArray;->add(I)V

    .line 4673
    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v12}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smincrement(Landroid/util/SparseIntArray;I)V

    .line 4675
    :cond_e
    invoke-static {v11}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 4676
    iget v12, v11, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4677
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v11, v11, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4676
    invoke-static {v12, v11}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4680
    :cond_10
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 4681
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;

    move-result-object v4

    .line 4682
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v8

    .line 4681
    invoke-virtual {v4, v5, v6, v8}, Landroid/os/BatteryStatsInternal;->noteWakingAlarmBatch(J[I)V

    .line 4684
    :cond_11
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4685
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->cleanUpExpiredQuotas(J)V

    .line 4686
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4687
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4688
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4689
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4690
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4689
    invoke-static {v4, v5, v3, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 4692
    :goto_6
    monitor-exit v2

    goto/16 :goto_0

    :goto_7
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 4697
    :cond_12
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4698
    :try_start_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4699
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 4549
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    .line 4541
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
