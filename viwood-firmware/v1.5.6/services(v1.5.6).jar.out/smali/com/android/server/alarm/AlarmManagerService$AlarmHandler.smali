.class Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 4794
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4795
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 4800
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 4894
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4895
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mremoveExactListenerAlarms(Lcom/android/server/alarm/AlarmManagerService;[I)V

    return-void

    .line 4886
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4887
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4888
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4889
    invoke-virtual {v1, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4890
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    return-void

    .line 4883
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    return-void

    .line 4878
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4879
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4880
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    return-void

    .line 4871
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/PendingIntent;

    .line 4872
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4873
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 4874
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4849
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4850
    :try_start_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 4851
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4852
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4853
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 4855
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 4860
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4861
    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4862
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4863
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4864
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4865
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 4867
    :cond_1
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 4843
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_4

    .line 4844
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p0, v2}, Lcom/android/server/DeviceIdleInternal;->setAlarmsActive(Z)V

    return-void

    .line 4839
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    return-void

    .line 4835
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void

    .line 4806
    :pswitch_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4807
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4808
    :try_start_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    .line 4809
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, p1, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)I

    .line 4810
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 4811
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4814
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 4815
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    .line 4818
    :try_start_4
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v4, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object v12

    .line 4819
    iget-object v5, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 4823
    :catch_0
    iget-wide v4, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 4826
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4829
    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v0, v0, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4, v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_6
    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    .line 4811
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method
