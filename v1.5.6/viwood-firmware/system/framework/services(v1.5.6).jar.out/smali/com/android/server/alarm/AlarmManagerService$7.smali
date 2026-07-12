.class public Lcom/android/server/alarm/AlarmManagerService$7;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public static synthetic $r8$lambda$AinQYnhWVt71NkQ037hWAS7gdhc(Lcom/android/server/alarm/AlarmManagerService$7;ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$7;->lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pBK0ysRM9OxX6J2fPvjoLldHNMA(Lcom/android/server/alarm/AlarmManagerService$7;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$7;->lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 5171
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$updateAlarmsForUid$1(ILcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 5192
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5195
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateAllAlarms$0(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 5181
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public removeAlarmsForUid(I)V
    .locals 1

    .line 5228
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5229
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 5230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unblockAlarmsForUid(I)V
    .locals 2

    .line 5212
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5214
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 1

    .line 5221
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5222
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 5223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 1

    .line 5205
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5206
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 5207
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAlarmsForUid(I)V
    .locals 3

    .line 5190
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService$7;I)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5197
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5199
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAllAlarms()V
    .locals 3

    .line 5179
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$7;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5182
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$7;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5184
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
