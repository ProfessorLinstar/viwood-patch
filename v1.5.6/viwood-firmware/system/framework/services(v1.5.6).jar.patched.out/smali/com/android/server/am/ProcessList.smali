.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field public static final PAGE_SIZE:I

.field public static final PREVIOUS_APP_MAX_ADJ:I

.field public static final TAG_PROCESS_OBSERVERS:Ljava/lang/String;

.field public static final sFirstAsleepPssTimes:[J

.field public static final sFirstAwakePssTimes:[J

.field public static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public static sKillThread:Lcom/android/server/ServiceThread;

.field public static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field public static sOomConnection:Lcom/android/server/am/OomConnection;

.field public static final sProcStateToProcMem:[I

.field public static final sSameAsleepPssTimes:[J

.field public static final sSameAwakePssTimes:[J

.field public static final sTestFirstPssTimes:[J

.field public static final sTestSamePssTimes:[J


# instance fields
.field public mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

.field public mAppDataIsolationEnabled:Z

.field public final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field public final mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

.field public final mAppZygoteProcesses:Landroid/util/ArrayMap;

.field public final mAppZygotes:Lcom/android/internal/app/ProcessMap;

.field public final mAppsInBackgroundRestricted:Landroid/util/ArraySet;

.field public final mAvailProcessChanges:Ljava/util/ArrayList;

.field public mCachedRestoreLevel:J

.field public final mDyingProcesses:Lcom/android/internal/app/ProcessMap;

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field public mHaveDisplaySize:Z

.field public mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field public final mIsolatedProcesses:Landroid/util/SparseArray;

.field public mLruProcessActivityStart:I

.field public mLruProcessServiceStart:I

.field public final mLruProcesses:Ljava/util/ArrayList;

.field public mLruSeq:I

.field public final mOomAdj:[I

.field public mOomLevelsSet:Z

.field public final mOomMinFree:[I

.field public final mOomMinFreeHigh:[I

.field public final mOomMinFreeLow:[I

.field public final mPendingProcessChanges:Ljava/util/ArrayList;

.field public final mPendingStarts:Landroid/util/LongSparseArray;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field public final mProcessChangeLock:Ljava/lang/Object;

.field public mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

.field public final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field public final mProcessObservers:Landroid/os/RemoteCallbackList;

.field public final mRemovedProcesses:Ljava/util/ArrayList;

.field public final mSdkSandboxes:Landroid/util/SparseArray;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field public final mTotalMemMb:J

.field public mVoldAppDataIsolationEnabled:Z

.field public final mZygoteSigChldMessage:[I

.field public final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$2XBtZ9egx9zXIMDRiVKFIv7scNQ(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ProcessList;->lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Aeowc7Aa0A47bbOcoIMPuNZ44Y(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3aT8AjDesFyouy4iqaLN2hUmayA(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CC7yn4e5nUPqzC8siIAeG5XlMLQ(Lcom/android/server/am/ProcessList;JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNHuPiwSzts8mouEo9gde_DuUw8(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 5255
    invoke-interface {p1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5257
    :cond_0
    :try_start_0
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_2

    .line 5259
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5260
    iput-object p0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 5261
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 5262
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p1

    .line 5263
    invoke-virtual {p1, p0}, Lcom/android/server/am/PlatformCompatCache;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5265
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 5266
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5269
    :catch_0
    const-string p0, "Failed to update %s ApplicationInfo for %s"

    filled-new-array {p5, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$ZYt6n6XX38j0SShKv2A3vlz2hk4(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    .line 3178
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_2hhy3f6tCYNbqfLdggq9vFVtX4(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    const/16 v1, 0x2bc

    .line 237
    sput v1, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    .line 301
    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    const/4 v1, 0x0

    .line 404
    sput-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 405
    sput-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 435
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 437
    sput-object v1, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    const/16 v1, 0x14

    .line 1356
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1379
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1387
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1395
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1403
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1411
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1419
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x6

    .line 410
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 416
    new-array v5, v3, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 422
    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 427
    array-length v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 439
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 441
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 443
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    .line 460
    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 466
    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 474
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 487
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 494
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 500
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 509
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 515
    new-instance v3, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v3}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 519
    new-instance v3, Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {v3}, Lcom/android/server/am/AppStartInfoTracker;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    .line 525
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    .line 531
    new-instance v3, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v3}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 537
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 544
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 547
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v0, 0x10

    .line 564
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    const/4 v0, 0x3

    .line 569
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 775
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v3, 0x182b8

    const v4, 0x1869f

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 783
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v3, 0x182b7

    const v4, 0x15f90

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 798
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 802
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x5

    .line 807
    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 818
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 824
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 882
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 883
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 884
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 885
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    .line 1276
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static batchSetOomAdj(Ljava/util/ArrayList;)V
    .locals 12

    .line 1589
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x34

    .line 1594
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xb

    .line 1596
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-ge v5, v0, :cond_4

    .line 1598
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 1599
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    .line 1600
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lez v8, :cond_3

    const/16 v11, 0x3e9

    if-ne v9, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x3

    if-lt v6, v11, :cond_2

    .line 1603
    invoke-static {v2, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1604
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1606
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 1607
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v6, v4

    .line 1609
    :cond_2
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1610
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1611
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1612
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1615
    :cond_4
    invoke-static {v2, v7}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 0

    sub-int/2addr p3, p4

    if-nez p3, :cond_2

    if-eqz p5, :cond_0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 1156
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p1, 0xa

    .line 1158
    const-string p2, "+"

    if-ge p3, p1, :cond_4

    .line 1159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "+ "

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJJ)J
    .locals 4

    .line 1490
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1492
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p0, v2, :cond_0

    move v2, p0

    .line 1494
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, p0

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1495
    :goto_0
    iput p0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1496
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v1, :cond_2

    .line 1498
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_1

    .line 1500
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v0, v0, p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    .line 1501
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v1, :cond_4

    .line 1509
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_2

    .line 1510
    :cond_4
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    if-eqz p3, :cond_6

    .line 1512
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    .line 1513
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1514
    :goto_2
    aget-wide p0, p1, p0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-long p0, p0

    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_9

    move-wide p0, p2

    :cond_9
    add-long/2addr p4, p0

    .line 1518
    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    .line 4807
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4808
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 4810
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4811
    iget-wide v9, v1, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long/2addr v7, v9

    .line 4813
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    :goto_0
    if-ltz v5, :cond_13

    .line 4814
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 4815
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4816
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4817
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v6}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    .line 4819
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v14

    if-eqz v14, :cond_5

    if-eq v14, v9, :cond_4

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    const/4 v15, 0x4

    if-eq v14, v15, :cond_1

    const/16 v14, 0x3f

    goto :goto_1

    :cond_1
    const/16 v14, 0x42

    goto :goto_1

    :cond_2
    const/16 v14, 0x54

    goto :goto_1

    :cond_3
    const/16 v14, 0x46

    goto :goto_1

    :cond_4
    const/16 v14, 0x52

    goto :goto_1

    :cond_5
    const/16 v14, 0x62

    .line 4840
    :goto_1
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0x41

    goto :goto_2

    .line 4842
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x53

    goto :goto_2

    :cond_7
    const/16 v15, 0x20

    .line 4847
    :goto_2
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v16

    move/from16 v17, v9

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v9

    .line 4848
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v6, p5

    goto :goto_3

    :cond_8
    move-object/from16 v6, p4

    :goto_3
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    const-string v6, " #"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4851
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    const/16 v3, 0xa

    if-ge v6, v3, :cond_9

    const/16 v3, 0x20

    .line 4852
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4

    :cond_9
    const/16 v3, 0x20

    .line 4853
    :goto_4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4854
    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4855
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4856
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4857
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    const/16 v6, 0x2f

    .line 4858
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4859
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 4860
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4861
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4862
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4863
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    invoke-static {v0, v6}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4864
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4865
    const-string v6, " t:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4866
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v6

    const/16 v9, 0xa

    if-ge v6, v9, :cond_a

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4867
    :cond_a
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4868
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 4869
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v6, 0x29

    .line 4872
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 4873
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    const-string v9, "    "

    if-nez v6, :cond_b

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 4874
    :cond_b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4875
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/content/ComponentName;

    const-string/jumbo v13, "{null}"

    if-eqz v6, :cond_c

    .line 4877
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 4878
    :cond_c
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 4879
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    .line 4881
    :cond_d
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4883
    :goto_5
    const-string v6, "<="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4884
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_e

    .line 4885
    const-string v6, "Proc{"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4887
    const-string/jumbo v6, "}"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 4888
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 4889
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 4891
    :cond_f
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    :goto_6
    if-eqz p6, :cond_12

    .line 4895
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4896
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4897
    const-string/jumbo v6, "oom: max="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4898
    const-string v6, " curRaw="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4899
    const-string v6, " setRaw="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4900
    const-string v6, " cur="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4901
    const-string v6, " set="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(I)V

    .line 4902
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4903
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    const-string/jumbo v13, "state: cur="

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4907
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4908
    const-string v6, " lastPss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4909
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v15

    const-wide/16 v19, 0x400

    mul-long v13, v15, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4910
    const-string v6, " lastSwapPss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4911
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4912
    const-string v6, " lastCachedPss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_7

    :cond_11
    const-wide/16 v19, 0x400

    .line 4915
    const-string v6, " lastRss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4916
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4917
    const-string v6, " lastCachedRss="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4918
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedRss()J

    move-result-wide v13

    mul-long v13, v13, v19

    invoke-static {v0, v13, v14}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4920
    :goto_7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 4921
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4922
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4923
    const-string v6, "cached="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 4924
    const-string v6, " empty="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 4925
    const-string v6, " hasAboveClient="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 4927
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    const/16 v11, 0xa

    if-lt v6, v11, :cond_12

    .line 4928
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-eqz v6, :cond_12

    cmp-long v6, v7, v13

    if-lez v6, :cond_12

    .line 4930
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    sub-long/2addr v13, v11

    .line 4931
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4932
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4933
    const-string/jumbo v6, "run cpu over "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4935
    const-string v6, " used "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    invoke-static {v13, v14, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4937
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v9, 0x64

    mul-long/2addr v13, v9

    .line 4938
    div-long/2addr v13, v7

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    .line 4939
    const-string v3, "%)"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v3, p2

    move/from16 v9, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_13
    move/from16 v17, v9

    return v17
.end method

.method public static freezePackageCgroup(IZ)Z
    .locals 3

    .line 3029
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->freezeCgroupUid(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 3031
    const-string p1, "freeze"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unfreeze"

    .line 3032
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cgroup uid: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0xc

    .line 1636
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 1637
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    .line 1638
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1639
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1640
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1642
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1643
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1644
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ne p0, v2, :cond_0

    .line 1645
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUIDSublist(Ljava/util/List;I)Ljava/util/List;
    .locals 3

    .line 3073
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit8 v1, p1, 0x1

    .line 3075
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3076
    :cond_0
    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static killProcessGroup(II)V
    .locals 2

    .line 1709
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xfa0

    .line 1711
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1710
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1713
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 1166
    const-string v3, "   "

    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    move v3, p0

    move v5, p1

    const/16 p0, 0x320

    if-lt v3, p0, :cond_1

    const/4 v2, 0x0

    const/16 v4, 0x320

    .line 1169
    const-string/jumbo v0, "svcb  "

    const-string/jumbo v1, "svcb"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x2bc

    if-lt v3, p0, :cond_2

    const/4 v2, 0x0

    const/16 v4, 0x2bc

    .line 1172
    const-string/jumbo v0, "prev  "

    const-string/jumbo v1, "prev"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0x258

    if-lt v3, p0, :cond_3

    const/4 v2, 0x0

    const/16 v4, 0x258

    .line 1175
    const-string v0, "home  "

    const-string v1, "home"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p0, 0x1f4

    if-lt v3, p0, :cond_4

    const/4 v2, 0x0

    const/16 v4, 0x1f4

    .line 1178
    const-string/jumbo v0, "svc   "

    const-string/jumbo v1, "svc"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0x190

    if-lt v3, p0, :cond_5

    const/4 v2, 0x0

    const/16 v4, 0x190

    .line 1181
    const-string v0, "hvy   "

    const-string v1, "hvy"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0x12c

    if-lt v3, p0, :cond_6

    const/4 v2, 0x0

    const/16 v4, 0x12c

    .line 1184
    const-string v0, "bkup  "

    const-string v1, "bkup"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p0, 0xfa

    if-lt v3, p0, :cond_7

    const/4 v2, 0x0

    const/16 v4, 0xfa

    .line 1187
    const-string/jumbo v0, "prcl  "

    const-string/jumbo v1, "prcl"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 p0, 0xe1

    if-lt v3, p0, :cond_8

    const/4 v2, 0x0

    const/16 v4, 0xe1

    .line 1190
    const-string/jumbo v0, "prcm  "

    const-string/jumbo v1, "prcm"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 p0, 0xc8

    if-lt v3, p0, :cond_9

    const/4 v2, 0x0

    const/16 v4, 0xc8

    .line 1193
    const-string/jumbo v0, "prcp  "

    const-string/jumbo v1, "prcp"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 p0, 0x64

    if-lt v3, p0, :cond_a

    .line 1196
    const-string v2, "   "

    const/16 v4, 0x64

    const-string/jumbo v0, "vis"

    const-string/jumbo v1, "vis"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-ltz v3, :cond_b

    .line 1199
    const-string v2, "   "

    const/4 v4, 0x0

    const-string v0, "fg "

    const-string v1, "fg "

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p0, -0x2bc

    if-lt v3, p0, :cond_c

    const/4 v2, 0x0

    const/16 v4, -0x2bc

    .line 1202
    const-string/jumbo v0, "psvc  "

    const-string/jumbo v1, "psvc"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 p0, -0x320

    if-lt v3, p0, :cond_d

    const/4 v2, 0x0

    const/16 v4, -0x320

    .line 1205
    const-string/jumbo v0, "pers  "

    const-string/jumbo v1, "pers"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 p0, -0x384

    if-lt v3, p0, :cond_e

    const/4 v2, 0x0

    const/16 v4, -0x384

    .line 1208
    const-string/jumbo v0, "sys   "

    const-string/jumbo v1, "sys"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 p0, -0x3e8

    if-lt v3, p0, :cond_f

    const/4 v2, 0x0

    const/16 v4, -0x3e8

    .line 1211
    const-string/jumbo v0, "ntv  "

    const-string/jumbo v1, "ntv"

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1214
    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x3e6

    return p0

    :pswitch_0
    const/16 p0, 0x3fb

    return p0

    :pswitch_1
    const/16 p0, 0x3fa

    return p0

    :pswitch_2
    const/16 p0, 0x3f9

    return p0

    :pswitch_3
    const/16 p0, 0x3f8

    return p0

    :pswitch_4
    const/16 p0, 0x3f7

    return p0

    :pswitch_5
    const/16 p0, 0x3f6

    return p0

    :pswitch_6
    const/16 p0, 0x3f5

    return p0

    :pswitch_7
    const/16 p0, 0x3f4

    return p0

    :pswitch_8
    const/16 p0, 0x3f3

    return p0

    :pswitch_9
    const/16 p0, 0x3f2

    return p0

    :pswitch_a
    const/16 p0, 0x3f1

    return p0

    :pswitch_b
    const/16 p0, 0x3f0

    return p0

    :pswitch_c
    const/16 p0, 0x3ef

    return p0

    :pswitch_d
    const/16 p0, 0x3ee

    return p0

    :pswitch_e
    const/16 p0, 0x3ed

    return p0

    :pswitch_f
    const/16 p0, 0x3ec

    return p0

    :pswitch_10
    const/16 p0, 0x3eb

    return p0

    :pswitch_11
    const/16 p0, 0x3fc

    return p0

    :pswitch_12
    const/16 p0, 0x3ea

    return p0

    :pswitch_13
    const/16 p0, 0x3e9

    return p0

    :pswitch_14
    const/16 p0, 0x3e8

    return p0

    :pswitch_15
    const/16 p0, 0x3e7

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 0

    .line 1219
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2

    .line 0
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 1

    .line 1479
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    aget p1, v0, p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final remove(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 1626
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 1627
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1628
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 1629
    invoke-static {v0, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static setOomAdj(III)V
    .locals 4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 1560
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    .line 1561
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 1562
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1563
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1564
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1565
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 1566
    invoke-static {v2, p1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    .line 1569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SLOW OOM ADJ: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms for pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 4663
    new-instance v0, Ljava/util/ArrayList;

    .line 4664
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4665
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4666
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 4667
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4670
    :cond_0
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4673
    :cond_1
    new-instance p0, Lcom/android/server/am/ProcessList$3;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList$3;-><init>()V

    .line 4695
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static startPsiMonitoringAfterBoot()V
    .locals 2

    const/4 v0, 0x4

    .line 1687
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x9

    .line 1688
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 1689
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method public static unfreezePackageCgroup(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3039
    invoke-static {p0, v0}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    move-result p0

    return p0
.end method

.method public static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 1693
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1695
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1696
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1695
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1699
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1704
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    .line 4702
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4703
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 4705
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4707
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_0
    if-ltz v3, :cond_10

    .line 4708
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4709
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4710
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4711
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4712
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x10800000001L

    .line 4713
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4714
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v4, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10900000003L

    .line 4715
    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4717
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v4

    const/4 v13, -0x1

    if-eqz v4, :cond_3

    const/4 v14, 0x2

    if-eq v4, v14, :cond_2

    const/4 v15, 0x3

    if-eq v4, v15, :cond_4

    const/4 v14, 0x4

    if-eq v4, v14, :cond_1

    move v14, v13

    goto :goto_1

    :cond_1
    move v14, v15

    goto :goto_1

    :cond_2
    move v14, v7

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :cond_4
    :goto_1
    if-eq v14, v13, :cond_5

    move-object v13, v8

    const-wide v7, 0x10e00000004L

    .line 4732
    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_5
    move-object v13, v8

    .line 4734
    :goto_2
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v7

    if-eqz v7, :cond_6

    const-wide v7, 0x10800000005L

    const/4 v4, 0x1

    .line 4735
    invoke-virtual {v0, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    .line 4736
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v7

    if-eqz v7, :cond_7

    const-wide v7, 0x10800000006L

    .line 4737
    invoke-virtual {v0, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4740
    :cond_7
    :goto_3
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v7

    const-wide v14, 0x10e00000007L

    .line 4739
    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4741
    iget-object v7, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v7

    move-wide/from16 v17, v5

    const-wide v4, 0x10500000008L

    invoke-virtual {v0, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000009L

    .line 4742
    invoke-virtual {v13, v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4743
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    const-wide v7, 0x1090000000aL

    invoke-virtual {v0, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4744
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 4745
    :cond_8
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_9

    .line 4746
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-wide v6, 0x10b0000000bL

    .line 4747
    invoke-virtual {v4, v0, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4

    .line 4748
    :cond_9
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 4749
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v6, 0x1090000000cL

    invoke-virtual {v0, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4751
    :cond_a
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_b

    .line 4752
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const-wide v6, 0x10b0000000dL

    .line 4753
    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_5

    .line 4754
    :cond_b
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 4755
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v6, 0x1090000000eL

    invoke-virtual {v0, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_c
    :goto_5
    if-eqz p5, :cond_f

    const-wide v6, 0x10b0000000fL

    .line 4759
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    const-wide v5, 0x10500000001L

    .line 4760
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4761
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    const-wide v6, 0x10500000002L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000003L

    .line 4762
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    .line 4763
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000005L

    .line 4764
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4766
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v5

    const-wide v6, 0x10e00000007L

    .line 4765
    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4768
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v5

    const-wide v6, 0x10e00000008L

    .line 4767
    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4769
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4770
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4769
    invoke-static {v5, v6, v4}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x10900000009L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4771
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4772
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v4

    mul-long/2addr v4, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4771
    invoke-static {v4, v5, v6}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x1090000000aL

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4775
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4776
    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v4

    mul-long/2addr v4, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4775
    invoke-static {v4, v5, v6}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x1090000000bL

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x1080000000cL

    .line 4777
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000000dL

    .line 4778
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000000eL

    .line 4779
    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4781
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_e

    .line 4782
    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-object/from16 v6, p3

    .line 4783
    iget-wide v7, v6, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v7, v17, v7

    const-wide/16 v9, 0x0

    cmp-long v16, v4, v9

    if-eqz v16, :cond_d

    cmp-long v9, v7, v9

    if-lez v9, :cond_d

    .line 4785
    iget-object v9, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide v4, 0x10b0000000fL

    .line 4786
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object v13, v2

    const-wide v1, 0x10300000001L

    .line 4787
    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    .line 4788
    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    long-to-double v9, v9

    mul-double/2addr v9, v1

    long-to-double v1, v7

    div-double/2addr v9, v1

    const-wide v1, 0x10200000003L

    .line 4789
    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4791
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    :cond_d
    :goto_6
    move-object v13, v2

    goto :goto_7

    :cond_e
    move-object/from16 v6, p3

    goto :goto_6

    .line 4794
    :goto_7
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_f
    move-object/from16 v6, p3

    move-object v13, v2

    .line 4796
    :goto_8
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, p4

    move-object v2, v13

    move-wide/from16 v5, v17

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_10
    move v4, v7

    return v4
.end method


# virtual methods
.method public addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    .line 3285
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3286
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 3287
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3289
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCrashingOnRestart()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    if-eqz v1, :cond_2

    .line 3293
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3296
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms ago when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3296
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3300
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when adding "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-nez v1, :cond_6

    .line 3305
    new-instance v1, Lcom/android/server/am/UidRecord;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 3307
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_3

    .line 3308
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new process uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3311
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 3310
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3312
    invoke-virtual {v2, v3}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 3313
    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3314
    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 3316
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3317
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3318
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3319
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    .line 3320
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    .line 3319
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3321
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 3323
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3324
    invoke-virtual {v1, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x0

    .line 3327
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    .line 3328
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3330
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_7

    .line 3331
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3333
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_9

    .line 3334
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 3336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3338
    :cond_8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3339
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    return-void

    .line 3329
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1012
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1016
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1017
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1018
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_0
    return-void
.end method

.method public final checkSlow(JLjava/lang/String;)V
    .locals 2

    .line 1775
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    .line 1778
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Slow operation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public clearAllDnsCacheLOSP()V
    .locals 4

    .line 3644
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3645
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3646
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3649
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3651
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear dns cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    if-eqz p3, :cond_5

    .line 5200
    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 5201
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 5202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5205
    :try_start_0
    aget-object v1, p3, p1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    .line 5208
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 5209
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5210
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 5211
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 5212
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5213
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5214
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5215
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5216
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5219
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0

    .line 5223
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V
    .locals 8

    .line 3708
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 3709
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_3

    .line 3714
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    if-lt v1, v3, :cond_2

    goto :goto_2

    .line 3723
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v3, v3, -0x1

    .line 3725
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving dep from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in LRU list: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3728
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    if-eqz v2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p3, v3

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public final computeGidsForProcess(II[IZ)[I
    .locals 7

    .line 1784
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1786
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 1787
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v1

    .line 1788
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    .line 1792
    array-length v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, p3, v5

    .line 1793
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq v0, p3, :cond_1

    .line 1796
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v1, p3, :cond_2

    .line 1799
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eq v2, p3, :cond_3

    .line 1802
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 p3, 0x4

    const/16 v0, 0x437

    const/4 v1, 0x3

    if-eq p1, p3, :cond_4

    if-ne p1, v1, :cond_5

    .line 1811
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const/16 p3, 0x3f7

    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x436

    .line 1816
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    .line 1821
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ne p1, v1, :cond_7

    const/16 p1, 0x3ff

    .line 1827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p4, :cond_8

    const/16 p1, 0x435

    .line 1832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_1
    if-ge v4, p1, :cond_9

    .line 1837
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return-object p2
.end method

.method public final createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 8

    .line 2355
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 2358
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 2359
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-nez v0, :cond_1

    .line 2362
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 2363
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    const-string v2, "Creating new app zygote."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 2365
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2367
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2366
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2368
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2371
    iget v3, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2372
    iget v0, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2373
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2380
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2381
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2382
    new-instance v2, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    .line 2383
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2387
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_2

    .line 2388
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    const-string v3, "Reusing existing app zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2391
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, p0

    .line 2397
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2400
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .locals 4

    .line 5484
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/unsolzygotesocket"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5485
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5486
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x0

    .line 5491
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5492
    :try_start_1
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v0, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 v2, 0x1b6

    .line 5494
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-object v1, p0

    :catch_1
    if-eqz v1, :cond_1

    .line 5498
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :cond_1
    move-object p0, v1

    :catch_2
    :goto_0
    return-object p0
.end method

.method public dispatchProcessDied(II)V
    .locals 3

    .line 5181
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :catch_0
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 5185
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IProcessObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5188
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5193
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5194
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 5160
    const-string p0, "ActivityManager"

    const-string p1, "ProcessObserver broadcast disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchProcessesChanged()V
    .locals 9

    .line 5023
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5025
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 5026
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 5028
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5029
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5030
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_1

    .line 5031
    sget-object v2, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Delivering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " process changes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5036
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 5037
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_0
    :cond_2
    const/4 v3, 0x0

    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    .line 5040
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IProcessObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :goto_1
    if-ge v3, v1, :cond_2

    .line 5044
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v3

    .line 5045
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 5046
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v6, :cond_3

    .line 5047
    sget-object v6, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTIVITIES CHANGED pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 5051
    :cond_3
    :goto_2
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v4, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 5054
    :cond_4
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 5056
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v6, :cond_5

    .line 5057
    sget-object v6, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOREGROUND SERVICES CHANGED pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    :cond_5
    iget v6, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v7, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v5, v5, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v4, v6, v7, v5}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 5069
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5070
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5072
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-ge v3, v1, :cond_8

    .line 5074
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    .line 5076
    :cond_8
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 5070
    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 5034
    :goto_6
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public doStopUidForIdleUidsLocked()V
    .locals 5

    .line 5338
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5340
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 5341
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5344
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5345
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 5348
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1

    .line 4406
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x23

    .line 4407
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    const/16 p0, 0xa

    const/16 p4, 0x20

    if-ge p2, p0, :cond_0

    .line 4409
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4411
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 4412
    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4414
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4415
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4416
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4417
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    invoke-static {p1, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4418
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(C)V

    .line 4419
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4420
    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4421
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p4

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p4

    if-nez p4, :cond_1

    .line 4422
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 4423
    :cond_1
    const-string p4, " act:"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    .line 4426
    const-string p2, "activities"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p2, v0

    .line 4429
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result p3

    const-string/jumbo p4, "|"

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 4431
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    :cond_3
    const-string/jumbo p2, "recents"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p2, v0

    .line 4436
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 4438
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4440
    :cond_5
    const-string p2, "client"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, p2

    .line 4443
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    .line 4445
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4447
    :cond_7
    const-string/jumbo p0, "treated"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4450
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 4396
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4397
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4398
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4399
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4400
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4401
    const-string p0, "):"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 4455
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4457
    const-string v1, "  "

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 4458
    const-string p3, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_b

    .line 4463
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_1

    .line 4464
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4473
    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    const-string v3, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 p3, 0x1

    sub-int/2addr v0, p3

    move v3, p3

    .line 4479
    :goto_2
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v4, :cond_4

    .line 4480
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_2

    .line 4481
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    .line 4485
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4486
    const-string v3, "Activities:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4489
    :cond_3
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    move v3, p3

    .line 4492
    :goto_4
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v0, v4, :cond_7

    .line 4493
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_5

    .line 4494
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 4498
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4499
    const-string v3, "Services:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4502
    :cond_6
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    move v3, p3

    :goto_6
    if-ltz v0, :cond_a

    .line 4506
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_8

    .line 4507
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v3, :cond_9

    .line 4511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4512
    const-string v3, "Other:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    .line 4515
    :cond_9
    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_a
    return p3

    :cond_b
    return v2
.end method

.method public dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 8

    .line 4966
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    const/4 p4, 0x1

    if-lez p1, :cond_1

    if-eqz p3, :cond_0

    .line 4967
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4969
    :cond_0
    const-string p1, "  OOM levels:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    const-string p1, "SYSTEM_ADJ"

    const/16 p3, -0x384

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4971
    const-string p1, "PERSISTENT_PROC_ADJ"

    const/16 p3, -0x320

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4972
    const-string p1, "PERSISTENT_SERVICE_ADJ"

    const/16 p3, -0x2bc

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4973
    const-string p1, "FOREGROUND_APP_ADJ"

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4974
    const-string p1, "VISIBLE_APP_ADJ"

    const/16 p3, 0x64

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4975
    const-string p1, "PERCEPTIBLE_APP_ADJ"

    const/16 p3, 0xc8

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4976
    const-string p1, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 p3, 0xe1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4977
    const-string p1, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 p3, 0xfa

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4978
    const-string p1, "BACKUP_APP_ADJ"

    const/16 p3, 0x12c

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4979
    const-string p1, "HEAVY_WEIGHT_APP_ADJ"

    const/16 p3, 0x190

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4980
    const-string p1, "SERVICE_ADJ"

    const/16 p3, 0x1f4

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4981
    const-string p1, "HOME_APP_ADJ"

    const/16 p3, 0x258

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4982
    const-string p1, "PREVIOUS_APP_ADJ"

    const/16 p3, 0x2bc

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4983
    const-string p1, "SERVICE_B_ADJ"

    const/16 p3, 0x320

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4984
    const-string p1, "CACHED_APP_MIN_ADJ"

    const/16 p3, 0x384

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4985
    const-string p1, "CACHED_APP_MAX_ADJ"

    const/16 p3, 0x3e7

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4987
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4988
    const-string p1, "  Process OOM control ("

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4989
    const-string p1, " total, non-act at "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4990
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4991
    const-string p1, ", non-svc at "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4992
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 4993
    const-string p1, "):"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    const/4 v6, 0x1

    move-object v0, p2

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move p3, p4

    .line 4999
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5000
    :try_start_0
    iget-object p5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p5, p2, p3, p7}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 5001
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5003
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5004
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    return p4

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 5001
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 13

    move-object/from16 v2, p6

    .line 4526
    const-string v0, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    move v10, v5

    goto/16 :goto_5

    .line 4529
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v3, :cond_7

    .line 4531
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 4532
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v10, v0

    :goto_2
    if-ge v10, v8, :cond_6

    .line 4533
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 4534
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_4

    :cond_2
    if-nez v5, :cond_3

    .line 4538
    const-string v5, "  All known processes:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v9

    .line 4541
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v12, "  *APP*"

    :goto_3
    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4542
    const-string v12, " UID "

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 4543
    const-string v12, " "

    invoke-virtual {p2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4544
    const-string v12, "    "

    invoke-virtual {v11, p2, v12}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4545
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v10, v6

    .line 4552
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 4554
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v0

    :goto_6
    if-ge v0, v3, :cond_b

    .line 4555
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_8

    .line 4556
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    if-nez v4, :cond_a

    if-eqz v5, :cond_9

    .line 4561
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4563
    :cond_9
    const-string v4, "  Isolated process list (sorted by uid):"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v9

    move v5, v4

    .line 4567
    :cond_a
    const-string v7, "    Isolated #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4568
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4572
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v2, v5}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v2

    move-object v2, p2

    .line 4574
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    move v5, v9

    goto :goto_8

    :cond_c
    move v5, v3

    .line 4578
    :goto_8
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 4579
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    :cond_d
    if-eqz p5, :cond_e

    .line 4584
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v5, v0

    goto :goto_9

    :cond_e
    move-object/from16 v2, p6

    :goto_9
    if-eqz v5, :cond_f

    .line 4589
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4591
    :cond_f
    const-string v0, "  "

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v5, v9

    .line 4595
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz v5, :cond_11

    .line 4597
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4599
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4600
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "PERS"

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    move-object v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move v7, v9

    goto :goto_a

    :cond_12
    move v7, v5

    .line 4605
    :goto_a
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    return-void
.end method

.method public final enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 5

    .line 5100
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 5103
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5104
    iget v2, v1, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v2, p1, :cond_0

    .line 5105
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_1

    .line 5106
    sget-object v2, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-using existing item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v0, :cond_6

    .line 5115
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5117
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 5118
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v1, :cond_3

    .line 5119
    sget-object v1, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving available item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5122
    :cond_2
    new-instance v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    .line 5123
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v1, :cond_3

    .line 5124
    sget-object v1, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocating new item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 5127
    iput v1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5128
    iput p1, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 5129
    iput p2, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 5130
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 5131
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz p1, :cond_4

    .line 5132
    sget-object p1, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    const-string p2, "*** Enqueueing dispatch processes changed!"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5135
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5137
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_6
    return-object v1
.end method

.method public enqueueProcessChangeItemLocked(IIII)V
    .locals 1

    .line 5081
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5082
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object p0

    .line 5083
    iget p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5084
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    .line 5085
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enqueueProcessChangeItemLocked(IIIZ)V
    .locals 1

    .line 5091
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5092
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object p0

    .line 5093
    iget p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 5094
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 5095
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 5

    .line 4209
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4210
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4211
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4212
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4214
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4215
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4217
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4218
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4220
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4221
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4222
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    .line 4224
    invoke-static {v2, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x190

    const/4 v4, 0x0

    if-ne p3, v3, :cond_3

    .line 4226
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    .line 4228
    :cond_3
    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4230
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result p3

    iput p3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4231
    iput v2, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4232
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-ne p1, p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4233
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide p0

    iput-wide p0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method public findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8

    .line 1755
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1757
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1758
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    .line 1760
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1761
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1762
    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_0

    return-object v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1768
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find mystery application for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1768
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4337
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4338
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4341
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    .line 4342
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final freezeBinderAndPackageCgroup(Ljava/util/List;I)V
    .locals 11

    .line 3048
    const-string v0, ": "

    const-string v1, "Unable to freeze binder for "

    const-string v2, "ActivityManager"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    .line 3050
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    if-lez v7, :cond_2

    move v8, v4

    .line 3056
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getFreezer()Lcom/android/server/am/Freezer;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v7, v6, v10}, Lcom/android/server/am/Freezer;->freezeBinder(IZI)I

    move-result v9

    .line 3057
    sget v10, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v10, v10

    if-ne v9, v10, :cond_1

    add-int/lit8 v10, v8, 0x1

    if-lt v8, v6, :cond_0

    goto :goto_2

    :cond_0
    move v8, v10

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v9, :cond_2

    .line 3058
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 3060
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3068
    :cond_3
    invoke-static {p2, v6}, Lcom/android/server/am/ProcessList;->freezePackageCgroup(IZ)Z

    return-void
.end method

.method public getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;
    .locals 0

    .line 1539
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    return-object p0
.end method

.method public getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 4

    .line 5366
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    .line 5367
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v0

    .line 5366
    invoke-static {p0, v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 5368
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    .line 5369
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    .line 5368
    invoke-static {p0, v2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    .line 5372
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v2

    .line 5373
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v3

    .line 5372
    invoke-static {v2, v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5374
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v2

    .line 5375
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result p1

    .line 5374
    invoke-static {v2, p1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_5

    if-nez p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    return v1
.end method

.method public getCachedRestoreThresholdKb()J
    .locals 2

    .line 1535
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method public getIsolatedProcessesLocked(I)Ljava/util/List;
    .locals 5

    .line 3369
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3370
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3371
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_1

    if-nez v1, :cond_0

    .line 3373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3375
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4174
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getLRURecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4183
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4184
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4185
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4186
    invoke-interface {v3}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLruProcessServiceStartLOSP()I
    .locals 0

    .line 4322
    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return p0
.end method

.method public getLruProcessesLOSP()Ljava/util/ArrayList;
    .locals 0

    .line 4300
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLruProcessesLSP()Ljava/util/ArrayList;
    .locals 0

    .line 4308
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLruSeqLOSP()I
    .locals 0

    .line 4386
    iget p0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return p0
.end method

.method public getLruSizeLOSP()I
    .locals 0

    .line 4292
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getMemLevel(I)J
    .locals 3

    const/4 v0, 0x0

    .line 1522
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1523
    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1524
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p0, p0, v0

    :goto_1
    mul-int/lit16 p0, p0, 0x400

    int-to-long p0, p0

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1527
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    goto :goto_1
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 10

    const/16 v0, 0x258

    .line 1740
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x384

    .line 1741
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1742
    invoke-static {}, Landroid/os/Process;->getAdvertisedMem()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->advertisedMem:J

    .line 1743
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1744
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1745
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1746
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1747
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    const/16 v0, 0x1f4

    .line 1748
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    const/16 v0, 0x64

    .line 1749
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1750
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    return-void
.end method

.method public getNextProcStateSeq()J
    .locals 4

    .line 5473
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    return-wide v0
.end method

.method public getNumForegroundServices()Landroid/util/Pair;
    .locals 6

    .line 5752
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 5753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5754
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 5755
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->getNumForegroundServices()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5761
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5762
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 5761
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 1

    if-eqz p2, :cond_1

    .line 3346
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3350
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3351
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p2

    .line 3350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object p0

    return-object p0

    .line 3348
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object p0
.end method

.method public final getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 10

    .line 2405
    new-instance p0, Landroid/util/ArrayMap;

    array-length v0, p2

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2406
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 2407
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 2408
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 2409
    const-string v4, "ActivityManager"

    if-nez v3, :cond_0

    .line 2410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2413
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v5

    .line 2414
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 2416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inode == 0 or app uninstalled with keep-data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2419
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    if-nez v1, :cond_0

    .line 588
    new-instance v1, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    .line 589
    invoke-static {v1}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->-$$Nest$mregisterObserver(Lcom/android/server/am/ProcessList$ProcessListSettingsListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 591
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessListSettingsListener:Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 592
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .locals 0

    .line 4391
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object p0
.end method

.method public getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 5

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1726
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1728
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1729
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1733
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1736
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 5

    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1029
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1030
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 1031
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1032
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1035
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1042
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1039
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pending process is not started yet,retry later"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1044
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .locals 8

    .line 4244
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_8

    .line 4245
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4246
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4247
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    if-nez p1, :cond_0

    .line 4248
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_7

    :cond_0
    if-nez p3, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p4, :cond_1

    goto/16 :goto_2

    .line 4252
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4253
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4255
    new-instance v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 4257
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4259
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 4260
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 4262
    :cond_2
    invoke-virtual {p0, v2, v4, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 4263
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    .line 4264
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4267
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v2

    .line 4266
    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    .line 4268
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v2, :cond_4

    .line 4270
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4271
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 4273
    iput v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4276
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    .line 4277
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    :cond_5
    if-nez v1, :cond_6

    .line 4282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4284
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method public getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;
    .locals 0

    .line 3391
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getSharedIsolatedProcess(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4

    .line 3356
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3357
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3358
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3359
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUidProcStateLOSP(I)I
    .locals 0

    .line 5312
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x14

    return p0

    .line 5313
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public getUidProcessCapabilityLOSP(I)I
    .locals 0

    .line 5322
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5323
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p0

    return p0
.end method

.method public getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .locals 0

    .line 5329
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    return-object p0
.end method

.method public handleAllTrustStorageUpdateLOSP()V
    .locals 4

    .line 3659
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3660
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3661
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3664
    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3666
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle trust storage update for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 4

    .line 5538
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5539
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 5541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 5544
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5545
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5546
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 5548
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    .line 5561
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5565
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5566
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 5567
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5571
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5572
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5574
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5577
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5578
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 2299
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p0, :cond_0

    .line 2300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is really gone now"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2306
    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2307
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    .line 2217
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2241
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 2242
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result p2

    if-lez p2, :cond_0

    .line 2243
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessList;->handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V

    return-void

    .line 2246
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V
    .locals 2

    .line 2257
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We\'ve been watching for the death of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2262
    :cond_0
    iput-object p2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2263
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v10, p3

    move-wide/from16 v2, p4

    .line 2858
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2859
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 2861
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " start not valid, killing pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2865
    invoke-static {v4}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2866
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2868
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4, v3}, Landroid/os/Process;->killProcessGroup(II)I

    :cond_0
    const/16 v3, 0xd

    .line 2870
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 2872
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    return v9

    .line 2875
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2876
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: done updating battery stats"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2879
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2880
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v15

    .line 2881
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v16, v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_0

    :goto_1
    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x753e

    .line 2878
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2884
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2885
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v8, p2

    .line 2884
    :try_start_2
    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v8

    goto :goto_2

    :catch_0
    move v4, v8

    goto :goto_2

    :catch_1
    move/from16 v4, p2

    .line 2891
    :catch_2
    :goto_2
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AP_Init:["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]:["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "]:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]:pid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2896
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ":(PersistAP)"

    goto :goto_4

    :cond_4
    const-string v5, ""

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2891
    invoke-virtual {v2, v3}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 2899
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2901
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: building log message"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2902
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2903
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2904
    const-string v3, "Start proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 2906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2907
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 2908
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2909
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2910
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2911
    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    :cond_5
    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2918
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v6

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2922
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2923
    :try_start_3
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2924
    invoke-virtual {v1, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2925
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2926
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2927
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    const-string/jumbo v5, "startProcess: starting to update pids map"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2929
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 2930
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 2931
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_7

    .line 2933
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_7

    .line 2935
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProcessStartedLocked process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " belongs to another existing app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2935
    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 2940
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    .line 2943
    :cond_7
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2944
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    if-nez p6, :cond_9

    .line 2946
    :try_start_5
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2947
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2948
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_8

    const-wide/32 v5, 0x124f80

    goto :goto_5

    .line 2949
    :cond_8
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    .line 2948
    :goto_5
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2950
    const-string v3, "START_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send START_TIMEOUT message    ProcessRecord :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 2952
    :cond_9
    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2953
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/ProcessList;->dispatchProcessStarted(Lcom/android/server/am/ProcessRecord;I)V

    .line 2954
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v1

    const-string/jumbo v3, "startProcess: done updating pids map"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 2952
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2931
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 2926
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public final handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 7

    .line 2844
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2845
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    iget p3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne p0, p3, :cond_0

    .line 2846
    iget-boolean p0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2851
    :cond_1
    iget v2, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v3, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result p0

    return p0
.end method

.method public final handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .locals 4

    .line 5511
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 5515
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 5517
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v1, p2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 5519
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget p2, p0, v2

    aget v1, p0, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception in reading unsolicited zygote message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public final hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .locals 1

    .line 2636
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 2638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 2642
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string p2, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager$Property;

    if-eqz p0, :cond_2

    .line 2643
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public haveBackgroundProcessLOSP()Z
    .locals 4

    .line 4195
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 4196
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4197
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4198
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 10

    .line 5398
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 5399
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 5400
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5402
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto/16 :goto_8

    .line 5407
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ltz v0, :cond_b

    .line 5408
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 5410
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_5

    .line 5413
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_3

    goto :goto_5

    .line 5417
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 5418
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v6, v7, :cond_4

    goto :goto_5

    .line 5421
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    .line 5427
    :cond_5
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    if-ne v6, v1, :cond_7

    if-nez v2, :cond_6

    .line 5430
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 5432
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5434
    :cond_7
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v6, :cond_8

    .line 5435
    const-string v6, "ActivityManager_Network"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    :cond_8
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v6, v8, v4

    if-eqz v6, :cond_9

    .line 5439
    iget-object v3, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5442
    :cond_9
    :goto_3
    monitor-exit v7

    goto :goto_5

    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_b
    if-nez v2, :cond_c

    goto :goto_8

    .line 5450
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_6
    if-ltz p1, :cond_10

    .line 5451
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 5452
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    .line 5455
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 5456
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    .line 5457
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5459
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v3, :cond_e

    .line 5460
    const-string v3, "ActivityManager_Network"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Informing app thread that it needs to block: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v0, :cond_f

    .line 5464
    iget-wide v3, v0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v1, v3, v4}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_f
    :goto_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_10
    :goto_8
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 1

    .line 890
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 891
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 892
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 893
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 897
    const-string/jumbo p1, "persist.zygote.app_data_isolation"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 898
    const-string/jumbo p1, "persist.sys.vold_app_data_isolation_enabled"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 900
    new-instance p1, Ljava/util/ArrayList;

    .line 901
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 903
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez p1, :cond_1

    .line 904
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string p3, "ActivityManager:kill"

    const/16 v0, 0xa

    invoke-direct {p1, p3, v0, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 906
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 907
    new-instance p1, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 908
    new-instance p1, Lcom/android/server/am/OomConnection;

    new-instance p3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {p3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3}, Lcom/android/server/am/OomConnection;-><init>(Lcom/android/server/am/OomConnection$OomConnectionListener;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sOomConnection:Lcom/android/server/am/OomConnection;

    .line 925
    new-instance p1, Lcom/android/server/am/LmkdConnection;

    sget-object p3, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$2;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {p1, p3, v0}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object p1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 994
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz p1, :cond_0

    .line 996
    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 997
    invoke-virtual {p3}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 996
    invoke-virtual {p1, p3, p2, v0}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 1000
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1001
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 1002
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    :cond_1
    return-void
.end method

.method public isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 4381
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 5

    .line 2808
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2810
    const-string/jumbo v2, "killedByAm=true;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2812
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_2

    if-nez v0, :cond_1

    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2814
    :cond_1
    const-string v2, "No entry in mProcessNames;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2818
    :cond_3
    const-string/jumbo v2, "pendingStart=false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_6

    if-nez v0, :cond_5

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2822
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {p2, p3, p1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2829
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz p0, :cond_8

    if-nez v0, :cond_7

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2831
    :cond_7
    const-string p0, "Package is frozen;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2834
    :cond_8
    throw p1

    :catch_1
    :goto_1
    if-nez v0, :cond_9

    goto :goto_2

    .line 2837
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public killAllBackgroundProcessesExceptLSP(II)V
    .locals 10

    .line 3578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3579
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3581
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3582
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    .line 3584
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3585
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_1

    if-ltz p1, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3587
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    if-le v8, p2, :cond_2

    .line 3588
    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3593
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    .line 3595
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/16 v8, 0xa

    const-string/jumbo v9, "kill all background except"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xd

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .locals 8

    .line 5624
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5625
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getLastCanKillOnBgRestrictedAndIdleTime()J

    move-result-wide v1

    .line 5626
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    .line 5627
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5628
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5629
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    cmp-long v0, v1, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 5632
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v1, v6

    cmp-long p0, v1, p2

    if-gtz p0, :cond_1

    const/16 p0, 0x12

    const/4 p2, 0x1

    .line 5635
    const-string p3, "cached idle & background restricted"

    const/16 v0, 0xd

    invoke-virtual {p1, p3, v0, p0, p2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-wide v4

    :cond_1
    return-wide v1

    :cond_2
    :goto_0
    return-wide v4
.end method

.method public killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/UidRecord;)V
    .locals 3

    .line 5651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5652
    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessList;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 3

    .line 2313
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2314
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    .line 2315
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 2317
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2318
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2320
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    :cond_1
    return-void
.end method

.method public killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .locals 6

    .line 3004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3005
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3006
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 3007
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_1

    .line 3008
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    .line 3011
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v4, p2, :cond_2

    goto :goto_1

    .line 3014
    :cond_2
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AppZygote;

    if-eqz p1, :cond_3

    .line 3016
    invoke-virtual {v4}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 3019
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3022
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v3, v3, 0x1

    check-cast p2, Landroid/os/AppZygote;

    .line 3023
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    .line 2993
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 3084
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 3085
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3090
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_10

    .line 3092
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3093
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_f

    .line 3095
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 3096
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez p8, :cond_1

    :cond_0
    :goto_2
    move/from16 v14, p4

    goto/16 :goto_7

    .line 3100
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz p7, :cond_0

    if-nez p10, :cond_2

    if-eqz v8, :cond_2

    .line 3106
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3107
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 3108
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3110
    invoke-virtual {v1, v14, v15, v12}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    .line 3113
    :goto_3
    new-instance v14, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v14, v7, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3119
    :cond_3
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    move/from16 v14, p4

    if-ge v12, v14, :cond_4

    goto/16 :goto_7

    :cond_4
    const/4 v12, -0x1

    if-nez v8, :cond_7

    if-eq v10, v12, :cond_5

    .line 3133
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v12, v10, :cond_5

    goto/16 :goto_7

    :cond_5
    if-ltz v9, :cond_6

    .line 3136
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v12, v9, :cond_6

    goto/16 :goto_7

    :cond_6
    const/16 v17, 0x1

    goto :goto_5

    .line 3143
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 3144
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    const/16 v17, 0x1

    if-nez v15, :cond_9

    .line 3145
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_9

    goto :goto_7

    :cond_9
    if-eq v10, v12, :cond_a

    .line 3148
    iget v12, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v12, v10, :cond_a

    goto :goto_7

    .line 3151
    :cond_a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    if-nez v15, :cond_b

    goto :goto_7

    :cond_b
    if-nez v12, :cond_c

    if-eqz v15, :cond_c

    if-nez p10, :cond_c

    .line 3155
    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_c

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 3156
    invoke-virtual {v1, v12, v13, v15}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_c

    move/from16 v12, v17

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v12, 0x0

    :goto_6
    if-nez p7, :cond_d

    return v17

    :cond_d
    if-eqz p9, :cond_e

    move/from16 v13, v17

    .line 3168
    invoke-virtual {v7, v13}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 3170
    :cond_e
    new-instance v13, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v13, v7, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_f
    move/from16 v14, p4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x2710

    if-lt v9, v1, :cond_11

    const/16 v1, 0x4e1f

    if-gt v9, v1, :cond_11

    const/4 v13, 0x1

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_12

    .line 3178
    new-instance v1, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_12
    const/4 v12, 0x0

    .line 3182
    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_19

    .line 3183
    invoke-static {v11, v12}, Lcom/android/server/am/ProcessList;->getUIDSublist(Ljava/util/List;I)Ljava/util/List;

    move-result-object v14

    const/4 v1, 0x0

    .line 3184
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget v15, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eqz v13, :cond_13

    .line 3188
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, v9, :cond_13

    const/16 v18, 0x1

    goto :goto_a

    :cond_13
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_14

    .line 3190
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessList;->freezeBinderAndPackageCgroup(Ljava/util/List;I)V

    .line 3192
    :cond_14
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3193
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez p6, :cond_16

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v3, 0x1

    :goto_d
    xor-int/lit8 v7, v18, 0x1

    move/from16 v4, p11

    move/from16 v5, p12

    move-object/from16 v6, p13

    move-object v1, v2

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    .line 3196
    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    if-eqz v18, :cond_18

    .line 3198
    invoke-static {v15}, Lcom/android/server/am/ProcessList;->unfreezePackageCgroup(I)Z

    .line 3200
    :cond_18
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v12, v1

    goto :goto_9

    .line 3202
    :cond_19
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(I)V

    .line 3203
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/16 v17, 0x1

    return v17

    :cond_1a
    const/16 v16, 0x0

    return v16
.end method

.method public killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .locals 5

    .line 5728
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5732
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 5734
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5735
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5736
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 5737
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 5739
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 5737
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 5742
    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$handleProcessStart$1(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    .line 2219
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v10

    .line 2222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 2219
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2224
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v5, p10

    .line 2225
    :try_start_2
    invoke-virtual {v1, v4, v0, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2226
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    :goto_0
    move-wide/from16 v5, p10

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    goto :goto_0

    .line 2228
    :goto_1
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 2229
    :try_start_6
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2231
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v0, 0x0

    .line 2232
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2233
    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2234
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget v14, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v15, "start failure"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2233
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2236
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->doEarlyCleanupIfNecessaryLocked()V

    .line 2237
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final synthetic lambda$killAppIfBgRestrictedAndCachedIdleLocked$5(JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 5652
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method

.method public final synthetic lambda$startProcessLocked$0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2185
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic lambda$updateBackgroundRestrictedForUidPackageLocked$4(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 5591
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5592
    iget-object p1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    if-eqz p2, :cond_1

    .line 5594
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5595
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 5597
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v2, 0x3a

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 5599
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5600
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sub-long/2addr p1, p3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5604
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5606
    :cond_2
    :goto_0
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5607
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    return-void
.end method

.method public final needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 2427
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2428
    iget-boolean p0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2429
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 9

    if-eqz p2, :cond_0

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 3398
    :cond_0
    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 3399
    :goto_1
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 3400
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p5, :cond_1

    move v0, p6

    .line 3404
    :cond_1
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p5, :cond_2

    if-nez p7, :cond_3

    .line 3405
    :cond_2
    const-string p0, "ActivityManager"

    const-string p1, "Abort creating new sandbox process as required parameters are missing."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    if-eqz p3, :cond_7

    if-nez p4, :cond_5

    move-object/from16 v8, p8

    .line 3410
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v2

    .line 3414
    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object v2

    :cond_5
    move-object/from16 v8, p8

    move v0, p4

    .line 3423
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3424
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3432
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_7
    move-object/from16 v8, p8

    goto :goto_2

    .line 3434
    :goto_3
    new-instance v0, Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3436
    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningProcessName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3437
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3439
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_a

    .line 3444
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v4

    xor-int/lit8 v7, v4, 0x1

    .line 3456
    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->isTypeActivity()Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    move v4, v5

    goto :goto_4

    :cond_8
    move v4, v6

    .line 3462
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowProcessController;->setStoppedState(I)V

    goto :goto_5

    .line 3466
    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessRecord;->setWasForceStopped(Z)V

    :cond_a
    :goto_5
    if-nez p3, :cond_b

    if-nez p5, :cond_b

    if-nez p2, :cond_b

    .line 3473
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v4, 0x9

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_b

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3476
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3478
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3479
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3480
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3481
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 p2, -0x320

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V

    :cond_b
    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    .line 3486
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    const/16 p2, -0x2bc

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ProcessStateController;->setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 3488
    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    return-object v0
.end method

.method public noteAppKill(IIIILjava/lang/String;)V
    .locals 3

    .line 5707
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5708
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "note: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is being killed, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub-reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 5714
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 5715
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5716
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5718
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5719
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5721
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 5715
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3

    .line 5691
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5693
    invoke-static {p2}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5694
    invoke-static {p3}, Landroid/app/ApplicationExitInfo;->subreasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5692
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5698
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5699
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5701
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method public noteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 5679
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has a recoverable native crash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 5660
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_0

    .line 5661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    :cond_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5665
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5666
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 5668
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5669
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5671
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public final offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 3676
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3678
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3683
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    .line 3685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Adding dependent process "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not on LRU list: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1653
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    .line 1654
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1655
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1656
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1658
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1659
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v2, v1

    .line 1660
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1661
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v4, v4, v2

    mul-int/lit16 v4, v4, 0x400

    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1662
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    const/16 p0, 0x8

    .line 1667
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x5

    .line 1668
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1669
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1670
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1673
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1674
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1675
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1676
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v1
.end method

.method public onSystemReady()V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppStartInfoTracker;->onSystemReady()V

    .line 1008
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    return-void
.end method

.method public final printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    .line 4948
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ltz p3, :cond_0

    .line 4950
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    .line 4951
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_0
    const/16 v1, -0xa

    if-le p3, v1, :cond_1

    .line 4953
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4955
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4956
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4958
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide p2

    const/16 p0, 0x400

    invoke-static {p2, p3, p0}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4960
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1

    .line 5010
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5011
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5012
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 2960
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    .line 2962
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2963
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2964
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2965
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2967
    :cond_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_1

    .line 2969
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2970
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2971
    const-string v3, "hasn\'t been killed"

    const/16 v4, 0xd

    const/16 v5, 0x10

    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 2974
    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2978
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_3

    sub-int/2addr v3, v1

    .line 2979
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2981
    :cond_3
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_4

    sub-int/2addr v3, v1

    .line 2982
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2984
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2985
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 2987
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public final removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 2327
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2329
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2328
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2331
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2335
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2334
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AppZygote;

    if-eqz v0, :cond_2

    .line 2337
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2338
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2340
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2341
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2344
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    return-void

    .line 2346
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2347
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2348
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3216
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z
    .locals 10

    .line 3223
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3224
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3225
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force removing proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3225
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    if-eq v4, p1, :cond_1

    .line 3231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring remove of inactive process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3234
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3235
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3238
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    if-lez v7, :cond_2

    .line 3239
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v7, v2, :cond_3

    :cond_2
    if-nez v7, :cond_9

    .line 3240
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    if-lez v7, :cond_4

    .line 3242
    invoke-virtual {p1, v5}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 3243
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove START_TIMEOUT removeProcess    ProcessRecord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "START_DEBUG"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3247
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_4

    .line 3248
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3249
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3253
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    if-nez p2, :cond_5

    move v8, v2

    move v9, v5

    goto :goto_0

    :cond_5
    move v9, v2

    move v8, v5

    goto :goto_0

    :cond_6
    move v8, v5

    move v9, v8

    :goto_0
    const/4 v5, 0x1

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object/from16 v2, p6

    move/from16 v6, p7

    .line 3260
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZZ)V

    if-lez v7, :cond_7

    .line 3265
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v7, p1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 3267
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p3

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    if-eqz v4, :cond_8

    .line 3270
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3271
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p4, v2

    move p5, v3

    move-object p2, v4

    move p3, v5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_8
    return v9

    .line 3275
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 3209
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1

    const/4 v0, 0x0

    .line 3494
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 5

    .line 3500
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3502
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    if-eqz p3, :cond_1

    if-ne v0, p3, :cond_2

    .line 3507
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_2
    if-eqz v1, :cond_5

    .line 3510
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3512
    invoke-virtual {p1, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3513
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result p3

    if-nez p3, :cond_4

    .line 3515
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz p3, :cond_3

    .line 3516
    sget-object p3, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more processes in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3518
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const v4, -0x7fffffff

    invoke-virtual {p3, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3520
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3521
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3522
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object p3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p3}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3523
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x0

    const/16 v3, 0x14

    invoke-virtual {p1, p2, v3, p3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    .line 3526
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2, v3}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    :cond_4
    const/4 p1, 0x0

    .line 3529
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3532
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3533
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3534
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    if-eqz v1, :cond_6

    .line 3536
    iget-boolean p1, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz p1, :cond_6

    .line 3537
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 3539
    iget-boolean p1, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz p1, :cond_7

    .line 3540
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p1

    .line 3541
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 3543
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3544
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_7

    .line 3545
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mSdkSandboxes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3549
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 3532
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public scheduleDispatchProcessDiedLocked(II)V
    .locals 4

    .line 5145
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5147
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    if-lez p1, :cond_0

    .line 5148
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    .line 5149
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5150
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5153
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5154
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 5155
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 4362
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 4364
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4369
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    .line 4371
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 8

    .line 5282
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 5283
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 5284
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 5285
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p3, :cond_3

    .line 5287
    :cond_0
    :try_start_0
    array-length v5, p2

    sub-int/2addr v5, v1

    :goto_1
    if-ltz v5, :cond_2

    if-nez v2, :cond_2

    .line 5288
    aget-object v6, p2, v5

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 5292
    :cond_2
    invoke-interface {v4, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 5300
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method public setAllHttpProxy()V
    .locals 6

    .line 3622
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 3623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3624
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3625
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3629
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 3631
    :try_start_1
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3633
    :catch_0
    :try_start_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update http proxy for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3638
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3639
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    return-void

    .line 3638
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setLruProcessServiceStartLSP(I)V
    .locals 0

    .line 4317
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return-void
.end method

.method public final startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v4, p4

    move-wide/from16 v2, p13

    const-wide/16 v5, 0x40

    .line 2443
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start proc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2445
    const-string/jumbo v7, "startProcess: asking zygote to start proc"

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v17

    const/4 v7, 0x1

    if-eqz v17, :cond_0

    .line 2451
    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v25, v5

    goto/16 :goto_f

    .line 2457
    :cond_0
    :goto_0
    iget-boolean v8, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2458
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/32 v11, 0x89450c5

    .line 2460
    invoke-virtual {v8, v11, v12, v10}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v9

    .line 2464
    :goto_1
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    .line 2469
    iget-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v11, :cond_3

    .line 2470
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 2472
    :cond_3
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 2474
    array-length v12, v11

    if-nez v12, :cond_4

    .line 2475
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 2478
    :cond_4
    :goto_2
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/ProcessList;->hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v12

    .line 2480
    invoke-virtual {v0, v10, v11, v4}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v13

    if-nez v13, :cond_5

    move v8, v9

    .line 2489
    :cond_5
    new-instance v14, Landroid/util/ArraySet;

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2490
    array-length v15, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v9

    :goto_3
    if-ge v5, v15, :cond_6

    :try_start_1
    aget-object v6, v11, v5

    .line 2491
    invoke-interface {v14, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    const-wide/16 v25, 0x40

    goto/16 :goto_f

    .line 2494
    :cond_6
    new-array v5, v9, [Ljava/lang/String;

    .line 2495
    invoke-interface {v14, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2494
    invoke-virtual {v0, v10, v5, v4}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_7

    move v8, v9

    :cond_7
    const/4 v6, 0x0

    if-nez v12, :cond_8

    .line 2502
    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v10, :cond_8

    move-object v5, v6

    move-object v13, v5

    move/from16 v21, v9

    goto :goto_4

    :cond_8
    move/from16 v21, v8

    .line 2508
    :goto_4
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2509
    const-class v10, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManagerInternal;

    .line 2511
    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v13, :cond_9

    .line 2514
    invoke-virtual {v10, v8}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v11

    if-eqz v11, :cond_9

    move/from16 v22, v7

    goto :goto_5

    .line 2519
    :cond_9
    invoke-virtual {v1, v7}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    :cond_a
    move/from16 v22, v9

    .line 2526
    :goto_5
    iget-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v11, :cond_b

    move-object/from16 v20, v6

    goto :goto_6

    :cond_b
    move-object v6, v5

    move-object/from16 v20, v13

    .line 2532
    :goto_6
    const-string v5, "app_compat"

    const-string v11, "appcompat_sysprop_override_pkgs"

    const-string v12, ""

    invoke-static {v5, v11, v12}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, ","

    .line 2534
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2535
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v11

    move v12, v9

    .line 2536
    :goto_7
    array-length v13, v11

    if-ge v12, v13, :cond_d

    .line 2537
    aget-object v13, v11, v12

    invoke-static {v5, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move/from16 v23, v7

    goto :goto_8

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    move/from16 v23, v9

    .line 2543
    :goto_8
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_f

    .line 2545
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2548
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2549
    :try_start_2
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2550
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2552
    :cond_e
    :goto_9
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v11, v5}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 2557
    :cond_f
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2558
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    .line 2559
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v11

    .line 2560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2561
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2565
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v8

    .line 2566
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v5, 0x1

    const/4 v14, 0x0

    move v6, v5

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v28, v10

    move-wide/from16 v29, v11

    move/from16 v27, v24

    const-wide/16 v25, 0x40

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v24, v9

    move v9, v2

    move-object/from16 v2, p2

    .line 2561
    :try_start_6
    invoke-static/range {v2 .. v17}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move/from16 v4, p4

    move-object/from16 v17, v20

    :goto_a
    move/from16 v7, v24

    const/4 v5, 0x1

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    goto/16 :goto_f

    :cond_10
    move/from16 v27, v8

    move/from16 v24, v9

    move-object/from16 v28, v10

    move-wide/from16 v29, v11

    const-wide/16 v25, 0x40

    .line 2567
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2568
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v2

    .line 2571
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2575
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v18, v6

    move/from16 v15, v17

    move-object/from16 v17, v20

    move-object/from16 v6, p5

    .line 2571
    invoke-virtual/range {v2 .. v19}, Landroid/os/AppZygote;->startProcess(Ljava/lang/String;Ljava/lang/String;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move/from16 v4, p4

    goto :goto_a

    :cond_11
    move-object/from16 v18, v6

    move/from16 v15, v17

    move-object/from16 v17, v20

    .line 2579
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2580
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move/from16 v3, p7

    .line 2579
    invoke-static {v2, v3}, Lcom/mediatek/internal/os/ZygoteConfigExt;->updateZygotePolicyFlags(Landroid/content/ContentResolver;I)I

    move-result v16

    .line 2582
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v18

    .line 2586
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    move/from16 v5, p4

    move/from16 v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p12

    move-object/from16 v19, v17

    move/from16 v17, v15

    move-object v15, v2

    move-object/from16 v2, p2

    .line 2582
    invoke-static/range {v2 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v2

    move-object/from16 v17, v19

    const/4 v5, 0x1

    .line 2591
    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    move v7, v5

    .line 2595
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mAppStartInfoTracker:Lcom/android/server/am/AppStartInfoTracker;

    move-wide/from16 v8, v29

    invoke-virtual {v3, v1, v8, v9, v5}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V

    if-nez v7, :cond_15

    .line 2601
    monitor-enter p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2602
    :try_start_7
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->mSkipProcessGroupCreation:Z

    if-nez v3, :cond_14

    .line 2604
    iget v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v4, v3}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v3

    if-gez v3, :cond_13

    .line 2606
    sget v4, Landroid/system/OsConstants;->ESRCH:I

    neg-int v4, v4

    if-ne v3, v4, :cond_12

    .line 2607
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create process group for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_d

    .line 2611
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create process group for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2615
    :cond_13
    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->mProcessGroupCreated:Z

    .line 2618
    :cond_14
    :goto_c
    monitor-exit p3

    goto :goto_e

    :goto_d
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0

    :cond_15
    :goto_e
    if-eqz v22, :cond_16

    .line 2625
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v4, v27

    move-object/from16 v10, v28

    invoke-virtual {v10, v4, v3, v1}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    .line 2628
    :cond_16
    const-string/jumbo v1, "startProcess: returned from zygote!"

    move-wide/from16 v3, p13

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2631
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :goto_f
    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    .line 2632
    throw v0
.end method

.method public startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 15

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v0, p3

    .line 2665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2668
    const-string v11, "/"

    const-string v12, "ActivityManager"

    const/4 v13, 0x0

    if-nez p8, :cond_3

    .line 2669
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 2670
    const-string/jumbo v4, "startProcess: after getProcessRecord"

    invoke-virtual {p0, v9, v10, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v4, p4, 0x4

    if-eqz v4, :cond_1

    .line 2675
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2676
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad process: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v13

    .line 2685
    :cond_1
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing bad process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2688
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2689
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2690
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x7540

    .line 2689
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2692
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    if-eqz v3, :cond_4

    .line 2694
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_0

    :cond_3
    move-object v3, v13

    .line 2709
    :cond_4
    :goto_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startProcess: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " knownToBeDead="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    .line 2711
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v13

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 2712
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2709
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_e

    .line 2714
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_e

    if-nez v0, :cond_8

    .line 2715
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2718
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already running: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_a
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2721
    const-string/jumbo v0, "startProcess: done, added package to proc"

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v3

    .line 2727
    :cond_b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :cond_c
    const-string/jumbo v0, "startProcess: bad proc running, killing"

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2729
    iget v0, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2730
    const-string/jumbo v0, "startProcess: done killing old proc"

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2732
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    const-string v4, " is attached to a previous process"

    if-nez v0, :cond_d

    .line 2734
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2736
    :cond_d
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v14, v3

    move-object v3, v13

    goto :goto_5

    :cond_e
    if-nez p8, :cond_11

    .line 2745
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_10

    if-eqz v3, :cond_f

    if-eq v3, v0, :cond_f

    .line 2751
    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2752
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    :cond_f
    move-object v3, v13

    .line 2756
    :goto_4
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is attached to a previous process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2756
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object v14, v0

    goto :goto_5

    :cond_11
    move-object v14, v13

    :goto_5
    if-nez v3, :cond_14

    .line 2762
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, p0

    move-object/from16 v8, p5

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move-object/from16 v7, p12

    .line 2763
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-nez v4, :cond_12

    .line 2766
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed making new process record for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isolated="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 2770
    :cond_12
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v3, p16

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    move-object/from16 v2, p14

    .line 2771
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    move-object/from16 v2, p15

    .line 2772
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    if-eqz v14, :cond_13

    .line 2774
    iput-object v14, v4, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2775
    iput-object v4, v14, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2777
    :cond_13
    const-string/jumbo v2, "startProcess: done creating new process record"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v3, v4

    goto :goto_6

    .line 2780
    :cond_14
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2781
    const-string/jumbo v2, "startProcess: added package to existing proc"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2786
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2787
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_17

    if-nez p7, :cond_17

    .line 2789
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2790
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    :cond_15
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System not ready, putting on hold: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_16
    const-string/jumbo v1, "startProcess: returning with proc on hold"

    invoke-virtual {p0, v9, v10, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v3

    .line 2798
    :cond_17
    const-string/jumbo v1, "startProcess: stepping in to startProcess"

    invoke-virtual {p0, v9, v10, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v8, p5

    move/from16 v1, p6

    move-object/from16 v2, p13

    .line 2800
    invoke-virtual {p0, v3, v8, v1, v2}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v1

    .line 2801
    const-string/jumbo v2, "startProcess: done starting proc!"

    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz v1, :cond_18

    return-object v3

    :cond_18
    return-object v13
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2648
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    return-void
.end method

.method public startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 15

    move-object/from16 v1, p3

    const/4 v13, 0x1

    .line 2155
    invoke-virtual {v1, v13}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    const/4 v9, 0x0

    .line 2156
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2157
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 2158
    :try_start_0
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    .line 2159
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    .line 2160
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2161
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2162
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with non-zero startSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2162
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2166
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with non-zero pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2166
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 2169
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2170
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_2

    .line 2172
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/compat/PlatformCompat;->getLoggableChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setLoggableCompatChanges([J)V

    .line 2175
    :cond_2
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v4, 0x1

    add-long v11, v2, v4

    iput-wide v11, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 2176
    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    move-object/from16 v3, p1

    move/from16 v2, p4

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    .line 2177
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V

    if-nez p12, :cond_4

    .line 2178
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2179
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v9

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v13

    .line 2178
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2180
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2182
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_6

    .line 2183
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting procStart msg for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2183
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v13

    .line 2191
    :cond_6
    :try_start_1
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2195
    iget v1, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, p3

    move/from16 p7, v0

    move/from16 p6, v1

    move/from16 p10, v2

    move-wide/from16 p8, v11

    :try_start_2
    invoke-virtual/range {p4 .. p10}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v1, p5

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v1, p5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p3

    .line 2198
    :goto_2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure starting process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2200
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2201
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v4, "start failure"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p4, p0

    move-object/from16 p5, v0

    move/from16 p6, v2

    move/from16 p13, v3

    move-object/from16 p14, v4

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v10

    move/from16 p12, v11

    invoke-virtual/range {p4 .. p14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 2204
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    move v13, v9

    :goto_4
    return v13

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2160
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 2654
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 1849
    const-string v1, "ActivityManager"

    const-string v0, "1"

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    .line 1852
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1854
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/4 v8, 0x0

    if-lez v3, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v9, :cond_1

    .line 1855
    const-string/jumbo v3, "startProcess: removing from pids map"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1856
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    invoke-virtual {v3, v9, v5}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)Z

    .line 1857
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 1858
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v9, 0x14

    invoke-virtual {v3, v9, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove START_TIMEOUT restart    ProcessRecord :"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "START_DEBUG"

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const-string/jumbo v3, "startProcess: done removing from pids map"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1861
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v9, 0x0

    .line 1862
    invoke-virtual {v5, v9, v10}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 1865
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1866
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 1868
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startProcessLocked removing on hold: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1873
    const-string/jumbo v3, "startProcess: starting to update cpu stats"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1874
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1875
    const-string/jumbo v3, "startProcess: done updating cpu stats"

    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1878
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lcom/mediatek/server/am/AmsExt;->onStartProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    :try_start_0
    iget v3, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1884
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1889
    :try_start_2
    iget v9, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1893
    iget-boolean v10, v5, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v10, :cond_8

    .line 1896
    :try_start_3
    const-string/jumbo v10, "startProcess: getting gids from package manager"

    invoke-virtual {v2, v6, v7, v10}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1897
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 1898
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/32 v14, 0x10000000

    invoke-interface {v10, v12, v14, v15, v13}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v12

    .line 1900
    const-class v13, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManagerInternal;

    .line 1902
    iget-object v14, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v14

    .line 1904
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9, v15}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v13

    .line 1906
    iget-object v15, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->isAppFreezerExemptInstPkg()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "android.permission.INSTALL_PACKAGES"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v16, v8

    :try_start_4
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1907
    invoke-interface {v10, v15, v8, v3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move/from16 v19, v16

    goto/16 :goto_10

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move/from16 v16, v8

    goto :goto_0

    :catch_3
    move-exception v0

    move/from16 v16, v8

    goto :goto_4

    :cond_3
    move/from16 v16, v8

    :goto_1
    const-string v3, "android.process.acore"

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1910
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1911
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is exempt from freezer"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1921
    :cond_5
    :try_start_5
    iget-object v3, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v3, :cond_7

    iget-object v3, v3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v3, :cond_7

    .line 1922
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_2
    if-ltz v3, :cond_7

    .line 1923
    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v10, v10, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 1924
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget v15, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1923
    invoke-virtual {v8, v10, v15}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1926
    array-length v10, v8

    move/from16 v15, v16

    :goto_3
    if-ge v15, v10, :cond_6

    aget v11, v8, v15

    .line 1927
    invoke-static {v12, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1933
    :cond_7
    invoke-virtual {v2, v14, v9, v12, v13}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v3

    move v10, v14

    goto :goto_5

    .line 1915
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    move/from16 v16, v8

    move/from16 v10, v16

    const/4 v3, 0x0

    .line 1935
    :goto_5
    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    .line 1936
    const-string/jumbo v8, "startProcess: building args"

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1937
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->isFactoryTestProcess()Z

    move-result v8

    if-eqz v8, :cond_9

    move/from16 v9, v16

    .line 1942
    :cond_9
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    move v8, v4

    goto :goto_6

    :cond_a
    move/from16 v8, v16

    .line 1943
    :goto_6
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v11

    .line 1944
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v12

    .line 1946
    iget-boolean v13, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v13, :cond_c

    .line 1947
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 1949
    iget v14, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_b

    move v14, v4

    goto :goto_7

    :cond_b
    move/from16 v14, v16

    :goto_7
    or-int/2addr v8, v14

    .line 1950
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v14

    or-int/2addr v11, v14

    .line 1951
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v13

    or-int/2addr v12, v13

    :cond_c
    if-eqz v8, :cond_e

    .line 1964
    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "art_verifier_verify_debuggable"

    invoke-static {v13, v14, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_d

    .line 1967
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_PROCESSES:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": ART verification disabled"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x2000303

    goto :goto_8

    :cond_d
    const v4, 0x2000103

    goto :goto_8

    :cond_e
    move/from16 v4, v16

    .line 1972
    :goto_8
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x4000

    if-nez v13, :cond_f

    iget-object v13, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v13, :cond_10

    :cond_f
    or-int/lit8 v4, v4, 0x8

    :cond_10
    if-eqz v11, :cond_11

    const v11, 0x8000

    or-int/2addr v4, v11

    :cond_11
    if-eqz v12, :cond_12

    const/high16 v11, 0x1000000

    or-int/2addr v4, v11

    .line 1981
    :cond_12
    const-string v11, "debug.checkjni"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    or-int/lit8 v4, v4, 0x2

    .line 1984
    :cond_13
    const-string v11, "debug.generate-debug-info"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1985
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    const-string/jumbo v13, "true"

    if-nez v12, :cond_14

    :try_start_6
    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_14
    or-int/lit8 v4, v4, 0x20

    .line 1988
    :cond_15
    const-string v11, "dalvik.vm.minidebuginfo"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1989
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_16
    or-int/lit16 v4, v4, 0x800

    .line 1992
    :cond_17
    const-string v11, "debug.jni.logging"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    or-int/lit8 v4, v4, 0x10

    .line 1995
    :cond_18
    const-string v11, "debug.assert"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    or-int/lit8 v4, v4, 0x4

    .line 1998
    :cond_19
    const-string v11, "debug.ignoreappsignalhandler"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x20000

    or-int/2addr v4, v0

    .line 2001
    :cond_1a
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2002
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    or-int/lit16 v4, v4, 0xe0

    .line 2007
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    const/4 v11, 0x0

    .line 2010
    :goto_9
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_1d

    iget-boolean v0, v0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v0, :cond_1d

    :cond_1c
    or-int/lit16 v4, v4, 0x400

    :cond_1d
    if-nez p4, :cond_1f

    .line 2015
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2016
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2017
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v12

    .line 2016
    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2018
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2019
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 2020
    sget v12, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v12, v0, v12

    and-int/lit16 v13, v12, 0x3000

    if-ne v13, v12, :cond_1e

    or-int/2addr v4, v12

    if-eqz p5, :cond_1f

    const/high16 v0, 0x40000

    or-int/2addr v4, v0

    goto :goto_a

    .line 2022
    :cond_1e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid API policy: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2031
    :cond_1f
    :goto_a
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v12, ""

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2034
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "false"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/high16 v0, 0x10000

    or-int/2addr v4, v0

    .line 2039
    :cond_20
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v12

    const-wide/16 v14, 0x4000

    cmp-long v0, v12, v14

    if-nez v0, :cond_21

    .line 2040
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2042
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2043
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/high16 v0, 0x4000000

    or-int/2addr v4, v0

    :cond_21
    if-eqz v8, :cond_23

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/wrap.sh"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2052
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2054
    :try_start_7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_22

    .line 2055
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/system/bin/logwrapper "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_22
    move-object v0, v11

    .line 2058
    :goto_b
    :try_start_8
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v14, v0

    goto :goto_d

    :goto_c
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2059
    throw v0

    :cond_23
    move-object v14, v11

    :goto_d
    if-eqz p6, :cond_24

    move-object/from16 v0, p6

    goto :goto_e

    .line 2062
    :cond_24
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    :goto_e
    if-nez v0, :cond_25

    .line 2064
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v16

    :cond_25
    move-object v12, v0

    .line 2068
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 2071
    invoke-static {v12}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_26
    move-object v13, v11

    .line 2074
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 2075
    invoke-virtual {v5, v12}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {v5, v13}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V

    .line 2083
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2084
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2086
    iput v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_f

    .line 2088
    :cond_27
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2091
    :goto_f
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v11, v2, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v0, v8, v13, v11}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    or-int v8, v4, v0

    .line 2095
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2096
    const-string v0, "SELinux tag not defined"

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELinux tag not defined for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (uid "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2101
    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v11

    .line 2107
    const-string v4, "android.app.ActivityThread"
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    move/from16 v19, v16

    move-wide v15, v6

    move v6, v9

    move/from16 v9, p3

    move-object v7, v3

    move-object/from16 v3, p2

    :try_start_9
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v19, v8

    goto :goto_10

    :catch_6
    move-exception v0

    move/from16 v19, v8

    .line 1886
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    .line 2111
    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure starting process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2119
    iget-object v4, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    iget v13, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v14, "start failure"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    return v19
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1

    .line 5016
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 5017
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5018
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateAllTimePrefsLOSP(I)V
    .locals 4

    .line 3606
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3607
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3608
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3611
    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3613
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update preferences for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .locals 10

    .line 5231
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 5232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5233
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 5234
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    const-wide/16 v6, 0x400

    const/16 v8, 0x3e8

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5237
    invoke-virtual {v3, v5, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move p2, v9

    goto :goto_0

    :cond_1
    move v9, p2

    .line 5240
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, v9, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityApplicationInfo(ILandroid/util/ArrayMap;)V

    .line 5243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5244
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    .line 5245
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 5246
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object v2, p1

    move v1, p3

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    .line 5250
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v0, v9, :cond_3

    goto :goto_2

    .line 5254
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    move-object v2, p1

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(ZLjava/util/List;Landroid/util/ArrayMap;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_3
    add-int/lit8 p2, p2, -0x1

    move p3, v1

    move-object p1, v2

    goto :goto_1

    :cond_4
    move v1, p3

    .line 5276
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    return-void
.end method

.method public updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V
    .locals 6

    .line 5587
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5590
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5612
    iget-object p0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    :cond_0
    return-void
.end method

.method public final updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 3757
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3758
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_22

    .line 3759
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_c

    .line 3765
    :cond_0
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3766
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v4

    .line 3767
    const-string v6, " @ "

    const-string v8, " group="

    if-lez v4, :cond_b

    .line 3768
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    move/from16 v9, p4

    move v10, v3

    move v3, v9

    :goto_0
    if-lt v3, v2, :cond_a

    .line 3770
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3771
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3772
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    .line 3773
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v12

    .line 3774
    iget-object v14, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v14, v1, :cond_8

    if-ne v13, v4, :cond_8

    if-ne v3, v9, :cond_2

    if-lt v12, v10, :cond_2

    .line 3780
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keeping in-place above "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " endImportance="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " importance="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v9, v9, -0x1

    move/from16 v16, v4

    :goto_1
    move v10, v12

    goto/16 :goto_5

    .line 3790
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pulling up "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to position in group with importance="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move/from16 v5, p2

    .line 3795
    :goto_2
    const-string v13, " from position "

    const-string v14, "Moving "

    if-le v5, v9, :cond_6

    .line 3796
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 3797
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3798
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v7

    if-gt v12, v7, :cond_5

    .line 3799
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3800
    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3801
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    move/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p4, v9

    const-string v9, " to above "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move/from16 v16, v4

    move/from16 p4, v9

    :goto_3
    add-int/lit8 v9, p4, -0x1

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move/from16 v16, v4

    move/from16 p4, v9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_6
    move/from16 v16, v4

    move/from16 p4, v9

    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_9

    .line 3812
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3813
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3814
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to end of group @ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v16, v4

    move/from16 p4, v9

    move/from16 v9, p4

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_a
    move/from16 p4, v9

    :cond_b
    move/from16 v3, p4

    move v4, v3

    :goto_6
    if-lt v3, v2, :cond_22

    .line 3830
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3831
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3832
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v9

    .line 3833
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking to spread old procs, at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_c
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v1, :cond_21

    if-ge v3, v4, :cond_1b

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3843
    :goto_7
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v13, v1, :cond_1b

    .line 3844
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3845
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3846
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Different app, moving to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v3, v3, -0x1

    if-ge v3, v2, :cond_e

    goto/16 :goto_b

    .line 3852
    :cond_e
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3853
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_f

    sget-object v13, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Looking at next app at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_f
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v13

    if-nez v13, :cond_18

    .line 3856
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v13

    if-eqz v13, :cond_10

    goto/16 :goto_9

    .line 3866
    :cond_10
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3867
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_11

    sget-object v13, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    const-string v14, "This is a client of an activity"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v10, :cond_15

    if-eqz v11, :cond_14

    .line 3870
    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v13, :cond_12

    goto :goto_8

    :cond_12
    if-eqz v12, :cond_13

    if-eq v12, v9, :cond_1a

    .line 3880
    :cond_13
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already found a different group: connGroup="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 3873
    :cond_14
    :goto_8
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Already found a different activity: connUid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " uid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3886
    :cond_15
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_16

    sget-object v10, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "This is an activity client!  uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    :cond_16
    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v9

    :cond_17
    const/4 v10, 0x1

    goto :goto_a

    .line 3857
    :cond_18
    :goto_9
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_19

    sget-object v13, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    const-string v14, "This is hosting an activity!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-eqz v10, :cond_17

    .line 3861
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    const-string v5, "Already found an activity, done"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1a
    :goto_a
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    :cond_1b
    :goto_b
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_1c

    .line 3902
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3903
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v1, :cond_1b

    .line 3904
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found next group of app: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-lt v4, v2, :cond_1f

    .line 3911
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3912
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3913
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v3

    :cond_1d
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_1f

    .line 3915
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 3916
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v7

    .line 3917
    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v1, :cond_1e

    if-eq v7, v3, :cond_1d

    .line 3919
    :cond_1e
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found next group or app: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :cond_1f
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bumping scan position to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move v3, v4

    goto/16 :goto_6

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_6

    :cond_22
    :goto_c
    return-void
.end method

.method public updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .locals 2

    .line 3557
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3558
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3559
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3562
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .locals 11

    .line 3962
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 3963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3964
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3965
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    if-eqz p3, :cond_0

    .line 3970
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3971
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 3972
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not moving, already top activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3976
    :cond_0
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v1

    .line 3977
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 3978
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not moving, already top other: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3983
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3985
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz v2, :cond_3

    .line 3988
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not moving, persistent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-ltz v2, :cond_6

    .line 4027
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v1

    .line 4028
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4030
    :cond_4
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v2, v3, :cond_5

    sub-int/2addr v3, v1

    .line 4031
    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4041
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    const/4 v9, 0x0

    if-eqz p3, :cond_d

    .line 4057
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 4058
    iget p3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4059
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result p4

    if-nez p4, :cond_b

    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr p2, v1

    if-ge p4, p2, :cond_b

    .line 4063
    sget-boolean p4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p4, :cond_7

    sget-object p4, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding to second-top of LRU activity list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " group="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " importance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4063
    invoke-static {p4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :cond_7
    :goto_0
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le p2, p4, :cond_9

    .line 4069
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    .line 4070
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p4, v2, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 4078
    :cond_9
    :goto_1
    iget-object p4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p4, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p4, p2, -0x1

    .line 4082
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge p4, v2, :cond_a

    move p4, v2

    .line 4086
    :cond_a
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto/16 :goto_4

    .line 4089
    :cond_b
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p2, :cond_c

    sget-object p2, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to top of LRU activity list: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_c
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4091
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p4, p2, -0x1

    goto/16 :goto_4

    :cond_d
    const/4 p3, -0x1

    if-eqz p4, :cond_10

    .line 4095
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p2, :cond_e

    sget-object p2, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to top of LRU service list: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_e
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4097
    iget p2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4098
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr p4, v1

    iput p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_f
    :goto_2
    move p4, p3

    move p3, p2

    goto/16 :goto_4

    .line 4101
    :cond_10
    iget p4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-eqz p2, :cond_13

    .line 4105
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4106
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v6, :cond_11

    if-gez v3, :cond_11

    sget-object v6, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " when updating "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-gt v3, v2, :cond_12

    goto :goto_3

    :cond_12
    move v2, v3

    :goto_3
    if-ltz v2, :cond_13

    if-le p4, v2, :cond_13

    move p4, v2

    .line 4117
    :cond_13
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz p2, :cond_14

    sget-object p2, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_14
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p4, -0x1

    .line 4120
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4121
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-le p4, v1, :cond_f

    .line 4123
    invoke-virtual {p0, p1, v2, v9, p2}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto :goto_2

    .line 4127
    :goto_4
    iget p2, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 4135
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4136
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p2, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 4140
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v2

    sub-int/2addr v2, v1

    move v10, v2

    :goto_5
    if-ltz v10, :cond_17

    .line 4141
    invoke-virtual {v0, v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    .line 4142
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_15

    iget-boolean v3, v7, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v3, :cond_15

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_15

    .line 4144
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v2, v3, :cond_15

    const-wide v2, 0x440000130L

    .line 4145
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(J)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4146
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_15

    .line 4147
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_16

    if-ltz p4, :cond_15

    .line 4149
    iget-object v2, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "service connection"

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    invoke-virtual {p2, p0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_6

    :cond_15
    move-object v2, p0

    move-object v8, p1

    goto :goto_6

    :cond_16
    move-object v2, p0

    move-object v8, p1

    .line 4153
    iget-object p0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "service connection"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    invoke-virtual {p2, p0, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :goto_6
    add-int/lit8 v10, v10, -0x1

    move-object p0, v2

    move-object p1, v8

    goto :goto_5

    :cond_17
    move-object v2, p0

    move-object v8, p1

    .line 4158
    iget-object p0, v8, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 4159
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_7
    if-ltz p1, :cond_19

    .line 4160
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 4161
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v2, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_18

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4162
    iget-object v3, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "provider reference"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->offerLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    invoke-virtual {p2, v0, v9}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_18
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 4166
    :cond_19
    invoke-virtual {v2, p2, p4, p3}, Lcom/android/server/am/ProcessList;->completeLruProcessInternalLSP(Landroid/util/SparseBooleanArray;II)V

    return-void
.end method

.method public updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 3937
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3938
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3939
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    .line 3949
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_2
    return-void

    .line 3954
    :cond_3
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p2

    .line 3955
    :try_start_0
    invoke-virtual {p0, p1, p3, v0, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3956
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final updateOomLevels(IIZ)V
    .locals 10

    .line 1051
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    mul-int/2addr p1, p2

    int-to-float p2, p1

    const v1, 0x5dc00

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const v1, 0x9c400

    int-to-float v1, v1

    div-float/2addr p2, v1

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const/4 p2, 0x0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    :goto_1
    move v0, p2

    goto :goto_2

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    goto :goto_1

    .line 1066
    :cond_2
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10e00c5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1068
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1074
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    move v5, v3

    .line 1076
    :goto_4
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v5, v6, :cond_6

    .line 1077
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v6, v6, v5

    .line 1078
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v8, v8, v5

    if-eqz v2, :cond_5

    if-ne v5, v7, :cond_4

    mul-int/lit8 v8, v8, 0x3

    .line 1081
    div-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_4
    const/4 v9, 0x5

    if-ne v5, v9, :cond_5

    mul-int/lit8 v8, v8, 0x7

    .line 1082
    div-int/2addr v8, v7

    .line 1084
    :cond_5
    :goto_5
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v9, v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    mul-float/2addr v6, v0

    add-float/2addr v9, v6

    float-to-int v6, v9

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-ltz v1, :cond_7

    move v0, v3

    .line 1088
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 1089
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v6, v1

    aget v8, v5, v0

    int-to-float v8, v8

    mul-float/2addr v6, v8

    array-length v2, v2

    sub-int/2addr v2, v4

    aget v2, v5, v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    float-to-int v2, v6

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    if-eqz p2, :cond_9

    move v0, v3

    .line 1095
    :goto_7
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 1096
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v5, v2, v0

    int-to-float v6, p2

    int-to-float v8, v5

    mul-float/2addr v6, v8

    array-length v1, v1

    sub-int/2addr v1, v4

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v6, v1

    float-to-int v1, v6

    add-int/2addr v5, v1

    aput v5, v2, v0

    if-gez v5, :cond_8

    .line 1099
    aput v3, v2, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    const/16 p2, 0x3e7

    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v5, 0x400

    div-long/2addr v0, v5

    const-wide/16 v5, 0x3

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int/lit8 p1, p1, 0xc

    .line 1111
    div-int/lit16 p1, p1, 0x400

    .line 1112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e009d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 1114
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ltz v0, :cond_a

    move p1, v0

    :cond_a
    if-eqz p2, :cond_b

    add-int/2addr p1, p2

    if-gez p1, :cond_b

    move p1, v3

    :cond_b
    if-eqz p3, :cond_d

    .line 1129
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    mul-int/2addr p2, v7

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1130
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1131
    :goto_8
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p3, p3

    if-ge v3, p3, :cond_c

    .line 1132
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p3, p3, v3

    mul-int/lit16 p3, p3, 0x400

    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1133
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    const/4 p3, 0x0

    .line 1136
    invoke-static {p2, p3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1137
    const-string/jumbo p2, "sys.sysctl.extra_free_kbytes"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iput-boolean v4, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    :cond_d
    return-void
.end method

.method public updateSeInfo(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 3

    .line 2131
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2132
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    const-string p0, ":isSdkSandboxNext"

    goto :goto_0

    .line 2134
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2135
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getProcessListSettingsListener()Lcom/android/server/am/ProcessList$ProcessListSettingsListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->applySdkSandboxRestrictionsAudit()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2136
    const-string p0, ":isSdkSandboxAudit"

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 2141
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxInputSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2144
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 12

    .line 4613
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    move v7, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4615
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4616
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    .line 4617
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    .line 4618
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    .line 4621
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4622
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const-wide v10, 0x20b00000001L

    .line 4621
    invoke-virtual {v8, p1, v10, v11, v9}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4624
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4630
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_5

    .line 4631
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_4

    .line 4632
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    .line 4635
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4636
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-wide v5, 0x20b00000002L

    .line 4635
    invoke-virtual {v3, p1, v5, v6, v4}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4640
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v3

    .line 4641
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v4, 0x20b00000004L

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    move v8, v3

    .line 4644
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_6

    const-wide v1, 0x10b00000006L

    .line 4645
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 4646
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    const-wide v2, 0x10500000001L

    .line 4647
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4648
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v2, v1, v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4650
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v1, v2

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4652
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const-wide v1, 0x20b00000004L

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4655
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4658
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, v8, v7}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    return-void
.end method
