.class public Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .locals 0

    .line 2141
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 2147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2235
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 2181
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->postCheckIdleStates(I)V

    return-void

    .line 2178
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onUidRemoved(I)V

    return-void

    :pswitch_3
    const/16 p1, 0x9

    .line 2192
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2206
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 2207
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    .line 2209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2211
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 2213
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 2214
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 2215
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2216
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->remove(I)V

    .line 2217
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 2222
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2223
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2224
    invoke-virtual {v4, v2, v3}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v4

    .line 2226
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 2227
    invoke-interface {v7, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;->onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2217
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2209
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 2187
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2188
    :try_start_4
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V

    .line 2189
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 2184
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    return-void

    .line 2158
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-wide/32 v1, 0x80000

    .line 2160
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usageStatsHandleUserUnlocked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2162
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2170
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v3

    .line 2164
    :try_start_6
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2167
    const-string p0, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to unlock stopped or removed user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_4
    return-void

    .line 2165
    :cond_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2170
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2171
    throw p0

    .line 2152
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 2175
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    return-void

    .line 2155
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    return-void

    .line 2149
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
