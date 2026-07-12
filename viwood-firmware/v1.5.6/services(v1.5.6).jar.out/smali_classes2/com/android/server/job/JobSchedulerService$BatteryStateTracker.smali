.class final Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;


# instance fields
.field public mBatteryLevel:I

.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryNotLow:Z

.field public mCharging:Z

.field public mChargingPolicy:I

.field public mLastBatterySeq:I

.field public mMonitor:Landroid/content/BroadcastReceiver;

.field public mPowerConnected:Z

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monReceiveInternal(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 4370
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 4366
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 4371
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-void
.end method


# virtual methods
.method public getSeq()I
    .locals 0

    .line 4433
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    return p0
.end method

.method public isBatteryNotLow()Z
    .locals 0

    .line 4421
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    return p0
.end method

.method public isCharging()Z
    .locals 0

    .line 4417
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result p0

    return p0
.end method

.method public final isConsideredCharging()Z
    .locals 4

    .line 4543
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4550
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4554
    :cond_1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    return v2

    .line 4563
    :cond_2
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    const/16 v3, 0x46

    if-lt p0, v3, :cond_3

    invoke-static {v0}, Landroid/os/BatteryManager;->isAdaptiveChargingPolicy(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public isMonitoring()Z
    .locals 0

    .line 4425
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPowerConnected()Z
    .locals 0

    .line 4429
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    return p0
.end method

.method public onChargingPolicyChanged(I)V
    .locals 6

    .line 4438
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4439
    :try_start_0
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    if-ne v1, p1, :cond_0

    .line 4440
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4442
    :cond_0
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4443
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charging policy changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v1

    .line 4448
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    const-wide/32 v2, 0x80000

    .line 4449
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4450
    const-string p1, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHARGING POLICY CHANGED#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 4454
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result p1

    if-eq p1, v1, :cond_3

    .line 4455
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 4456
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onBatteryStateChangedLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 4459
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 4464
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public final onReceiveInternal(Landroid/content/Intent;)V
    .locals 7

    .line 4468
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4469
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4471
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 4472
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4473
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life too low @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 4475
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    if-eqz v1, :cond_f

    .line 4476
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    :goto_1
    move v3, v4

    goto/16 :goto_2

    .line 4479
    :cond_1
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4480
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 4481
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery high enough @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    if-nez v1, :cond_f

    .line 4484
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    goto :goto_1

    .line 4487
    :cond_3
    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4488
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4489
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery level changed @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 4490
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4489
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v1

    .line 4493
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 4494
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v2

    if-eq v2, v1, :cond_f

    goto :goto_1

    .line 4495
    :cond_5
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4496
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 4497
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power connected @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    if-eqz v1, :cond_7

    .line 4500
    monitor-exit v0

    return-void

    .line 4502
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    goto/16 :goto_1

    .line 4504
    :cond_8
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4505
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 4506
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Power disconnected @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    if-nez v1, :cond_a

    .line 4509
    monitor-exit v0

    return-void

    .line 4511
    :cond_a
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    goto/16 :goto_1

    .line 4513
    :cond_b
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4514
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 4515
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery charging @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    if-nez v1, :cond_f

    .line 4518
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v1

    .line 4519
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 4520
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v2

    if-eq v2, v1, :cond_f

    goto/16 :goto_1

    .line 4522
    :cond_d
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4523
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 4524
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery discharging @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    if-eqz v1, :cond_f

    .line 4527
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v1

    .line 4528
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 4529
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

    move-result v2

    if-eq v2, v1, :cond_f

    goto/16 :goto_1

    .line 4532
    :cond_f
    :goto_2
    const-string/jumbo v1, "seq"

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 4533
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    if-eqz v3, :cond_10

    .line 4535
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_3
    if-ltz p1, :cond_10

    .line 4536
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onBatteryStateChangedLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 4539
    :cond_10
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMonitorBatteryLocked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4399
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    .line 4400
    new-instance p1, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;-><init>(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 4406
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 4407
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4408
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 4410
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 4411
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 4412
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 4375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4378
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4379
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4381
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4382
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4383
    const-string v1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4384
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4385
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4386
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4388
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/BatteryManagerInternal;->registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V

    .line 4391
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    .line 4392
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    .line 4393
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    .line 4394
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getChargingPolicy()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    return-void
.end method
