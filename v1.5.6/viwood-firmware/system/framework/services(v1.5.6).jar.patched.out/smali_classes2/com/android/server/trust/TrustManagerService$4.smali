.class public Lcom/android/server/trust/TrustManagerService$4;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 2171
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 2174
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "TrustManagerService"

    const-string v2, "handler: %s"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2175
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2189
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    :pswitch_2
    if-eqz v0, :cond_1

    .line 2246
    const-string v1, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH userId=%s"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2248
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustableTimeoutAlarmListenerForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2249
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 2252
    const-string v0, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH trustable alarm isQueued=%s"

    iget-boolean v3, v1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 2256
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 2252
    invoke-static {v0, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2258
    :cond_2
    const-string v0, "TrustManagerService"

    const-string v2, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH no trustable alarm"

    invoke-static {v0, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-eqz v1, :cond_9

    .line 2263
    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2264
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2186
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_4

    move v3, v4

    :cond_4
    invoke-static {p0, v0, v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V

    return-void

    .line 2239
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_5

    move v3, v4

    .line 2241
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v4, :cond_6

    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 2242
    :goto_1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v3, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    return-void

    .line 2231
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_7

    .line 2232
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 2234
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "except"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2236
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V

    return-void

    .line 2192
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V

    return-void

    .line 2214
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V

    return-void

    .line 2218
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 2219
    :try_start_0
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 2220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 2223
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2224
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 2225
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v2

    if-eq v1, v2, :cond_8

    .line 2226
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 2220
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2210
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2211
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2207
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void

    .line 2201
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V

    .line 2202
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2195
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 2197
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 2198
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchOnEnabledTrustAgentsChanged(Lcom/android/server/trust/TrustManagerService;I)V

    return-void

    .line 2183
    :pswitch_d
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a

    move v3, v4

    :cond_a
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v3, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V

    return-void

    .line 2180
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    return-void

    .line 2177
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$4;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
