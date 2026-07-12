.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# static fields
.field public static final ENABLE_SUSPICIOUS_CHECK:Z

.field public static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field public static final LOCAL_SYNC_DELAY:J

.field public static final SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

.field public static sInstance:Lcom/android/server/content/SyncManager;

.field public static final sOpDumpComparator:Ljava/util/Comparator;

.field public static final sOpRuntimeComparator:Ljava/util/Comparator;


# instance fields
.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountsLock:Ljava/lang/Object;

.field public final mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mActiveSyncContexts:Ljava/util/ArrayList;

.field public final mAmi:Landroid/app/ActivityManagerInternal;

.field public final mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field public mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field public mContext:Landroid/content/Context;

.field public volatile mDataConnectionIsConnected:Z

.field public mJobScheduler:Landroid/app/job/JobScheduler;

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public volatile mNextJobId:I

.field public final mNotificationMgr:Landroid/app/NotificationManager;

.field public final mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/content/SyncManager$PackageMonitorImpl;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public volatile mProvisioned:Z

.field public volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field public mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field public final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field public volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field public final mThread:Landroid/os/HandlerThread;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$1YO58nwSn0eHOg9tNr_Xtywro7s(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$4(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$63WHLrNU8Bn_GlxGnOPyWGEkW4c(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 2520
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7g4VRBsssPoraLECZsEgp0Bslg0(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    .line 2966
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$93P3rL2HXSoOpBI2TxIvo2rM7ps(Lcom/android/server/content/SyncManager;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->zeroToEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EwwVix0RGql_2scbHj4IIN1uhyw(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$5(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IUINkZ7I6J3pM0vNnpLeqDAjDCk(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->lambda$new$0(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-rCqIKduPt_pMNS4QFjC5FeAVA(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    .line 2506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2507
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2509
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2510
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2511
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2514
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2516
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iget v4, v1, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2517
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iget-wide v1, v1, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2518
    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v5, p2

    filled-new-array/range {v5 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    move-object/from16 v2, p1

    .line 2507
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0xpzWqXmkDijrMVCn91JqHTBkc(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 4

    .line 2218
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2221
    :cond_0
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 2223
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 2226
    :cond_1
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    .line 2229
    :cond_2
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 2232
    :cond_3
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v1, p1, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 2235
    :cond_4
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 2238
    :cond_5
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 2241
    :cond_6
    iget p0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long v0, p0

    iget p0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    if-eqz p0, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$W-Rf2gPTxsU_UZt2y9rLu7Qfz_o(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onStartUser$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPyf-q5frpsexnajfwNjG4gT3tw(Lcom/android/server/content/SyncOperation;)Z
    .locals 0

    .line 2266
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$jFzarcImKKFe8d2AAk_WZWxA9g4(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onStopUser$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$stKFIA2giNVVLgh3fNVz1esLG_U(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->lambda$onUnlockUser$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUPmmbaGAWh9wrCtMIlUof1muoU(Lcom/android/server/content/SyncOperation;)Z
    .locals 0

    .line 2283
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    return p0
.end method

.method public static synthetic $r8$lambda$z19hP-i8qOq4IlIaakNmxfVyuKg(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 4

    .line 2248
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2251
    :cond_0
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountsLock(Lcom/android/server/content/SyncManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationMgr(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvisioned(Lcom/android/server/content/SyncManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningAccounts(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncHandler(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncManagerWakeLock(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncStorageEngine(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataConnectionIsConnected(Lcom/android/server/content/SyncManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProvisioned(Lcom/android/server/content/SyncManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRunningAccounts(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAllBackoffs(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAllPendingSyncs(Lcom/android/server/content/SyncManager;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetContextForUser(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetJobStats(Lcom/android/server/content/SyncManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTotalBytesTransferredByUid(Lcom/android/server/content/SyncManager;I)J
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAdapterDelayed(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceProvisioned(Lcom/android/server/content/SyncManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageStopped(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->isPackageStopped(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeRescheduleSync(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/content/SyncManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->onUserUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadDataConnectionState(Lcom/android/server/content/SyncManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->removeStaleAccounts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSyncsForAuthority(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleSyncOperationH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAuthorityPendingState(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDelayUntilTime(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRunningAccounts(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifyJobScheduler(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwasPackageEverLaunched(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYNC_ADAPTER_CONNECTION_FLAGS()Landroid/content/Context$BindServiceFlags;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 177
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    .line 183
    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    .line 184
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const-wide/16 v0, 0x15

    .line 226
    invoke-static {v0, v1}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    const/4 v0, 0x0

    .line 235
    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    .line 2217
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    .line 2247
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 650
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    .line 238
    sget-object v2, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    const/4 v2, 0x0

    .line 241
    iput-boolean v2, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 242
    iput v2, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    .line 250
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    .line 310
    new-instance v5, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v3, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    new-instance v3, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    new-instance v3, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    new-instance v4, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v4, v0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 651
    const-class v4, Lcom/android/server/content/SyncManager;

    monitor-enter v4

    .line 652
    :try_start_0
    sget-object v6, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v6, :cond_0

    .line 653
    sput-object v0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 655
    :cond_0
    const-string v6, "SyncManager"

    const-string v7, "SyncManager instantiated multiple times"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 663
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 665
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;Landroid/os/Looper;)V

    .line 666
    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 667
    new-instance v6, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    .line 676
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V

    .line 685
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v6, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncStorageEngine;->setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V

    .line 692
    new-instance v4, Landroid/content/SyncAdaptersCache;

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 694
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SyncManager"

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mThread:Landroid/os/HandlerThread;

    .line 695
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 696
    new-instance v7, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 698
    new-instance v6, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v6, v7}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 711
    new-instance v4, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v4, v1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 712
    invoke-static {v1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 714
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 715
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 717
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3e8

    .line 718
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 719
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 721
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 722
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 729
    new-instance v4, Lcom/android/server/content/SyncManager$PackageMonitorImpl;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/content/SyncManager$PackageMonitorImpl;-><init>(Lcom/android/server/content/SyncManager-IA;)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mPackageMonitor:Lcom/android/server/content/SyncManager$PackageMonitorImpl;

    .line 730
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8, v6, v13, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 733
    new-instance v4, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-nez p2, :cond_1

    .line 737
    const-string/jumbo v3, "notification"

    .line 738
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_1

    .line 740
    :cond_1
    iput-object v6, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 742
    :goto_1
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 743
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    .line 744
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v8, "account"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManager;

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 745
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 746
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    iput-object v8, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 747
    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iput-object v8, v0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    .line 749
    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v8}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    .line 760
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v4, 0x1

    .line 768
    const-string v8, "SyncLoopWakeLock"

    invoke-virtual {v3, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 770
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 772
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 773
    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v3, :cond_3

    .line 774
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 775
    new-instance v3, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v3, v0, v6, v1}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 785
    monitor-enter v7

    .line 786
    :try_start_1
    const-string v4, "device_provisioned"

    .line 787
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 786
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 793
    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    .line 794
    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v2, :cond_2

    .line 795
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 797
    :cond_2
    :goto_2
    monitor-exit v7

    goto :goto_4

    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    :goto_4
    if-nez p2, :cond_4

    .line 802
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v13

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 814
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->allowListExistingSyncAdaptersIfNeeded()V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync manager initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void

    .line 657
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .locals 2

    .line 2256
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2257
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 2301
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/16 v2, 0x2d

    .line 2303
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long p1, p1

    :cond_0
    const-wide/16 v2, 0x3c

    .line 2306
    rem-long v4, p1, v2

    .line 2307
    div-long/2addr p1, v2

    .line 2309
    rem-long v6, p1, v2

    .line 2310
    div-long/2addr p1, v2

    const-wide/16 v2, 0x18

    .line 2312
    rem-long v8, p1, v2

    .line 2313
    div-long/2addr p1, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2319
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x64

    .line 2320
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x68

    .line 2323
    invoke-static {p0, v8, v9, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x6d

    .line 2324
    invoke-static {p0, v6, v7, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x73

    .line 2325
    invoke-static {p0, v4, v5, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2327
    const-string p1, "0s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object p0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2212
    const-string p0, "N/A"

    return-object p0

    .line 2214
    :cond_0
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 8

    .line 2033
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2034
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2035
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2036
    const-string p1, "android.intent.extra.client_label"

    const v1, 0x1040a35

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2038
    new-instance v4, Landroid/content/Intent;

    const-string p1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 2040
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    move-object v2, p0

    .line 2038
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/content/SyncManager;
    .locals 3

    .line 3080
    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    .line 3081
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    .line 3082
    const-string v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3084
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 3085
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSyncSetting(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4180
    :cond_0
    const-string v1, "expedited"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 4183
    :cond_1
    const-string/jumbo v1, "schedule_as_expedited_job"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 4186
    :cond_2
    const-string v1, "ignore_settings"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 4189
    :cond_3
    const-string v1, "ignore_backoff"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 4192
    :cond_4
    const-string v1, "do_not_retry"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 4195
    :cond_5
    const-string v1, "force"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 4198
    :cond_6
    const-string/jumbo v1, "upload"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 4201
    :cond_7
    const-string v1, "deletions_override"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v2

    .line 4204
    :cond_8
    const-string v1, "discard_deletions"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    .line 4207
    :cond_9
    const-string v1, "expected_upload"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    .line 4210
    :cond_a
    const-string v1, "expected_download"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v2

    .line 4213
    :cond_b
    const-string/jumbo v1, "sync_priority"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v2

    .line 4216
    :cond_c
    const-string v1, "allow_metered"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v2

    .line 4219
    :cond_d
    const-string v1, "initialize"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .locals 2

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 v0, 0xa

    cmp-long p4, p1, v0

    if-gez p4, :cond_1

    const/16 p4, 0x30

    .line 2339
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2341
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2342
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public static readyToSync(I)Z
    .locals 2

    .line 3092
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3093
    invoke-static {}, Lcom/android/server/content/SyncJobService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v1, :cond_0

    .line 3094
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncManager;->isUserUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 3098
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3099
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    if-eqz v0, :cond_0

    .line 3100
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V
    .locals 2

    .line 2956
    new-instance v0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v0, p1, p3}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V

    .line 2959
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 2960
    invoke-static {p0, p1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    sget-object p3, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    .line 2961
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 2959
    invoke-virtual {p0, p1, v0, p3, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2965
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2973
    :cond_0
    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->-$$Nest$monReady(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 4154
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 4157
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 4158
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-le v3, v4, :cond_3

    move-object p0, p1

    .line 4159
    :cond_3
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p2, :cond_5

    .line 4160
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->isSyncSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 4163
    :cond_5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    .line 4166
    :cond_6
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_7
    return v0
.end method


# virtual methods
.method public final allowListExistingSyncAdaptersIfNeeded()V
    .locals 16

    move-object/from16 v0, p0

    .line 861
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->shouldGrantSyncAdaptersAccountAccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 864
    :cond_0
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 865
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 867
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 868
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 870
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v7, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 871
    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 872
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    .line 874
    invoke-virtual {v0, v13, v9, v6}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 875
    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v15, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v3, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/4 v0, 0x1

    invoke-virtual {v14, v13, v15, v3, v0}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public final areContactWritesEnabledForUser(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .line 907
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 909
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object p0

    .line 910
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 912
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to fetch user properties for non-existing/partial user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 912
    const-string p1, "SyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 1308
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1307
    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 1315
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1316
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/high16 p3, 0x100000

    .line 1315
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1647
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 4307
    const-string p0, "SyncManager"

    const-string p1, "Null sync operation detected."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4310
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    .line 4311
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v1, "Removing periodic sync "

    const-string v2, " for "

    filled-new-array {v1, p1, v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 4313
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1902
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1903
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1904
    invoke-virtual {v1, p2, v2}, Lcom/android/server/content/SyncOperation;->areExtrasEqual(Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1905
    const-string v2, "cancelScheduledSyncOperation"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_0

    .line 1908
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1910
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1911
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    :cond_2
    return-void
.end method

.method public final cleanupJobs()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final clearAllBackoffs(Ljava/lang/String;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked()V

    .line 389
    sget-object v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final clearBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 8

    .line 1534
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1535
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1536
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 1539
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing backoffs for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1546
    invoke-virtual {p0, v3, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 10

    .line 1884
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1885
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1886
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1887
    const-string v2, "clearScheduledSyncOperations"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_0

    .line 1891
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    return-void
.end method

.method public computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I
    .locals 4

    .line 1261
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1265
    :cond_0
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 1266
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1267
    invoke-virtual {v2, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return v1

    .line 1271
    :cond_1
    iget v2, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 1272
    iget-object v3, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_2

    .line 1273
    invoke-virtual {p0, v3, p2}, Lcom/android/server/content/SyncManager;->isPackageStopped(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 1276
    :cond_2
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, v2, v3}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p2

    const-string p5, "SyncManager"

    if-eqz p2, :cond_3

    .line 1277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not scheduling job "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -- package not allowed to start"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    if-eqz p4, :cond_4

    .line 1282
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Access to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " denied for package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in UID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_4
    return v0
.end method

.method public final containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 336
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 337
    aget-object v1, p1, v0

    iget v2, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_0

    iget-object v1, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 338
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 2

    .line 2196
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2198
    new-instance v0, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v0}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    .line 2200
    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/android/server/content/SyncManagerConstants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    if-eqz p3, :cond_0

    .line 2205
    const-string p3, "Detailed Sync History"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2206
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncLogger;->dumpAll(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 7

    .line 2608
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2609
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_0

    .line 2610
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2611
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2613
    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2614
    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    .line 2615
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2616
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget p2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 2618
    :cond_1
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpDayStatistics(Ljava/io/PrintWriter;)V
    .locals 11

    .line 2860
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2861
    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 2862
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2863
    const-string v2, "Sync Statistics"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    const-string v2, "  Today:  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    .line 2865
    aget-object v1, v0, v1

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_2

    .line 2870
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 2871
    aget-object v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2873
    :cond_0
    iget v5, v4, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v5, v1, v5

    if-le v5, v3, :cond_1

    goto :goto_1

    .line 2876
    :cond_1
    const-string v3, "  Day-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    invoke-virtual {p0, p1, v4}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v4, v1

    .line 2882
    :cond_3
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_8

    add-int/lit8 v4, v4, -0x7

    const/4 v5, 0x0

    .line 2885
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_7

    .line 2886
    aget-object v6, v0, v2

    if-nez v6, :cond_4

    .line 2888
    array-length v2, v0

    goto :goto_4

    .line 2891
    :cond_4
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v4, v7

    if-le v7, v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-nez v5, :cond_6

    .line 2896
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v5, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2898
    :cond_6
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2899
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2900
    iget v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2901
    iget-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v5, :cond_3

    .line 2904
    const-string v6, "  Week-"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x7

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {p0, p1, v5}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 3

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    .line 2265
    const-string v0, "Pending Syncs: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2268
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2271
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2272
    invoke-virtual {v0, v1, v2, p2, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2276
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 3

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    .line 2282
    const-string v0, "Periodic Syncs: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/content/SyncManager;->countIf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2285
    sget-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2287
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2288
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2289
    invoke-virtual {v0, v1, v2, p2, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2293
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpRecentHistory(Ljava/io/PrintWriter;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2627
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 2628
    invoke-virtual {v2}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2629
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 2630
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 2633
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2637
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    const-string v6, " u"

    const-string v7, "/"

    const-string v18, "Unknown"

    if-ge v15, v5, :cond_5

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v15, v15, 0x1

    const/16 v20, 0x1

    move-object/from16 v8, v19

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move/from16 v19, v5

    .line 2638
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-wide/from16 v21, v9

    iget v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2639
    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2643
    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2644
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, v18

    goto :goto_1

    :cond_0
    move-object/from16 v5, v18

    move-object v6, v5

    .line 2652
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_1

    move v13, v7

    .line 2656
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v14, :cond_2

    move v14, v7

    .line 2661
    :cond_2
    iget-wide v7, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    add-long v9, v21, v7

    const-wide/16 v21, 0x1

    add-long v11, v11, v21

    .line 2664
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    move-wide/from16 v23, v7

    const/4 v7, 0x0

    if-nez v18, :cond_3

    .line 2666
    new-instance v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v8, v5, v7}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager-IA;)V

    .line 2667
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-wide/from16 v21, v9

    goto :goto_3

    :cond_3
    move-object/from16 v8, v18

    goto :goto_2

    .line 2669
    :goto_3
    iget-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long v9, v9, v23

    iput-wide v9, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    .line 2670
    iget v5, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2671
    iget-object v5, v8, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2672
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    if-nez v8, :cond_4

    .line 2674
    new-instance v8, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-direct {v8, v6, v7}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager-IA;)V

    .line 2675
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    :cond_4
    iget-wide v5, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long v5, v5, v23

    iput-wide v5, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    .line 2678
    iget v5, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v8, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v5, v19

    move-wide/from16 v9, v21

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v21, v9

    const/16 v20, 0x1

    cmp-long v5, v21, v16

    const-wide/16 v8, 0x3e8

    if-lez v5, :cond_8

    .line 2683
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2686
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    div-long v23, v21, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v5, v10}, [Ljava/lang/Object;

    move-result-object v5

    .line 2684
    const-string v10, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    invoke-virtual {v1, v10, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2688
    new-instance v5, Ljava/util/ArrayList;

    .line 2689
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2690
    new-instance v3, Lcom/android/server/content/SyncManager$13;

    invoke-direct {v3, v0}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v3, v14, 0x3

    .line 2702
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v10, v3, 0x1b

    .line 2704
    new-array v10, v10, [C

    const/16 v15, 0x2d

    .line 2705
    invoke-static {v10, v15}, Ljava/util/Arrays;->fill([CC)V

    .line 2706
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>([C)V

    add-int/lit8 v10, v3, 0x2

    .line 2709
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    move-wide/from16 v23, v8

    const-string v8, "  %%-%ds: %%-9s  %%-11s\n"

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2711
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2713
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2714
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_7

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v25, v5

    move-object/from16 v5, v19

    check-cast v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    move/from16 v19, v9

    .line 2715
    iget-object v9, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-wide/from16 v26, v11

    move v12, v10

    .line 2721
    iget-wide v10, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v28, v10

    .line 2722
    iget v10, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    .line 2723
    div-long v30, v28, v23

    .line 2724
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-wide/16 v30, 0x64

    mul-long v28, v28, v30

    div-long v28, v28, v21

    move/from16 v32, v10

    .line 2725
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v11, v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 2723
    const-string v11, "%ds/%d%%"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move/from16 v28, v12

    .line 2727
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v29, v6

    mul-int/lit8 v6, v32, 0x64

    move-object/from16 v32, v7

    int-to-long v6, v6

    div-long v6, v6, v26

    .line 2728
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v12, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 2726
    const-string v7, "%d/%d%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2729
    filled-new-array {v9, v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2731
    new-instance v6, Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    .line 2733
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2734
    new-instance v5, Lcom/android/server/content/SyncManager$14;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$14;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2745
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/content/SyncManager$AccountSyncStats;

    move/from16 v33, v5

    move-object v12, v6

    .line 2746
    iget-wide v5, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v34, v5

    .line 2747
    iget v5, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    .line 2748
    div-long v36, v34, v23

    .line 2749
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    mul-long v34, v34, v30

    div-long v34, v34, v21

    move/from16 v36, v5

    .line 2750
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 2748
    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2752
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v34, v8

    mul-int/lit8 v8, v36, 0x64

    move/from16 v35, v9

    int-to-long v8, v8

    div-long v8, v8, v26

    .line 2753
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 2751
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2754
    iget-object v8, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    filled-new-array {v8, v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object v6, v12

    move/from16 v5, v33

    move-object/from16 v8, v34

    move/from16 v9, v35

    goto :goto_5

    :cond_6
    move-object/from16 v34, v8

    .line 2756
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v9, v19

    move-object/from16 v5, v25

    move-wide/from16 v11, v26

    move/from16 v10, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v32

    goto/16 :goto_4

    :cond_7
    :goto_6
    move-object/from16 v29, v6

    move-object/from16 v32, v7

    goto :goto_7

    :cond_8
    move-wide/from16 v23, v8

    goto :goto_6

    .line 2760
    :goto_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2761
    const-string v3, "Recent Sync History"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const-string v3, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  %-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s  %-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s %s\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2764
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 2765
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v4, :cond_10

    .line 2767
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2768
    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v11, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2769
    invoke-virtual {v10, v11}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 2773
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2774
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v32

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v14, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v29

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_9
    move-object/from16 v13, v32

    move-object/from16 v10, v18

    move-object v11, v10

    .line 2781
    :goto_9
    iget-wide v14, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-object v12, v2

    move-object/from16 v19, v3

    .line 2782
    iget-wide v2, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v21, v2

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2785
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_a

    .line 2788
    const-string v3, ""

    :goto_a
    move/from16 v32, v8

    :goto_b
    move-object/from16 v25, v12

    goto :goto_c

    .line 2790
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sub-long v25, v25, v21

    div-long v25, v25, v23

    const-wide/16 v27, 0x3c

    cmp-long v3, v25, v27

    if-gez v3, :cond_b

    .line 2792
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_b
    const-wide/16 v30, 0xe10

    cmp-long v3, v25, v30

    if-gez v3, :cond_c

    .line 2794
    div-long v30, v25, v27

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    rem-long v25, v25, v27

    move/from16 v32, v8

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "%02d:%02d"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_c
    move/from16 v32, v8

    .line 2796
    rem-long v33, v25, v30

    .line 2797
    div-long v25, v25, v30

    .line 2798
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    div-long v25, v33, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    rem-long v33, v33, v27

    move-object/from16 v25, v12

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v3, v8, v12}, [Ljava/lang/Object;

    move-result-object v3

    .line 2797
    const-string v8, "%02d:%02d:%02d"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2801
    :goto_c
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v32, 0x1

    .line 2804
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2805
    invoke-static/range {v21 .. v22}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v12

    sget-object v21, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v22, v6

    iget v6, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v6, v21, v6

    long-to-float v14, v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    .line 2807
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v2, v12, v6, v14, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 2803
    const-string v3, "  #%-3d: %s %8s  %5.1fs  %8s"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2809
    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 2810
    invoke-static {v7, v2}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v10, v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2809
    invoke-virtual {v1, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2812
    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v3, v20

    if-ne v2, v3, :cond_d

    iget-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    cmp-long v6, v10, v16

    if-nez v6, :cond_d

    iget-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v6, v10, v16

    if-eqz v6, :cond_e

    .line 2816
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 2817
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v10, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 2818
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v2, v6, v10}, [Ljava/lang/Object;

    move-result-object v2

    .line 2815
    const-string v6, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    invoke-virtual {v1, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2820
    :cond_e
    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string/jumbo v6, "success"

    .line 2821
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2822
    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "    mesg=%s\n"

    invoke-virtual {v1, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_f
    move/from16 v20, v3

    move-object/from16 v32, v13

    move-object/from16 v3, v19

    move-object/from16 v6, v22

    move-object/from16 v2, v25

    goto/16 :goto_8

    :cond_10
    move-object/from16 v25, v2

    move-object/from16 v19, v3

    move-object/from16 v13, v32

    .line 2825
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2826
    const-string v2, "Recent Sync History Extras"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 2827
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v4, :cond_14

    move-object/from16 v12, v25

    .line 2829
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 2830
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_11

    .line 2831
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    move-object/from16 v14, v29

    goto :goto_f

    .line 2834
    :cond_12
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 2835
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 2839
    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2840
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v29

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_13
    move-object/from16 v14, v29

    move-object/from16 v6, v18

    move-object v7, v6

    .line 2847
    :goto_e
    iget-wide v9, v2, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-int/lit8 v11, v8, 0x1

    .line 2850
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2851
    invoke-static {v9, v10}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v2, v10, v2

    filled-new-array {v11, v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2849
    const-string v9, "  #%-3d: %s %8s "

    invoke-virtual {v1, v9, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2854
    filled-new-array {v6, v7, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v25, v12

    move-object/from16 v29, v14

    goto :goto_d

    :cond_14
    return-void
.end method

.method public final dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 2912
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2913
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync adapters for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2919
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2920
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2922
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2923
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 0

    .line 2622
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    .line 2623
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpSyncState(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V
    .locals 33
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2350
    const-string v3, "Data connected: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2351
    const-string v3, "Battery saver: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2352
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2354
    const-string v3, "Background network restriction: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    .line 2357
    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v3

    :goto_1
    const/4 v6, 0x2

    if-eq v3, v4, :cond_4

    if-eq v3, v6, :cond_3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_2

    .line 2369
    const-string v7, "Unknown("

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2371
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2366
    :cond_2
    const-string v3, " enabled"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2363
    :cond_3
    const-string v3, " whitelisted"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2360
    :cond_4
    const-string v3, " disabled"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    :goto_2
    const-string v3, "Auto sync: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2379
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2381
    invoke-virtual {v9, v7}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2380
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 2383
    :cond_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2385
    :cond_6
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 2386
    invoke-virtual {v3, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 2387
    const-string v7, "Storage low: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2388
    const-string v3, "Clock valid: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2391
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object v3

    .line 2393
    const-string v4, "Accounts: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    sget-object v4, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v3, v4, :cond_8

    .line 2395
    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5

    .line 2397
    :cond_8
    const-string/jumbo v4, "not known yet"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2400
    const-string v4, "Now: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2404
    const-string v4, "Uptime: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v7, v8}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2405
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2406
    const-string v4, "Time spent syncing: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2409
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2410
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v9

    .line 2409
    invoke-static {v2, v9, v10}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2411
    const-string v4, ", sync "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v4, v4, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v4, :cond_9

    const-string v4, ""

    goto :goto_6

    :cond_9
    const-string/jumbo v4, "not "

    :goto_6
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2413
    const-string v4, "in progress"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Active Syncs: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2418
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v5

    :goto_7
    if-ge v11, v10, :cond_a

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2419
    iget-wide v13, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v13, v7, v13

    .line 2420
    const-string v15, "  "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2422
    invoke-static {v2, v13, v14}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2423
    const-string v13, " - "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v13, p2

    invoke-virtual {v12, v4, v5, v13, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7

    :cond_a
    move-object/from16 v13, p2

    .line 2427
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2429
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPendingSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2430
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/content/SyncManager;->dumpPeriodicSyncs(Ljava/io/PrintWriter;Lcom/android/server/content/SyncAdapterStateFetcher;)V

    .line 2433
    const-string v4, "Sync Status"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v9, v5}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    .line 2439
    array-length v9, v3

    move v10, v5

    :goto_8
    if-ge v10, v9, :cond_12

    aget-object v11, v3, v10

    .line 2441
    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v12

    .line 2442
    :try_start_0
    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    iget v14, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 2443
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2444
    const-string v12, "Account %s u%d %s%s\n"

    iget-object v14, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget v15, v11, Landroid/accounts/AccountAndUser;->userId:I

    .line 2445
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v6

    iget-object v6, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 2446
    const-string v13, ""

    goto :goto_9

    :cond_b
    const-string v13, " (locked)"

    :goto_9
    filled-new-array {v14, v15, v6, v13}, [Ljava/lang/Object;

    move-result-object v6

    .line 2444
    invoke-virtual {v1, v12, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2448
    const-string v6, "======================================================================="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2449
    new-instance v6, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v12, 0x10

    invoke-direct {v6, v12}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    .line 2450
    const-string v17, "Authority"

    const-string v18, "Syncable"

    const-string v19, "Enabled"

    const-string v20, "Stats"

    const-string v21, "Loc"

    const-string v22, "Poll"

    const-string v23, "Per"

    const-string v24, "Feed"

    const-string v25, "User"

    const-string v26, "Othr"

    const-string v27, "Tot"

    const-string v28, "Fail"

    const-string v29, "Can"

    const-string v30, "Time"

    const-string v31, "Last Sync"

    const-string v32, "Backoff"

    filled-new-array/range {v17 .. v32}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v5, v5, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2474
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 2475
    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v14, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v13, v14}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2476
    new-instance v13, Lcom/android/server/content/SyncManager$12;

    invoke-direct {v13, v0}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2484
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_a
    if-ge v14, v13, :cond_11

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2485
    iget-object v5, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    iget-object v5, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v3, v18

    :goto_b
    const/4 v5, 0x0

    goto :goto_a

    .line 2488
    :cond_c
    invoke-virtual {v6}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v3

    .line 2489
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-wide/from16 v19, v7

    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v15, Landroid/content/SyncAdapterType;

    iget-object v15, v15, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move/from16 v21, v9

    iget v9, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v7, v8, v15, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2490
    invoke-virtual {v5, v7}, Lcom/android/server/content/SyncStorageEngine;->getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    .line 2495
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2496
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2497
    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 2499
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v15, 0x32

    if-le v9, v15, :cond_d

    .line 2500
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v15

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2502
    :cond_d
    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    filled-new-array {v8, v9, v15}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2504
    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;

    invoke-direct {v8, v2, v6}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    .line 2520
    const-string v15, "Total"

    iget-object v9, v5, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move-object/from16 v22, v2

    new-instance v2, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;-><init>()V

    move/from16 v23, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v15, v9, v2, v10}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2521
    const-string v2, "Today"

    iget-object v9, v5, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v10, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v15, v3, 0x1

    move-object/from16 p2, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v2, v9, v10, v11}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2522
    const-string v2, "Yestr"

    iget-object v9, v5, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v10, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v11, v3, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v2, v9, v10, v11}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2528
    iget-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v2, v8, v19

    if-lez v2, :cond_e

    .line 2529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "D: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long v8, v8, v19

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v8, 0xf

    invoke-virtual {v6, v3, v8, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move-wide/from16 v24, v10

    .line 2530
    iget-wide v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v10, v19

    if-lez v2, :cond_e

    add-int/lit8 v2, v3, 0x2

    .line 2531
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "B: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long v10, v10, v19

    div-long v10, v10, v24

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v15, v8, v9}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2532
    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v9, v9, v24

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v8, v7}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2537
    :cond_e
    iget-wide v7, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    const/16 v7, 0xe

    if-eqz v2, :cond_f

    .line 2538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v11, v5, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v8, v8, v11

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " SUCCESS"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v3, v7, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x2

    move-wide/from16 v24, v9

    .line 2540
    iget-wide v9, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v9, v10}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v15, v7, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    goto :goto_c

    :cond_f
    move-wide/from16 v24, v9

    .line 2542
    :goto_c
    iget-wide v8, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v2, v8, v24

    if-eqz v2, :cond_10

    add-int/lit8 v2, v3, 0x1

    .line 2543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FAILURE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x2

    .line 2545
    iget-wide v8, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v8, v9}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 2547
    iget-object v2, v5, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v3, v7, v2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v11, p2

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move/from16 v9, v21

    move-object/from16 v2, v22

    move/from16 v10, v23

    goto/16 :goto_b

    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move/from16 v21, v9

    move/from16 v23, v10

    .line 2550
    invoke-virtual {v6, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    add-int/lit8 v10, v23, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    .line 2443
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2553
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    .line 2555
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2556
    const-string v0, "Per Adapter History"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2559
    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 2560
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2562
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2563
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x2f

    .line 2564
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 2565
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2566
    const-string v3, " u"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2567
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2568
    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2569
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2570
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 2573
    const-string v3, "    Per source last syncs:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2574
    :goto_e
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_13

    .line 2575
    const-string v6, "      "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2576
    const-string v6, "%8s"

    aget-object v5, v5, v3

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2577
    const-string v5, "  Success: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2578
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2580
    const-string v5, "  Failure: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2581
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    iget-object v5, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2584
    :cond_13
    const-string v3, "    Last syncs:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2585
    :goto_f
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v5

    if-ge v3, v5, :cond_14

    .line 2586
    const-string v5, "      "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2587
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5, v3}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x20

    .line 2588
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 2589
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5, v3}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2592
    :cond_14
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncStatusInfo;

    invoke-virtual {v2}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v2

    if-nez v2, :cond_15

    .line 2593
    const-string v2, "      N/A"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_16
    return-void
.end method

.method public final dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 2603
    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long/2addr p2, v0

    const-wide/16 v0, 0xa

    rem-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const/16 p0, 0x73

    .line 2604
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;
    .locals 0

    .line 821
    const-class p0, Landroid/accounts/AccountManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public final getAllPendingSyncs()Ljava/util/List;
    .locals 5

    .line 294
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 295
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    .line 296
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 299
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 300
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 302
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    :cond_0
    const-string v3, "SyncManager"

    const-string v4, "Non-sync job inside of SyncManager\'s namespace"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getAllUsers()Ljava/util/List;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 478
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 479
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    .line 4298
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4301
    :catch_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 4

    .line 946
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v0

    .line 947
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 948
    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 951
    invoke-virtual {p0, v1, p3}, Lcom/android/server/content/SyncManager;->shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 952
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Account sync is disabled for account: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provider: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz v1, :cond_5

    .line 958
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 963
    invoke-static {p3, v1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    .line 962
    invoke-virtual {p0, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v3

    .line 968
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p3

    iget-object p0, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 969
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 968
    invoke-interface {p3, p0, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return v3

    .line 975
    :cond_3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 976
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :catch_0
    :cond_4
    return v3

    :cond_5
    :goto_0
    return v0
.end method

.method public final getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 0

    .line 646
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 647
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-object p0
.end method

.method public final getJobStats()Ljava/lang/String;
    .locals 2

    .line 398
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JobStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    .line 400
    const-string p0, "(JobSchedulerInternal==null)"

    goto :goto_0

    .line 401
    :cond_0
    invoke-interface {p0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 11

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1365
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    new-instance v3, Landroid/content/PeriodicSync;

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1367
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iget-wide v1, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long v9, v1, v9

    invoke-direct/range {v3 .. v10}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1366
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSyncAdapterPackageAsUser(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    .line 1425
    invoke-static {p2, p1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p1

    .line 1424
    invoke-virtual {v1, p1, p4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1430
    :cond_1
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p1}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;
    .locals 6

    .line 1405
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1, p3}, Landroid/content/SyncAdaptersCache;->getSyncAdapterPackagesForAuthority(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1407
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1408
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1409
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1413
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1415
    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;
    .locals 5

    .line 1390
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1391
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1392
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1393
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1394
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v3, p1, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1400
    new-array p0, p0, [Landroid/content/SyncAdapterType;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/SyncAdapterType;

    return-object p0
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .locals 0

    .line 902
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object p0
.end method

.method public final getTotalBytesTransferredByUid(I)J
    .locals 2

    .line 1490
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getUnusedJobIdH()I
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 284
    :goto_0
    iget v1, p0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/content/SyncManager;->isJobIdInUseLockedH(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget v1, p0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    goto :goto_0

    .line 290
    :cond_0
    iget p0, p0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    return p0
.end method

.method public final increaseBackoffSetting(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 14

    .line 1550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1552
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1553
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x2

    .line 1555
    const-string v7, "SyncManager"

    if-eqz v0, :cond_2

    .line 1558
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 1559
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1561
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1560
    invoke-static {v7, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1566
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1567
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    iget-object v8, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v8}, Lcom/android/server/content/SyncManagerConstants;->getRetryTimeIncreaseFactor()F

    move-result v8

    mul-float/2addr v0, v8

    float-to-long v8, v0

    goto :goto_0

    :cond_2
    const-wide/16 v8, -0x1

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->getInitialSyncRetryTimeInSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    long-to-double v10, v8

    const-wide v12, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 1572
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v8

    .line 1576
    :cond_3
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManagerConstants;->getMaxSyncRetryTimeInSeconds()I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v10, v4

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    move-wide v4, v10

    goto :goto_1

    :cond_4
    move-wide v4, v8

    :goto_1
    add-long/2addr v2, v4

    .line 1583
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backoff until: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", delayTime: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_5
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    .line 1587
    const-string v0, "increaseBackoffSetting"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final isAdapterDelayed(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 8

    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1629
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1630
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1631
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    return v3

    .line 1634
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isContactSharingAllowedForCloneProfile()Z
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceProvisioned()Z
    .locals 2

    .line 884
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 885
    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final isJobIdInUseLockedH(ILjava/util/List;)Z
    .locals 5

    .line 267
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 268
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    .line 269
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 275
    iget-object v2, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v2, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final isPackageStopped(Ljava/lang/String;I)Z
    .locals 0

    .line 1298
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isPackageStopped(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1300
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t determine stopped state for unknown package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSyncStillActiveH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 4

    .line 4135
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final isUserUnlocked(I)Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 848
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final jitterize(JJ)J
    .locals 2

    .line 892
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    sub-long/2addr p3, p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    long-to-int p3, p3

    .line 898
    invoke-virtual {p0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long p3, p0

    add-long/2addr p1, p3

    return-wide p1

    .line 895
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic lambda$new$0(Landroid/accounts/Account;I)V
    .locals 12

    .line 751
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 756
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 752
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onStartUser$1(I)V
    .locals 1

    .line 826
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "onStartUser: user="

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic lambda$onStopUser$3(I)V
    .locals 1

    .line 842
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "onStopUser: user="

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic lambda$onUnlockUser$2(I)V
    .locals 1

    .line 834
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "onUnlockUser: user="

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic lambda$scheduleSync$4(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;Landroid/os/Bundle;)V
    .locals 14

    move-object/from16 v0, p13

    if-eqz v0, :cond_0

    .line 1167
    const-string v1, "booleanResult"

    .line 1168
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v1, p1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$scheduleSync$5(Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 14

    .line 1221
    iget-object v1, p1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public final likelyHasPeriodicSyncs()Z
    .locals 2

    const/4 v0, 0x0

    .line 638
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    return v0
.end method

.method public final maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .locals 4

    const/4 v0, 0x3

    .line 1917
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encountered error(s) during the sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableBackoff()V

    const/4 v2, 0x1

    .line 1924
    iput-boolean v2, p2, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1926
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->hasDoNotRetry()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 1931
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1934
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->isUpload()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_3

    .line 1936
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->enableTwoWaySync()V

    if-eqz v0, :cond_2

    .line 1938
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void

    .line 1942
    :cond_3
    iget-boolean v2, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 1946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because it retried too many times: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 1949
    :cond_5
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 1952
    const-string/jumbo p1, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void

    .line 1956
    :cond_7
    iget-boolean v2, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    .line 1958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/16 v0, 0x2710

    .line 1961
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void

    .line 1962
    :cond_9
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v0, :cond_a

    .line 1965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V

    return-void

    .line 1971
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1971
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final migrateSyncJobNamespaceIfNeeded()V
    .locals 10

    .line 516
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->isJobNamespaceMigrated()Z

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->isJobAttributionFixed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/job/JobScheduler;

    .line 522
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 524
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v3

    :goto_0
    if-ltz v4, :cond_2

    .line 534
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 535
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 538
    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v8, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 539
    invoke-virtual {v7}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v7

    .line 538
    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    .line 540
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    move v5, v2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, v5}, Lcom/android/server/content/SyncStorageEngine;->setJobNamespaceMigrated(Z)V

    .line 549
    :cond_3
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 550
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledOwnJobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_5

    .line 562
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    .line 563
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 569
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 570
    invoke-virtual {v5}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v5

    .line 569
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move v3, v2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 574
    :cond_5
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->setJobAttributionFixed(Z)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-eq p1, v0, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->start()V

    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopUser(I)V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 840
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 840
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUnlockUser(I)V
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 832
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/content/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 832
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 4

    .line 2009
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "onUserRemoved: u"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2013
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    .line 2014
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2015
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 2016
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v2, p1, :cond_0

    .line 2017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user removed u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1996
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1998
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo p1, "onUserStopped"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 14

    .line 1978
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    .line 1980
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    .line 1982
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1983
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1986
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 1987
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1986
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1988
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 1991
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/4 v12, -0x3

    const/4 v13, 0x0

    const/4 v6, -0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v3, p0

    move v5, p1

    .line 1989
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final postMonitorSyncProgressMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 2

    const/4 v0, 0x2

    .line 1465
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    const-string/jumbo v0, "posting MESSAGE_SYNC_MONITOR in 60s"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    iget v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1471
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->getTotalBytesTransferredByUid(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    .line 1472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    .line 1473
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v1, 0x8

    .line 1474
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1477
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 1

    .line 1481
    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    .line 1483
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final readDataConnectionState()Z
    .locals 0

    .line 393
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1339
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v0, 0xe

    .line 1340
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1339
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1341
    invoke-virtual {p0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1342
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeStaleAccounts()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 358
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeSyncsForAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 4

    .line 1324
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v1, "removeSyncsForAuthority: "

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    .line 1326
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 1328
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v3, "canceling: "

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1330
    invoke-virtual {p0, v1, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V
    .locals 5

    .line 1595
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v1, "rescheduleSyncs() ep="

    const-string v2, " why="

    filled-new-array {v1, p1, v2, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1597
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 1599
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 1600
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1602
    invoke-virtual {p0, v2, p2}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 1603
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 1606
    const-string p2, "SyncManager"

    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1607
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rescheduled "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " syncs for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public resetTodayStats()V
    .locals 1

    .line 4317
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    return-void
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 14

    .line 1381
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1382
    const-string/jumbo v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1383
    sget-wide v7, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v9, 0x1

    const/4 v6, -0x2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .locals 14

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    .line 1038
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .locals 43

    move-object/from16 v1, p0

    if-nez p5, :cond_0

    .line 1052
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p5

    .line 1054
    :goto_0
    invoke-virtual {v11}, Landroid/os/Bundle;->size()I

    .line 1055
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1056
    iget-object v2, v1, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    move-object v4, v2

    const-string/jumbo v2, "scheduleSync: account="

    move-object v5, v4

    const-string v4, " u"

    move-object v6, v5

    .line 1057
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v6

    const-string v6, " authority="

    const-string v8, " reason="

    .line 1059
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " extras="

    const-string v12, " cuid="

    .line 1061
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, " cpid="

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, " cpkg="

    const-string v18, " mdm="

    .line 1062
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, " ciar="

    .line 1063
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v22, " sef="

    .line 1064
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v17, p13

    move/from16 v24, v3

    move-object v0, v7

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    filled-new-array/range {v2 .. v23}, [Ljava/lang/Object;

    move-result-object v2

    move-object v14, v7

    move-object v15, v11

    .line 1056
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object/from16 v14, p4

    move/from16 v24, v3

    move-object v15, v11

    move-object/from16 v3, p1

    .line 1068
    :goto_1
    iget-object v2, v1, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_5

    move/from16 v4, p2

    if-eq v4, v6, :cond_2

    .line 1071
    :try_start_0
    new-array v5, v7, [Landroid/accounts/AccountAndUser;

    new-instance v8, Landroid/accounts/AccountAndUser;

    invoke-direct {v8, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v8, v5, v0

    :goto_2
    move-object v8, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 1073
    :cond_2
    iget-object v5, v1, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v8, v5

    const/4 v9, 0x0

    move v10, v0

    :goto_3
    if-ge v10, v8, :cond_4

    aget-object v11, v5, v10

    .line 1074
    iget-object v12, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v12}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1075
    const-class v12, Landroid/accounts/AccountAndUser;

    invoke-static {v12, v9, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/accounts/AccountAndUser;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v9

    goto :goto_4

    :cond_5
    move/from16 v4, p2

    .line 1081
    iget-object v5, v1, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    goto :goto_2

    .line 1083
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_13

    .line 1089
    :cond_6
    const-string/jumbo v2, "upload"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1090
    const-string v2, "force"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1092
    const-string v3, "ignore_backoff"

    invoke-virtual {v15, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    const-string v3, "ignore_settings"

    invoke-virtual {v15, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1095
    :cond_7
    const-string v3, "ignore_settings"

    .line 1096
    invoke-virtual {v15, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/4 v9, 0x3

    if-eqz v16, :cond_8

    move/from16 v24, v7

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    move/from16 v24, v9

    goto :goto_5

    :cond_9
    if-nez v14, :cond_a

    goto :goto_5

    .line 1106
    :cond_a
    const-string v2, "feed"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v3, 0x5

    move/from16 v24, v3

    goto :goto_5

    :cond_b
    move/from16 v24, v0

    .line 1115
    :goto_5
    array-length v10, v8

    move v11, v0

    :goto_6
    if-ge v11, v10, :cond_1d

    aget-object v12, v8, v11

    if-ltz v4, :cond_d

    .line 1117
    iget v0, v12, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v0, :cond_d

    if-eq v4, v0, :cond_d

    :cond_c
    move/from16 v2, p6

    move-object v0, v1

    move-object/from16 v37, v8

    move/from16 v38, v9

    move/from16 v39, v10

    move/from16 v40, v11

    move-object v11, v15

    move-wide/from16 v14, p7

    goto/16 :goto_12

    .line 1123
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1125
    iget-object v2, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v12, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1126
    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    if-eqz v14, :cond_f

    .line 1133
    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1134
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz v2, :cond_f

    .line 1135
    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_f
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1139
    iget-object v1, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v12, Landroid/accounts/AccountAndUser;->userId:I

    xor-int/lit8 v4, p9, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v13, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    move-result v1

    if-nez v1, :cond_10

    :goto_9
    move-object v1, v0

    move v4, v13

    goto :goto_8

    .line 1146
    :cond_10
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v4, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1147
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    iget v5, v12, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_9

    .line 1153
    :cond_11
    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v1, v9, :cond_13

    .line 1156
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v4, "scheduleSync: Not scheduling sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move v1, v6

    .line 1158
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1159
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v2, v13}, Lcom/android/server/content/SyncManager;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_12

    move v6, v1

    move v4, v13

    :goto_a
    move-object v1, v0

    goto :goto_8

    .line 1164
    :cond_12
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v5, v12, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    new-instance v14, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    move/from16 v7, p6

    move-object/from16 v41, v4

    move-object/from16 v42, v5

    move-object/from16 v37, v8

    move/from16 v38, v9

    move/from16 v39, v10

    move/from16 v40, v11

    move-object/from16 p5, v15

    move/from16 v4, p3

    move-wide/from16 v8, p7

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v15, v2

    move-object v5, v3

    move-object v2, v12

    move v3, v13

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move v13, v3

    move v6, v7

    move-object v3, v2

    invoke-direct {v14, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v1, v2, v15, v13, v14}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    :goto_b
    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object v1, v0

    move-object v12, v3

    move v4, v13

    move-object/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v39

    move/from16 v11, v40

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_13
    move/from16 v6, p6

    move-object v5, v3

    move-object/from16 v37, v8

    move/from16 v38, v9

    move/from16 v39, v10

    move/from16 v40, v11

    move-object v3, v12

    move-object/from16 p5, v15

    .line 1180
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncAdapterType;

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v27

    .line 1181
    iget-object v7, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncAdapterType;

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v7

    if-nez p9, :cond_14

    if-gez v1, :cond_14

    if-eqz v7, :cond_14

    .line 1183
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v3, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v34, 0x1

    move/from16 v35, p11

    move/from16 v36, p12

    move-object/from16 v30, v1

    move-object/from16 v33, v5

    move-object/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v30 .. v36}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    const/4 v7, 0x1

    goto :goto_c

    :cond_14
    move v7, v1

    :goto_c
    const/4 v1, -0x2

    if-eq v6, v1, :cond_15

    if-eq v6, v7, :cond_15

    :goto_d
    goto :goto_b

    .line 1193
    :cond_15
    iget-object v8, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/content/SyncAdapterType;

    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v8

    if-nez v8, :cond_16

    if-eqz v16, :cond_16

    goto :goto_d

    :cond_16
    if-ltz v7, :cond_18

    if-nez v17, :cond_18

    .line 1197
    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v9, v3, Landroid/accounts/AccountAndUser;->userId:I

    .line 1200
    invoke-virtual {v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v9, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v10, v3, Landroid/accounts/AccountAndUser;->userId:I

    .line 1201
    invoke-virtual {v8, v9, v10, v5}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_e

    .line 1204
    :cond_17
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v2, "scheduleSync: sync of "

    const-string v4, " "

    const-string v7, " is not allowed, dropping request"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1208
    :cond_18
    :goto_e
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v10, v3, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v8, v9, v5, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1211
    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 1212
    invoke-virtual {v9, v8}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    .line 1214
    iget-object v8, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/4 v14, -0x1

    if-ne v7, v14, :cond_1a

    if-eqz p9, :cond_19

    move-object/from16 v25, v5

    .line 1218
    new-instance v5, Landroid/os/Bundle;

    move-object/from16 v15, p5

    invoke-direct {v5, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1220
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v4, v3, Landroid/accounts/AccountAndUser;->userId:I

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;

    move-wide/from16 v7, p7

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object v13, v1

    move-object v14, v2

    move-object v2, v3

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v15, v4

    move-object/from16 v4, v25

    invoke-direct/range {v0 .. v12}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move v2, v6

    move-wide v5, v7

    invoke-static {v13, v14, v15, v1}, Lcom/android/server/content/SyncManager;->sendOnUnsyncableAccount(Landroid/content/Context;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;ILcom/android/server/content/SyncManager$OnReadyCallback;)V

    :goto_f
    move-object/from16 v11, p5

    move-object v1, v3

    move-wide v14, v5

    goto/16 :goto_11

    :cond_19
    move-object v10, v5

    move v2, v6

    move-wide/from16 v5, p7

    .line 1227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1228
    const-string v7, "initialize"

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1230
    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v8, "scheduleSync: schedule initialisation sync "

    const-string v9, " "

    filled-new-array {v8, v3, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1233
    new-instance v18, Lcom/android/server/content/SyncOperation;

    iget-object v7, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v3, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v23, p3

    move/from16 v28, p10

    move-object/from16 v26, v1

    move/from16 v21, v4

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v25, v10

    invoke-direct/range {v18 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_f

    :cond_1a
    move/from16 v21, v4

    move-object v10, v5

    move v2, v6

    const/4 v14, 0x1

    move-wide/from16 v5, p7

    if-eq v2, v1, :cond_1c

    if-ne v2, v7, :cond_1b

    goto :goto_10

    .line 1252
    :cond_1b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v4, "scheduleSync: not handling "

    const-string v7, " "

    filled-new-array {v4, v3, v7, v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    goto :goto_f

    .line 1243
    :cond_1c
    :goto_10
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v4, "scheduleSync: scheduling sync "

    const-string v7, " "

    filled-new-array {v4, v3, v7, v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1245
    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v4, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v3, Landroid/accounts/AccountAndUser;->userId:I

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move/from16 v8, p3

    move-object/from16 v11, p5

    move-wide/from16 v14, p7

    move/from16 v13, p10

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v9, v24

    move/from16 v12, v27

    invoke-direct/range {v3 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    :goto_11
    move/from16 v4, p2

    move-object/from16 v14, p4

    move-object v12, v1

    move-object v15, v11

    move-object/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v39

    move/from16 v11, v40

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_a

    :goto_12
    add-int/lit8 v1, v40, 0x1

    move/from16 v4, p2

    move-object/from16 v14, p4

    move-object v15, v11

    move-object/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v39

    const/4 v6, -0x1

    const/4 v7, 0x1

    move v11, v1

    move-object v1, v0

    goto/16 :goto_6

    :cond_1d
    :goto_13
    return-void

    .line 1083
    :goto_14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1654
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1658
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v1, :cond_0

    .line 1660
    const-string v0, "Can\'t schedule null sync operation."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1663
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->hasIgnoreBackoff()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_6

    .line 1664
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v5

    const-wide/16 v9, -0x1

    if-nez v5, :cond_1

    .line 1666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find backoff values for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1667
    invoke-static {v11}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1666
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v5, Landroid/util/Pair;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1669
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1670
    :cond_1
    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-eqz v11, :cond_2

    .line 1674
    iput-boolean v8, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1676
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1677
    iget-object v13, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v13, v9

    if-nez v9, :cond_3

    move-wide v9, v6

    goto :goto_1

    .line 1678
    :cond_3
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v11

    .line 1679
    :goto_1
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v13}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v13

    cmp-long v5, v13, v11

    if-lez v5, :cond_4

    sub-long/2addr v13, v11

    goto :goto_2

    :cond_4
    move-wide v13, v6

    :goto_2
    if-eqz v4, :cond_5

    .line 1682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backoff delay:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " delayUntil delay:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_5
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide/from16 v11, p2

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_3

    :cond_6
    move-wide/from16 v11, p2

    move-wide v9, v11

    :goto_3
    cmp-long v5, v9, v6

    if-gez v5, :cond_7

    move-wide v9, v6

    goto :goto_4

    :cond_7
    if-lez v5, :cond_8

    .line 1693
    iput-boolean v8, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1699
    :cond_8
    :goto_4
    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v11, 0x0

    if-nez v5, :cond_17

    .line 1703
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v11

    :cond_9
    if-ge v13, v12, :cond_a

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1704
    iget-object v14, v14, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v14, v14, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    if-eqz v4, :cond_25

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate sync is already running. Not scheduling "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1714
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long/2addr v12, v9

    .line 1715
    iput-wide v12, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 1716
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v5

    .line 1718
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v1

    move v13, v11

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/SyncOperation;

    move-wide/from16 v16, v6

    .line 1719
    iget-boolean v6, v15, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v6, :cond_b

    move-wide/from16 v6, v16

    goto :goto_5

    .line 1722
    :cond_b
    iget-object v6, v15, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1723
    iget-wide v6, v14, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move/from16 v18, v4

    iget-wide v3, v15, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v3, v6, v3

    if-lez v3, :cond_c

    move-object v14, v15

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_d
    move/from16 v18, v4

    :goto_6
    move-wide/from16 v6, v16

    move/from16 v4, v18

    const/4 v3, 0x2

    goto :goto_5

    :cond_e
    move/from16 v18, v4

    move-wide/from16 v16, v6

    if-le v13, v8, :cond_10

    .line 1730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicates found when scheduling a sync operation: owningUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; owningPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; adapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_f

    .line 1735
    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_7

    .line 1736
    :cond_f
    const-string/jumbo v4, "unknown"

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1730
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eq v1, v14, :cond_11

    cmp-long v3, v9, v16

    if-nez v3, :cond_11

    .line 1747
    iget v3, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v4, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v3, v4, :cond_11

    .line 1751
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object v14, v1

    goto :goto_8

    :cond_11
    move v3, v11

    .line 1756
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 1757
    iget-boolean v6, v5, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v6, :cond_13

    goto :goto_9

    .line 1760
    :cond_13
    iget-object v6, v5, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eq v5, v14, :cond_12

    if-eqz v18, :cond_14

    .line 1763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancelling duplicate sync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_14
    iget v6, v5, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 1766
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1767
    const-string/jumbo v6, "scheduleSyncOperationH-duplicate"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    if-eq v14, v1, :cond_16

    if-eqz v18, :cond_25

    .line 1774
    const-string v0, "Not scheduling because a duplicate exists."

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-lez v3, :cond_18

    .line 1785
    iput v3, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    goto :goto_a

    :cond_17
    move/from16 v18, v4

    move-wide/from16 v16, v6

    .line 1790
    :cond_18
    :goto_a
    iget v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 1791
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getUnusedJobIdH()I

    move-result v3

    iput v3, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    :cond_19
    if-eqz v18, :cond_1a

    .line 1795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduling sync operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v3

    .line 1800
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x2

    goto :goto_b

    :cond_1b
    move v4, v8

    .line 1805
    :goto_b
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v5, 0x8

    goto :goto_c

    :cond_1c
    move v5, v11

    .line 1808
    :goto_c
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    iget v7, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/server/content/SyncJobService;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v6, v7, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 1810
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 1811
    invoke-virtual {v6, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 1812
    invoke-virtual {v4, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 1813
    invoke-virtual {v4, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 1814
    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 1815
    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 1817
    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_1d

    .line 1818
    iget-wide v4, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v6, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_d

    :cond_1d
    cmp-long v4, v9, v16

    if-lez v4, :cond_1e

    .line 1821
    invoke-virtual {v3, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 1823
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    .line 1826
    :goto_d
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->hasRequireCharging()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1827
    invoke-virtual {v3, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 1830
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->isScheduledAsExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-nez v4, :cond_20

    .line 1831
    invoke-virtual {v3, v8}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 1834
    :cond_20
    iget v4, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_21

    .line 1836
    const-class v4, Lcom/android/server/DeviceIdleInternal;

    .line 1837
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/android/server/DeviceIdleInternal;

    if-eqz v19, :cond_21

    .line 1839
    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    .line 1841
    invoke-virtual {v5}, Lcom/android/server/content/SyncManagerConstants;->getKeyExemptionTempWhitelistDurationInSeconds()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    iget v7, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1843
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    const/16 v27, 0x132

    const-string/jumbo v28, "sync by top app"

    const/16 v20, 0x3e8

    const/16 v24, 0x1

    const/16 v26, 0x0

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    .line 1839
    invoke-interface/range {v19 .. v28}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V

    .line 1848
    :cond_21
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1849
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v4, :cond_22

    .line 1853
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 1854
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1855
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v7

    .line 1853
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1858
    :cond_22
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 1859
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1860
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v9

    .line 1859
    invoke-virtual {v5, v4, v6, v7, v9}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_24

    .line 1861
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExpedited()Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v18, :cond_23

    .line 1863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule EJ for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Downgrading to regular"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_23
    iput-boolean v8, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 1867
    invoke-virtual {v3, v11}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 1868
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1869
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v6

    .line 1868
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    :cond_24
    if-nez v5, :cond_25

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule job for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public final sendCancelSyncsMessage(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 1449
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sending MESSAGE_CANCEL"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string/jumbo v1, "sendCancelSyncsMessage() ep="

    const-string v2, " why="

    filled-new-array {v1, p1, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1453
    iget-object p3, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x6

    .line 1454
    iput v0, p3, Landroid/os/Message;->what:I

    .line 1455
    invoke-virtual {p3, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1456
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1457
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 2

    const/4 v0, 0x2

    .line 1440
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 1442
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1443
    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1444
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 3

    .line 984
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 985
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 986
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void
.end method

.method public final setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 1616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr p2, v0

    add-long/2addr v2, p2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 1620
    :goto_0
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    const/4 p2, 0x2

    .line 1621
    const-string p3, "SyncManager"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delay Until time set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delayUntil newDelayUntilTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    return-void
.end method

.method public shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->isContactSharingAllowedForCloneProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    const-string v1, "com.android.contacts"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->areContactWritesEnabledForUser(Landroid/content/pm/UserInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 8

    .line 1351
    new-instance v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 1353
    iget-object p0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1354
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 2

    const/4 v0, 0x2

    .line 348
    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sending MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 351
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized verifyJobScheduler()V
    .locals 9

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 579
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    :try_start_2
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    const-string v2, "SyncManager"

    const-string v3, "initializing JobScheduler object."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_2

    .line 588
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    const-string v3, "SyncManager"

    .line 589
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 590
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->migrateSyncJobNamespaceIfNeeded()V

    .line 592
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    .line 596
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    .line 597
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 599
    iget-boolean v7, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 605
    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v6, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_1

    .line 608
    :cond_3
    const-string v6, "SyncManager"

    const-string v7, "Non-sync job inside of SyncManager namespace"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 611
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded persisted syncs: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodic syncs, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " oneshot syncs, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total system server jobs, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    const-string v3, "SyncManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->cleanupJobs()V

    .line 621
    sget-boolean v3, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 622
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->likelyHasPeriodicSyncs()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 623
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    :cond_5
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 628
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 626
    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    throw v2

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .locals 0

    .line 4322
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zeroToEmpty(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 2599
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
