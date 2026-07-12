.class public Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public mNewSessionThresholdMs:J

.field public mSessionEndCallback:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 450
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 451
    iput-wide p9, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    .line 452
    iput-object p11, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 516
    invoke-super {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->dump(Ljava/io/PrintWriter;)V

    .line 517
    const-string v0, " lastUsageEndTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 519
    const-string v0, " newSessionThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public noteUsageStart(JJ)V
    .locals 4

    .line 470
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez v0, :cond_1

    .line 471
    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastUsageEndTimeMs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 473
    iput-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 477
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    return-void
.end method

.method public noteUsageStop(J)V
    .locals 7

    .line 483
    invoke-super {p0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 484
    iget p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    if-nez p1, :cond_0

    .line 485
    iget-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 489
    invoke-virtual {p1}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mNewSessionThresholdMs:J

    add-long v2, p1, v1

    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    move-result-object v6

    const/4 v1, 0x3

    .line 488
    const-string v4, "AppTimeLimitController"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public onAlarm()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->onSessionEnd()V

    .line 510
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSessionEnd()V
    .locals 8

    .line 496
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUserRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->-$$Nest$fgetuserId(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v4

    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    iget-object v7, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;->onSessionEnd(IIJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public remove()V
    .locals 2

    .line 458
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 459
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_0

    .line 461
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeSessionUsageGroup(I)V

    :cond_0
    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->mSessionEndCallback:Landroid/app/PendingIntent;

    return-void
.end method
