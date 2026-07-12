.class public Lcom/android/server/alarm/AlarmManagerService$3;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 2018
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2022
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_f

    .line 2024
    invoke-static {p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 2027
    :cond_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_7

    .line 2030
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 2035
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 2039
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2040
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 2042
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 2044
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 2046
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 2047
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2049
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_4

    goto/16 :goto_7

    .line 2053
    :cond_4
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2054
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2053
    invoke-static {v1, p3, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    .line 2060
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    if-ne v0, v2, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    if-ne p1, v2, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    goto :goto_5

    :cond_a
    if-eq v0, v2, :cond_c

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move v0, v4

    goto :goto_4

    :cond_c
    :goto_3
    move v0, v3

    :goto_4
    if-eq p1, v2, :cond_d

    if-nez p1, :cond_9

    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    if-nez v3, :cond_e

    .line 2077
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2078
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_e
    if-nez v0, :cond_f

    if-eqz v3, :cond_f

    .line 2080
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    return-void

    .line 2049
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_f
    :goto_7
    return-void
.end method
