.class public Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# instance fields
.field public final appZygote:Z

.field public volatile info:Landroid/content/pm/ApplicationInfo;

.field public final isSdkSandbox:Z

.field public final isolated:Z

.field public final mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

.field public volatile mBindApplicationTime:J

.field public volatile mBindMountPending:Z

.field public mCompat:Landroid/content/res/CompatibilityInfo;

.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mDebugging:Z

.field public mDisabledCompatChanges:[J

.field public mDyingPid:I

.field public final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field public mGids:[I

.field public volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field public mInFullBackup:Z

.field public mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field public mInstructionSet:Ljava/lang/String;

.field public mIsolatedEntryPoint:Ljava/lang/String;

.field public mIsolatedEntryPointArgs:[Ljava/lang/String;

.field public mKillTime:J

.field public mKilled:Z

.field public mKilledByAm:Z

.field public mLastActivityTime:J

.field public final mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public mLoggableCompatChanges:[J

.field public mLruSeq:I

.field public volatile mMountMode:I

.field public mOnewayThread:Landroid/app/IApplicationThread;

.field public final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field public mPendingFinishAttach:Z

.field public mPendingStart:Z

.field public volatile mPersistent:Z

.field public mPid:I

.field public mPkgDeps:Landroid/util/ArraySet;

.field public final mPkgList:Lcom/android/server/am/PackageList;

.field public volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public volatile mProcessGroupCreated:Z

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field public final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field public volatile mRemoved:Z

.field public mRenderThreadTid:I

.field public mRequiredAbi:Ljava/lang/String;

.field public volatile mSeInfo:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field public mShortStringName:Ljava/lang/String;

.field public volatile mSkipProcessGroupCreation:Z

.field public volatile mStartElapsedTime:J

.field public mStartSeq:J

.field public volatile mStartUid:I

.field public volatile mStartUptime:J

.field public mState:Lcom/android/server/am/ProcessStateRecord;

.field public mStringName:Ljava/lang/String;

.field public volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field public mSuccessorStartRunnable:Ljava/lang/Runnable;

.field public mThread:Lcom/android/server/am/ApplicationThreadDeferred;

.field public mUidRecord:Lcom/android/server/am/UidRecord;

.field public mUnlocked:Z

.field public mUsingWrapper:Z

.field public mWaitedForDebugger:Z

.field public mWaitingToKill:Ljava/lang/String;

.field public volatile mWasForceStopped:Z

.field public final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field public final processInfo:Landroid/content/pm/ProcessInfo;

.field public final processName:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$HANeJKZz4r720moq9uNElrY05J8(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 0

    .line 1502
    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    .line 1503
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 11

    move-object v3, p3

    move v4, p4

    move/from16 v1, p6

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v8, Lcom/android/server/am/PackageList;

    invoke-direct {v8, p0}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 366
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 374
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    const/4 v2, 0x2

    .line 449
    new-array v2, v2, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 577
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 578
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 579
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 581
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-lez v1, :cond_0

    .line 584
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v2, p7

    .line 585
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    if-eqz v1, :cond_3

    .line 591
    iget-object v2, v1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v2, :cond_3

    iget v2, v1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    iget v2, v1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-ne v2, v7, :cond_3

    iget v2, v1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v2, v7, :cond_3

    :cond_2
    move-object v1, v5

    .line 601
    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 602
    invoke-static {p4}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 603
    invoke-static {p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 604
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const v7, 0x15f90

    const/4 v9, 0x0

    if-lt v2, v7, :cond_4

    .line 605
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const v7, 0x182b7

    if-gt v2, v7, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v9

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 606
    iput v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 607
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 608
    iput-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v7, p5

    .line 609
    iput-object v7, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 611
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 613
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    :cond_5
    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    goto :goto_2

    .line 615
    :cond_6
    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 617
    :goto_2
    iput-boolean v9, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 618
    iput-boolean v9, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 619
    new-instance v1, Lcom/android/server/am/ProcessProfileRecord;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 620
    new-instance v5, Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 621
    new-instance v5, Lcom/android/server/am/ProcessProviderRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 622
    new-instance v5, Lcom/android/server/am/ProcessReceiverRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 623
    new-instance v5, Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 624
    new-instance v5, Lcom/android/server/am/ProcessStateRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 625
    new-instance v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 627
    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ProcessProfileRecord;->init(J)V

    .line 628
    invoke-virtual {v5, v9, v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->init(J)V

    .line 629
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->init(J)V

    .line 630
    new-instance v1, Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move v5, v2

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v7, p0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 632
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v2, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 633
    invoke-static {p0}, Lcom/android/server/am/ProcessRecord;->updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static updateProcessRecordNodes(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 642
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 643
    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    .line 1544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1545
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1546
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1548
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1550
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .locals 10

    .line 1434
    iget-object v1, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1436
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1437
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v4, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v5, p1

    move-wide v7, p2

    move-object v3, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1443
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1444
    iget-object p0, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_1

    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v5, p1

    .line 1448
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1450
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1452
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1453
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 p0, 0x0

    return p0

    .line 1452
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    .line 1453
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public appDied(Ljava/lang/String;)V
    .locals 2

    .line 1683
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1684
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1685
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1599
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1600
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doEarlyCleanupIfNecessaryLocked()V
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 470
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 471
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_0

    .line 472
    const-string v4, " ISOLATED uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 474
    :cond_0
    const-string v4, " gids={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    const-string v5, ", "

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    move v4, v6

    .line 476
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    if-eqz v4, :cond_1

    .line 477
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    aget v7, v7, v4

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v7, :cond_5

    .line 484
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "processInfo:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v7, :cond_3

    move v7, v6

    .line 486
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  deny: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 491
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  gwpAsanMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v9, v9, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v8, :cond_5

    .line 495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  memtagMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v8, v8, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mRequiredAbi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string v7, " instructionSet="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "class="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "manageSpaceActivityName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    const-string v7, " publicDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    const-string v7, " data="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/am/PackageList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 512
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v7, :cond_a

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "packageDependencies={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    if-lez v6, :cond_8

    .line 515
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    :cond_8
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 518
    :cond_9
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "compat="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 521
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_b

    .line 522
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mInstr="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "thread="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "pid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "lastActivityTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 528
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startUpTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 530
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startElapsedTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 532
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 533
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v2, :cond_d

    .line 534
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 535
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v2, :cond_e

    .line 538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 540
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v2, :cond_f

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 543
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    const-string v3, "MOUNT_EXTERNAL_"

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 545
    invoke-static {v2, v3, v4}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 547
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 548
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 549
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 552
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    :cond_13
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_14

    .line 557
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 559
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 560
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 561
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 562
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 563
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 564
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessReceiverRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 565
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 566
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1

    const/4 v0, -0x1

    .line 1349
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    .line 1353
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1354
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    .line 1355
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1357
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const-wide v0, 0x10500000004L

    .line 1358
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1359
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1361
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_1

    .line 1362
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    const-wide v0, 0x10800000007L

    .line 1364
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-ltz p4, :cond_2

    const-wide v0, 0x10500000008L

    .line 1366
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1368
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forEachConnectionHost(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1739
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v1

    .line 1741
    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1742
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfSdkSandboxConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1745
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v1

    .line 1746
    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1747
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 1750
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v1

    .line 1751
    iget-object v1, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1752
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object p0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;
    .locals 4

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    if-nez v1, :cond_0

    .line 1564
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1565
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1566
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 1568
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackgroundStartPrivileges;

    .line 1567
    invoke-virtual {v2, v3}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1571
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    monitor-exit v0

    return-object p0

    .line 1572
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBindApplicationTime()J
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mBindApplicationTime:J

    return-wide v0
.end method

.method public getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .locals 7

    .line 1069
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1075
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 1070
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getClientInfoForSdkSandbox called for non-sandbox process"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompat()Landroid/content/res/CompatibilityInfo;
    .locals 0

    .line 947
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-object p0
.end method

.method public getCpuDelayTime()J
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppProfiler;->getCpuDelayTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuTime()J
    .locals 2

    .line 1651
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppProfiler;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurProcState()I
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getDisabledCompatChanges()[J
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-object p0
.end method

.method public getDyingPid()I
    .locals 0

    .line 777
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return p0
.end method

.method public getHostingRecord()Lcom/android/server/am/HostingRecord;
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    return-object p0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .locals 2

    .line 1703
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsolatedEntryPoint()Ljava/lang/String;
    .locals 0

    .line 1139
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    return-object p0
.end method

.method public getIsolatedEntryPointArgs()[Ljava/lang/String;
    .locals 0

    .line 1149
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getKillTime()J
    .locals 2

    .line 1035
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    return-wide v0
.end method

.method public getLastActivityTime()J
    .locals 2

    .line 1108
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    return-wide v0
.end method

.method public getLoggableCompatChanges()[J
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    return-object p0
.end method

.method public getLruProcessList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1720
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLruSeq()I
    .locals 0

    .line 1129
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    return p0
.end method

.method public getMountMode()I
    .locals 0

    .line 910
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return p0
.end method

.method public getOnewayThread()Landroid/app/IApplicationThread;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 0

    .line 1526
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 693
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return p0
.end method

.method public getPkgDeps()Landroid/util/ArraySet;
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPkgList()Lcom/android/server/am/PackageList;
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    return-object p0
.end method

.method public getProcessClassEnum()I
    .locals 2

    .line 1707
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1713
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public getRenderThreadTid()I
    .locals 0

    .line 937
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    return p0
.end method

.method public getRss(I)J
    .locals 0

    .line 1258
    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1259
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSetAdj()I
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    return p0
.end method

.method public getSetCapability()I
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result p0

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    return p0
.end method

.method public getStartElapsedTime()J
    .locals 2

    .line 890
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartSeq()J
    .locals 2

    .line 852
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 886
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getStartUid()I
    .locals 0

    .line 902
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    return p0
.end method

.method public getStartUptime()J
    .locals 2

    .line 877
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    return-object p0
.end method

.method public getUidRecord()Lcom/android/server/am/UidRecord;
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public getWaitingToKill()Ljava/lang/String;
    .locals 0

    .line 1045
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .locals 0

    .line 1534
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public hasActiveInstrumentation()Z
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasActivities()Z
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p0

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .locals 0

    .line 1178
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasRecentTasks()Z
    .locals 0

    .line 1182
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasWaitedForDebugger()Z
    .locals 0

    .line 1098
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return p0
.end method

.method public isBindMountPending()Z
    .locals 0

    .line 918
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return p0
.end method

.method public isCached()Z
    .locals 0

    .line 1170
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result p0

    return p0
.end method

.method public isDebuggable()Z
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1083
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1085
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public isDebugging()Z
    .locals 0

    .line 1064
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return p0
.end method

.method public isFreezable()Z
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1733
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1734
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1735
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInFullBackup()Z
    .locals 0

    .line 1159
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return p0
.end method

.method public isInterestingToUserLocked()Z
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1219
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p0

    return p0
.end method

.method public isKilled()Z
    .locals 0

    .line 1025
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    return p0
.end method

.method public isKilledByAm()Z
    .locals 0

    .line 1015
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return p0
.end method

.method public isPendingFinishAttach()Z
    .locals 0

    .line 842
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    return p0
.end method

.method public isPendingStart()Z
    .locals 0

    .line 827
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 822
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    .line 1055
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return p0
.end method

.method public isThreadReady()Z
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUnlocked()Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return p0
.end method

.method public isUsingWrapper()Z
    .locals 0

    .line 1118
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return p0
.end method

.method public killLocked(Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1270
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;IIZZ)V
    .locals 7

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1282
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 1264
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1276
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 17

    move-object/from16 v2, p0

    move/from16 v7, p3

    .line 1288
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_5

    .line 1289
    const-string/jumbo v0, "kill"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x6

    if-ne v7, v0, :cond_0

    .line 1290
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1291
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    move-object v10, v1

    .line 1294
    :goto_0
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    if-nez p5, :cond_2

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p1

    goto :goto_2

    .line 1295
    :cond_2
    :goto_1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1295
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1300
    :goto_2
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    .line 1301
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V

    .line 1302
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v0, :cond_3

    .line 1304
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v5, 0x0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/server/am/AmsExt;->onAppProcessDied(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 1305
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v1, p4

    invoke-virtual {v0, v2, v7, v1, v10}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 1306
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->getRss(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v15, p1

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7547

    .line 1306
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1308
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    move/from16 v0, p6

    .line 1309
    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->killProcessGroupIfNecessaryLocked(Z)V

    goto :goto_3

    .line 1311
    :cond_3
    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 1313
    :goto_3
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v0, :cond_4

    .line 1314
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    const/4 v0, 0x1

    .line 1315
    :try_start_0
    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 1316
    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 1317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 1318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1320
    :cond_4
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void
.end method

.method public killProcessGroupIfNecessaryLocked(Z)V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 1328
    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1329
    :cond_0
    monitor-enter p0

    .line 1330
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    if-nez v0, :cond_1

    .line 1333
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1335
    :cond_1
    :goto_0
    monitor-exit p0

    move v1, v0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    .line 1341
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {p1, v0, v1}, Landroid/os/Process;->sendSignalToProcessGroup(III)Z

    .line 1343
    :cond_3
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1, p0}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    :cond_4
    return-void
.end method

.method public makeActive(Lcom/android/server/am/ApplicationThreadDeferred;Lcom/android/server/am/ProcessStatsService;)V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 745
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 746
    iget p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 747
    new-instance p1, Lcom/android/server/am/SameProcessApplicationThread;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/server/am/SameProcessApplicationThread;-><init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    goto :goto_0

    .line 749
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 751
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 752
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 753
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 2

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 760
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOnewayThread:Landroid/app/IApplicationThread;

    .line 761
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSpecifiedFifoProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 765
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V

    return-void
.end method

.method public onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    if-eqz p3, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->makeInactive(Lcom/android/server/am/ProcessStatsService;)V

    const/4 p1, 0x0

    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    .line 1202
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1203
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/am/ProcessStateController;->onCleanupApplicationRecord(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1204
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessReceiverRecord;->onCleanupApplicationRecordLocked()V

    .line 1205
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p1, p0}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1207
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->onCleanupApplicationRecordLocked(Z)Z

    move-result p0

    return p0
.end method

.method public onProcessFrozen()V
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->onProcessFrozen()V

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1461
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1462
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessPaused()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1462
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessFrozenCancelled()V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_0

    .line 1484
    invoke-virtual {v1}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessPausedCancelled()V

    .line 1485
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->onProcessFrozenCancelled()V

    return-void

    :catchall_0
    move-exception p0

    .line 1482
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onProcessUnfrozen()V
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    .line 1471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_0

    .line 1473
    invoke-virtual {v1}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->onProcessUnfrozen()V

    .line 1475
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->onProcessUnfrozen()V

    return-void

    :catchall_0
    move-exception p0

    .line 1471
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 1662
    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1664
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p2, p2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1665
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1, p0}, Lcom/android/server/am/AppProfiler;->setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1666
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 1669
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 1673
    invoke-virtual {p0, p2, p3, p3}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1675
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1676
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p0, p3}, Lcom/android/server/am/ProcessStateController;->setHasShownUi(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1677
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1678
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .locals 1

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1555
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessRecord;->setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public resetCrashingOnRestart()V
    .locals 1

    .line 664
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1492
    iget-object v8, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1493
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v9

    .line 1494
    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1495
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v9, :cond_0

    .line 1497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1499
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    const/4 v10, -0x1

    .line 1498
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    if-eq v2, v3, :cond_1

    .line 1501
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 1506
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 1507
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1509
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1511
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1512
    iget-object v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v9, :cond_1

    .line 1513
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-eq v2, v3, :cond_1

    .line 1517
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->clear()V

    .line 1518
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1521
    :cond_1
    :goto_0
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1521
    :goto_1
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1522
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .line 1236
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_1

    .line 1238
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1239
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "scheduleCrash: trying to crash system process!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1242
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1244
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/IApplicationThread$Delegator;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1248
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "scheduleCrash for \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 4

    .line 995
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 997
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_1

    .line 999
    iget v3, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eqz v2, :cond_2

    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p1, :cond_2

    move v0, v1

    .line 997
    :cond_2
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZIZ)V

    return-void
.end method

.method public final setBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    .line 1577
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 1580
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 1583
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    if-eq p2, p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 1591
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBackgroundStartPrivilegesMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1593
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBindApplicationTime(J)V
    .locals 0

    .line 898
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mBindApplicationTime:J

    return-void
.end method

.method public setBindMountPending(Z)V
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return-void
.end method

.method public setCompat(Landroid/content/res/CompatibilityInfo;)V
    .locals 0

    .line 952
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method public setDeathRecipient(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public setDebugging(Z)V
    .locals 0

    .line 1092
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1093
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    return-void
.end method

.method public setDisabledCompatChanges([J)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-void
.end method

.method public setDyingPid(I)V
    .locals 0

    .line 782
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return-void
.end method

.method public setGids([I)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    return-void
.end method

.method public setInFullBackup(Z)V
    .locals 0

    .line 1164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return-void
.end method

.method public setInstructionSet(Ljava/lang/String;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    return-void
.end method

.method public setIsolatedEntryPoint(Ljava/lang/String;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    return-void
.end method

.method public setIsolatedEntryPointArgs([Ljava/lang/String;)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-void
.end method

.method public setKilled(Z)V
    .locals 0

    .line 1030
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    return-void
.end method

.method public setKilledByAm(Z)V
    .locals 0

    .line 1020
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return-void
.end method

.method public setLastActivityTime(J)V
    .locals 0

    .line 1113
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    return-void
.end method

.method public setLoggableCompatChanges([J)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mLoggableCompatChanges:[J

    return-void
.end method

.method public setLruSeq(I)V
    .locals 0

    .line 1134
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    return-void
.end method

.method public setMountMode(I)V
    .locals 0

    .line 914
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return-void
.end method

.method public setPendingFinishAttach(Z)V
    .locals 0

    .line 837
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingFinishAttach:Z

    return-void
.end method

.method public setPendingStart(Z)V
    .locals 0

    .line 832
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1613
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1614
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .locals 2

    .line 1619
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x1

    .line 1620
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1621
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 817
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 818
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    return-void
.end method

.method public setPid(I)V
    .locals 1

    .line 700
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setWasForceStopped(Z)V

    .line 703
    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 704
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 706
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPid(I)V

    .line 709
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPkgDeps(Landroid/util/ArraySet;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-void
.end method

.method public setRemoved(Z)V
    .locals 0

    .line 1059
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return-void
.end method

.method public setRenderThreadTid(I)V
    .locals 0

    .line 942
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 803
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .locals 2

    .line 1690
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1691
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "system can\'t run remote animation"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ProcessStateController;->setRunningRemoteAnimation(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1697
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 v1, 0x9

    invoke-virtual {p1, p0, v1}, Lcom/android/server/am/ProcessStateController;->runUpdate(Lcom/android/server/am/ProcessRecord;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1699
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 458
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 459
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 460
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 461
    iput-wide p6, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-void
.end method

.method public setStartSeq(J)V
    .locals 0

    .line 857
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-void
.end method

.method public setUidRecord(Lcom/android/server/am/UidRecord;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-void
.end method

.method public setUnlocked(Z)V
    .locals 0

    .line 932
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return-void
.end method

.method public setUsingWrapper(Z)V
    .locals 0

    .line 1123
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1124
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    return-void
.end method

.method public setWaitedForDebugger(Z)V
    .locals 0

    .line 1103
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return-void
.end method

.method public setWaitingToKill(Ljava/lang/String;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    return-void
.end method

.method public setWasForceStopped(Z)V
    .locals 0

    .line 1724
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    return-void
.end method

.method public toDetailedString()Ljava/lang/String;
    .locals 4

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1423
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1424
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1425
    const-string v3, "  "

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1376
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1377
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1382
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 1383
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1384
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 1385
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 1387
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 v0, 0x75

    .line 1389
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1390
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1391
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v2, 0x61

    .line 1393
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    .line 1394
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x73

    .line 1396
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1399
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x69

    .line 1400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1412
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    .line 1416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Lcom/android/server/am/ApplicationThreadDeferred;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1630
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1632
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p1, :cond_1

    .line 1636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1638
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    if-eqz p3, :cond_2

    .line 1640
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    .line 1642
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateServiceConnectionActivities()V
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public useFifoUiScheduling()Z
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowSpecifiedFifoScheduling:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 772
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->useFifoUiScheduling()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public wasForceStopped()Z
    .locals 0

    .line 1728
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mWasForceStopped:Z

    return p0
.end method
