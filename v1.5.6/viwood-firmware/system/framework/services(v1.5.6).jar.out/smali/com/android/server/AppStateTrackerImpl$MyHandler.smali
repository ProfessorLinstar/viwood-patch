.class public Lcom/android/server/AppStateTrackerImpl$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 818
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doUserRemoved(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 861
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 882
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    .line 889
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v2, v1, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-nez v2, :cond_0

    .line 891
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    .line 893
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v2

    .line 897
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 974
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidCached(IZ)V

    return-void

    .line 968
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidIdle(I)V

    .line 969
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3

    .line 970
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    return-void

    .line 962
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidGone(I)V

    .line 963
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3

    .line 964
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidDisabled(I)V

    return-void

    .line 959
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->handleUidActive(I)V

    return-void

    .line 952
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    .line 953
    :goto_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length p1, p0

    :goto_1
    if-ge v4, p1, :cond_3

    aget-object v0, p0, v4

    .line 954
    invoke-static {v0, v1, v5}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 934
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_3
    if-ge v4, v0, :cond_4

    aget-object v5, p1, v4

    .line 935
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monExemptedBucketChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 937
    :cond_4
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 948
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    .line 941
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_4
    if-ge v4, v0, :cond_5

    aget-object v5, p1, v4

    .line 942
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monForceAllAppsStandbyChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 944
    :cond_5
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 927
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_5
    if-ge v4, v0, :cond_6

    aget-object v5, p1, v4

    .line 928
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monTempPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 930
    :cond_6
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 920
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_6
    if-ge v4, v0, :cond_7

    aget-object v5, p1, v4

    .line 921
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveExemptionListChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 923
    :cond_7
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 913
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p1

    array-length v0, p1

    :goto_7
    if-ge v4, v0, :cond_8

    aget-object v5, p1, v4

    .line 914
    invoke-static {v5, v1}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monPowerSaveUnexempted(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 916
    :cond_8
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 906
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v5, v0

    :goto_8
    if-ge v4, v5, :cond_9

    aget-object v6, v0, v4

    .line 907
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v1, v7, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monRunAnyAppOpsChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 909
    :cond_9
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 899
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object v0

    array-length v6, v0

    :goto_9
    if-ge v4, v6, :cond_a

    aget-object v7, v0, v4

    .line 900
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v1, v8}, Lcom/android/server/AppStateTrackerImpl$Listener;->-$$Nest$monUidActiveStateChanged(Lcom/android/server/AppStateTrackerImpl$Listener;Lcom/android/server/AppStateTrackerImpl;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 902
    :cond_a
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;

    move-result-object p0

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void

    .line 893
    :goto_a
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 884
    :cond_b
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->handleUserRemoved(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .locals 2

    .line 992
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 996
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

.method public final handleUidCached(IZ)V
    .locals 3

    .line 980
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 981
    invoke-virtual {v2, p1, p2}, Lcom/android/server/AppStateTrackerImpl$Listener;->handleUidCachedChanged(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final handleUidDisabled(I)V
    .locals 3

    .line 986
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 987
    invoke-virtual {v2, p1}, Lcom/android/server/AppStateTrackerImpl$Listener;->removeAlarmsForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleUidGone(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1000
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public handleUidIdle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public notifyAllExemptionListChanged()V
    .locals 1

    const/4 v0, 0x5

    .line 835
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAllUnexempted()V
    .locals 1

    const/4 v0, 0x4

    .line 830
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAutoRestrictedBucketFeatureFlagChanged(Z)V
    .locals 2

    const/16 v0, 0xb

    .line 855
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 856
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 857
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyExemptedBucketChanged()V
    .locals 1

    const/16 v0, 0xa

    .line 850
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .locals 1

    const/4 v0, 0x7

    .line 845
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 826
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTempExemptionListChanged()V
    .locals 1

    const/4 v0, 0x6

    .line 840
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidActive(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 865
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 1

    const/16 v0, 0xf

    .line 877
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    const/16 v0, 0xd

    .line 869
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1

    const/16 v0, 0xe

    .line 873
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeUid(IZ)V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$MyHandler;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyUidActiveStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1013
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
