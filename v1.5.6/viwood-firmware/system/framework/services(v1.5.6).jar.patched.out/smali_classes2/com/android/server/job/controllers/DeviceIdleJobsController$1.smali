.class public Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_0

    :sswitch_3
    const-string v2, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    .line 94
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    .line 94
    :cond_5
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    return-void

    .line 98
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p2, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmLocalDeviceIdleController(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleInternal;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fputmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V

    .line 101
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    const-string p1, "JobScheduler.DeviceIdle"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got whitelist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmDeviceIdleWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object p0

    .line 103
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 105
    :cond_6
    :goto_2
    monitor-exit p2

    return-void

    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 108
    :pswitch_2
    iget-object p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 109
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmLocalDeviceIdleController(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleInternal;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Lcom/android/server/DeviceIdleInternal;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fputmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)V

    .line 111
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    const-string v1, "JobScheduler.DeviceIdle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got temp whitelist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmPowerSaveTempWhitelistAppIds(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v3

    .line 113
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 115
    :cond_7
    :goto_4
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 116
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 117
    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 118
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v4, v5, v2, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$mupdateTaskStateLocked(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 119
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-$$Nest$fgetmAllowInIdleJobs(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/2addr v0, p1

    goto :goto_5

    .line 122
    :cond_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 123
    iget-object p0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 125
    :cond_a
    monitor-exit p2

    return-void

    :goto_6
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x2a729674 -> :sswitch_3
        -0x3e97d1f -> :sswitch_2
        0x1dbb32d0 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
