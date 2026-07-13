.class public Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "AppStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .locals 0

    .line 2894
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 2895
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 2900
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2984
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 2980
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    .line 2971
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_0

    .line 2973
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    .line 2975
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    .line 2966
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 2967
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 2966
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V

    return-void

    .line 2945
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2946
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V

    .line 2947
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    return-void

    .line 2962
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V

    return-void

    .line 2955
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    .line 2956
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2957
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->recycle()V

    return-void

    .line 2951
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    return-void

    :pswitch_8
    const/4 p1, 0x5

    .line 2915
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2918
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    .line 2919
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v4

    monitor-enter v4

    .line 2920
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v5

    :goto_0
    if-ltz v0, :cond_3

    .line 2921
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    cmp-long v1, v9, v2

    if-gtz v1, :cond_2

    .line 2924
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 2925
    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v9}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2926
    iget-object v9, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v10, v9, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    add-long/2addr v10, v2

    .line 2927
    invoke-static {v9}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v9

    invoke-virtual {v9, v1, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v9, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 2929
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_2

    .line 2934
    :cond_2
    :goto_1
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2936
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    .line 2938
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p0}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object p0

    .line 2939
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sub-long/2addr v7, v2

    .line 2938
    invoke-virtual {v0, p0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void

    .line 2936
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2911
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    return-void

    .line 2904
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 2905
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v3, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v4, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v5, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->-$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V

    .line 2907
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
