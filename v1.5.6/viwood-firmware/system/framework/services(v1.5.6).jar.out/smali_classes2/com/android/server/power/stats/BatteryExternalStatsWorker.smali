.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;


# instance fields
.field public mCurrentReason:Ljava/lang/String;

.field public mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

.field public mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mOnBattery:Z

.field public mOnBatteryScreenOff:Z

.field public mPerDisplayScreenStates:[I

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public mScreenState:I

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSyncTask:Ljava/lang/Runnable;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public mUpdateFlags:I

.field public mUseLatestStates:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$09au3fz9zJxz1a0C4NtyPAvX438(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0Qt5-WUKKSnrPDZAFOdvVci2W08(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C4q7eJQP9Ur2raY6hyEazsDUoLs(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToProcessStateChange$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HU6SYqtwtE9YRIx-15RXxWLIshE(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qkuzv3tC2WN77bJINOBCjoiDeio(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 495
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wchZeRT4nlzYK6ffE_ns17IfYeI(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerLock(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 126
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 131
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 138
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 143
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 377
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 179
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 180
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 181
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    .line 739
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 740
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 742
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 744
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    .line 751
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xa

    .line 849
    new-array v0, v0, [Z

    .line 850
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 852
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 853
    iget-byte v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x8

    .line 876
    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x4

    .line 873
    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x7

    .line 864
    aput-boolean v5, v0, v4

    const/16 v4, 0x9

    .line 865
    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x6

    .line 861
    aput-boolean v5, v0, v4

    goto :goto_1

    .line 868
    :pswitch_4
    aput-boolean v5, v0, v2

    .line 869
    aput-boolean v5, v0, v5

    const/4 v4, 0x2

    .line 870
    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x3

    .line 858
    aput-boolean v5, v0, v4

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x5

    .line 855
    aput-boolean v5, v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .locals 0

    .line 942
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->addAll([I)V

    return-void
.end method

.method public cancelCpuSyncDueToWakelockChange()V
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 1

    .line 277
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelSyncDueToProcessStateChange()V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 763
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-nez v2, :cond_0

    .line 766
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 768
    :cond_0
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 769
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 770
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v4

    .line 771
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v6

    .line 772
    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 773
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v10}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 774
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v12

    .line 776
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v15

    .line 777
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v17

    .line 784
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v18

    sub-long v18, v18, v8

    .line 785
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 786
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 787
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v18, v4

    if-ltz v14, :cond_2

    cmp-long v14, v8, v4

    if-ltz v14, :cond_2

    cmp-long v14, v6, v4

    if-ltz v14, :cond_2

    cmp-long v14, v10, v4

    if-gez v14, :cond_1

    goto :goto_1

    .line 818
    :cond_1
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    move-wide/from16 v26, v2

    :goto_0
    move-wide/from16 v22, v6

    move-wide/from16 v20, v8

    move-wide/from16 v24, v10

    goto :goto_3

    .line 794
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    .line 795
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 796
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2ee

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gtz v2, :cond_3

    .line 798
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v4

    .line 799
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v2

    .line 800
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v6

    .line 801
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    .line 802
    invoke-virtual {v1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v10

    move-wide/from16 v18, v6

    move-wide v6, v10

    move-wide v10, v8

    move-wide v8, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide/from16 v18, v10

    :goto_2
    const/4 v2, 0x1

    move-wide/from16 v26, v4

    move v4, v2

    goto :goto_0

    .line 822
    :goto_3
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 823
    new-instance v14, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-direct/range {v14 .. v27}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    if-eqz v4, :cond_4

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v14
.end method

.method public getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 913
    :cond_1
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 915
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 918
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_3
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 921
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_4
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 924
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_5
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 927
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_6
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    .line 930
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 933
    :cond_7
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_8

    return-object v1

    .line 936
    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_0
    return-object v1
.end method

.method public final getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .locals 1

    const/4 v0, 0x0

    .line 887
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 897
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getLastCollectionTimeStamp()J
    .locals 2

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$scheduleCleanupDueToRemovedUser$3(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$scheduleCleanupDueToRemovedUser$4(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 307
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$scheduleCpuSyncDueToWakelockChange$0()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public final synthetic lambda$scheduleCpuSyncDueToWakelockChange$1()V
    .locals 2

    .line 263
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 264
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$scheduleSyncDueToProcessStateChange$2(I)V
    .locals 1

    .line 284
    const-string/jumbo v0, "procstate-change"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    return-void
.end method

.method public final populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .locals 9

    .line 950
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 953
    :cond_0
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 954
    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 959
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 961
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 964
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    .line 966
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v7, :cond_2

    .line 967
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-eqz v7, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    .line 973
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnergyConsumer \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' has unexpected ordinal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 978
    :cond_2
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/IntArray;

    if-nez v7, :cond_3

    .line 982
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 983
    iget-byte v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 985
    :cond_3
    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 988
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 990
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_5

    .line 992
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 993
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    .line 994
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v1
.end method

.method public scheduleCleanupDueToRemovedUser(I)V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 304
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)V
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)V
    .locals 2

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 334
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    return-void
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)V
    .locals 0

    monitor-enter p0

    .line 234
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .locals 1

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(ILjava/lang/Runnable;J)V

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)V
    .locals 2

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 247
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 248
    iput-boolean p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    const/4 p2, 0x0

    .line 249
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 252
    :cond_1
    iput p4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mScreenState:I

    .line 253
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 254
    const-string/jumbo p2, "screen-state"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 255
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleSyncLocked(Ljava/lang/String;I)V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 365
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 366
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 368
    :cond_0
    iget p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public declared-synchronized scheduleWrite()V
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    const-string/jumbo v0, "write"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)V

    .line 342
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public systemServicesReady()V
    .locals 8

    .line 185
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 186
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 187
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 189
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 191
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 193
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 194
    :try_start_1
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 195
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 196
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 211
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 217
    :goto_0
    :try_start_3
    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 213
    :goto_1
    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 225
    :goto_3
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :try_start_4
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->initEnergyConsumerStatsLocked([Z[Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    .line 228
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    .line 228
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    .line 229
    :goto_4
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    .line 191
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public final updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 472
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 476
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    .line 481
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 482
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "wifi"

    invoke-direct {v5, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 483
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    invoke-direct {v8, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    new-instance v9, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v9, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 500
    :goto_0
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    .line 501
    :try_start_0
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 502
    monitor-exit v7

    const/4 v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v5, v3

    const/4 v7, 0x0

    :goto_1
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_3

    .line 508
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v8

    .line 510
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 511
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_2

    .line 514
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 516
    new-instance v9, Landroid/os/SynchronousResultReceiver;

    const-string v10, "bluetooth"

    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 518
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    invoke-direct {v11, v1, v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v9, v3

    :goto_3
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_6

    .line 547
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerStatsCollector(I)Lcom/android/server/power/stats/PowerStatsCollector;

    move-result-object v8

    .line 549
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 550
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_4

    .line 553
    :cond_4
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_5

    .line 554
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 555
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;

    invoke-direct {v11, v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :cond_5
    :goto_4
    if-nez v7, :cond_6

    .line 573
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    .line 574
    :try_start_1
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 575
    monitor-exit v7

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    :goto_5
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_7

    .line 581
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    .line 584
    :cond_7
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 585
    invoke-static {v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    const-wide/16 v8, 0x7d0

    .line 588
    :try_start_2
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v11}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v17, v0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    .line 593
    :goto_6
    const-string v11, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception reading modem stats: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 591
    :goto_7
    const-string v11, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeout or interrupt reading modem stats: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object/from16 v17, v3

    .line 597
    :goto_9
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    if-eqz v0, :cond_9

    if-nez v4, :cond_8

    goto :goto_e

    .line 601
    :cond_8
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v11

    .line 602
    :try_start_3
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v12

    .line 603
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 607
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_c

    .line 613
    :goto_a
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object v0, v3

    goto :goto_d

    .line 610
    :goto_c
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 617
    :goto_d
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    invoke-virtual {v4, v0, v12}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    move-result-object v0

    goto :goto_f

    :catchall_2
    move-exception v0

    .line 603
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_9
    :goto_e
    move-object v0, v3

    .line 620
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v13

    .line 626
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    .line 627
    :try_start_6
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v23, 0xe

    move-wide/from16 v15, v24

    const/16 v25, 0x0

    move-object/from16 v24, p1

    move-object/from16 v18, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v15

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordHistoryEventLocked(JJILjava/lang/String;I)V

    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_c

    if-eqz p7, :cond_a

    .line 635
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v11

    .line 636
    iget-object v12, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v12

    goto :goto_10

    :catchall_3
    move-exception v0

    goto/16 :goto_17

    :cond_a
    move/from16 v11, p3

    move/from16 v12, p4

    :goto_10
    if-nez v0, :cond_b

    goto :goto_11

    .line 643
    :cond_b
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 645
    :goto_11
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v6, v11, v12, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V

    :cond_c
    const/16 v3, 0x7f

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 649
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 650
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    :cond_d
    if-eqz v7, :cond_e

    .line 654
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    :cond_e
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_11

    .line 659
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-eqz v6, :cond_f

    .line 660
    array-length v7, v6

    if-lez v7, :cond_f

    .line 663
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v8, p6

    invoke-virtual {v7, v6, v8, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateDisplayEnergyConsumerStatsLocked([J[IJ)V

    .line 667
    :cond_f
    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_10

    .line 669
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8, v6, v7, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateGnssEnergyConsumerStatsLocked(JJ)V

    .line 672
    :cond_10
    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_11

    .line 674
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8, v6, v7, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCameraEnergyConsumerStatsLocked(JJ)V

    :cond_11
    if-eqz v0, :cond_12

    .line 678
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    .line 681
    :goto_12
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    array-length v8, v7

    if-ge v6, v8, :cond_12

    .line 682
    aget-wide v7, v7, v6

    .line 683
    iget-object v9, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v9, v9, v6

    .line 684
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v11, v6, v7, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCustomEnergyConsumerStatsLocked(IJLandroid/util/SparseLongArray;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_12
    if-eqz v10, :cond_15

    .line 689
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_14

    if-eqz v0, :cond_13

    .line 691
    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    move-wide v11, v6

    goto :goto_13

    :cond_13
    move-wide v11, v2

    .line 693
    :goto_13
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    goto :goto_14

    .line 696
    :cond_14
    const-string v6, "BatteryExternalStatsWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bluetooth info is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_15
    :goto_14
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_18

    .line 704
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v0, :cond_16

    .line 706
    iget-wide v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    move-wide/from16 v20, v6

    goto :goto_15

    :cond_16
    move-wide/from16 v20, v2

    .line 708
    :goto_15
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v6, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v4, v6}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Landroid/app/usage/NetworkStatsManager;

    .line 710
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v19

    move-object/from16 v18, v4

    move-wide/from16 v22, v13

    move-wide/from16 v24, v15

    invoke-virtual/range {v18 .. v26}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    goto :goto_16

    .line 713
    :cond_17
    const-string v4, "BatteryExternalStatsWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wifi info is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_16
    if-eqz v17, :cond_1a

    if-eqz v0, :cond_19

    .line 719
    iget-wide v2, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 720
    :cond_19
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    const-class v4, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/usage/NetworkStatsManager;

    .line 722
    iget-object v12, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide/from16 v18, v15

    move-wide/from16 v27, v13

    move-object/from16 v13, v17

    move-wide v14, v2

    move-wide/from16 v16, v27

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    :cond_1a
    return-void

    .line 699
    :goto_17
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
