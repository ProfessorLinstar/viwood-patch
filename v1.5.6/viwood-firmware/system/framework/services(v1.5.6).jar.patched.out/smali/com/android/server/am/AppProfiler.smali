.class public Lcom/android/server/am/AppProfiler;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# static fields
.field public static final TAG_OOM_ADJ:Ljava/lang/String;

.field public static final TAG_PSS:Ljava/lang/String;

.field public static final TAG_RSS:Ljava/lang/String;


# instance fields
.field public final mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mAllowLowerMemLevel:Z

.field public mAppAgentMap:Ljava/util/Map;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public mFullPssOrRssPending:Z

.field public mHasHomeProcess:Z

.field public mHasPreviousProcess:Z

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastFullPssTime:J

.field public mLastMemUsageReportTime:J

.field public mLastMemoryLevel:I

.field public mLastNumProcesses:I

.field public volatile mLastWriteTime:J

.field public final mLowMemDetector:Lcom/android/server/am/LowMemDetector;

.field public mLowRamStartTime:J

.field public mLowRamTimeSinceLastIdle:J

.field public mMemFactorOverride:I

.field public mMemWatchDumpPid:I

.field public mMemWatchDumpProcName:Ljava/lang/String;

.field public mMemWatchDumpUid:I

.field public mMemWatchDumpUri:Landroid/net/Uri;

.field public mMemWatchIsUserInitiated:Z

.field public final mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mPendingPssOrRssProfiles:Ljava/util/ArrayList;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mProcessCpuThread:Ljava/lang/Thread;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessesToGc:Ljava/util/ArrayList;

.field public final mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

.field public mProfileType:I

.field public final mProfilerLock:Ljava/lang/Object;

.field public volatile mPssDeferralTime:J

.field public final mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mTestPssOrRssMode:Z


# direct methods
.method public static synthetic $r8$lambda$5OBAsIN8AUD6oXr1UL23SzYui-A(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    .line 1675
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Mu4Mmv7nLKTnNFWY9SGxNTlQQHE(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    .line 775
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$O0KXijwG7-p0M_PB8ZuTBcOSGho(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1436
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1437
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasProcStateChanged()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1438
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1444
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1445
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x14

    .line 1451
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 1453
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$Z9mDQXO9b6I541heYJg3Dye-gv4(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aB4rfrc1k-58zrhIodLdNJI2deY(Lcom/android/server/am/AppProfiler;ZZJLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWbwHOlSw54MLlfLuHPQWGs2h6Y(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    .line 641
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$hjeAJXDhcV6uScFkM6n_Owtv5tE(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    .line 2289
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuTime(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWriteTime(Lcom/android/server/am/AppProfiler;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuInitLatch(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuMutexFree(Lcom/android/server/am/AppProfiler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTracker(Lcom/android/server/am/AppProfiler;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPssDeferralTime(Lcom/android/server/am/AppProfiler;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPssDeferralTime(Lcom/android/server/am/AppProfiler;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mabortHeapDump(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->abortHeapDump(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->collectPssInBackground()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->collectRssInBackground()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssForActivityStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler;->handleMemoryPressureChangedLocked(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->stopDeferPss()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PSS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RSS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/AppProfiler;->TAG_OOM_ADJ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;Lcom/android/server/am/LowMemDetector;)V
    .locals 6

    .line 2374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 187
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    .line 198
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    .line 210
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 228
    iput-boolean v3, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    .line 235
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    const/4 v2, -0x1

    .line 238
    iput v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 251
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 257
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    .line 263
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 277
    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 280
    iput v3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 283
    new-instance v4, Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler-IA;)V

    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 286
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 317
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 319
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 320
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 321
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 323
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 334
    new-instance v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 350
    new-instance v0, Lcom/android/server/am/AppProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$1;-><init>(Lcom/android/server/am/AppProfiler;)V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2375
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2376
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 2377
    new-instance p1, Lcom/android/server/am/AppProfiler$BgHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$BgHandler;-><init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    .line 2378
    iput-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    .line 2379
    new-instance p1, Lcom/android/server/am/AppProfiler$ProcessCpuThread;

    const-string p2, "CpuTracker"

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/AppProfiler$ProcessCpuThread;-><init>(Lcom/android/server/am/AppProfiler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    return-void
.end method

.method public static makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.shell.heapdump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_javaheap.bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortHeapDump(Ljava/lang/String;)V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1177
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1178
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    .line 1595
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1596
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1597
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1599
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1604
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clearProfilerLPf()V
    .locals 2

    .line 2017
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2018
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2026
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    return-void
.end method

.method public final collectPssInBackground()V
    .locals 31

    move-object/from16 v0, p0

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 629
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 631
    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 632
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :cond_0
    move-object v2, v4

    .line 634
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v18, 0x0

    if-eqz v2, :cond_5

    .line 636
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 639
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 640
    :try_start_1
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v6, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v5

    .line 643
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 645
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_3

    .line 646
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    move v6, v3

    move-wide/from16 v7, v18

    :goto_1
    if-ge v6, v1, :cond_2

    .line 648
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v9

    .line 649
    :try_start_2
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v11, v11, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_1

    .line 651
    monitor-exit v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 653
    :cond_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 654
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long/2addr v7, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 653
    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v29, v7

    goto :goto_4

    :cond_3
    move-wide/from16 v29, v18

    .line 658
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 659
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 660
    :try_start_4
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_4

    .line 661
    sget-object v1, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected native and kernel memory in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v16

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 661
    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 664
    :cond_4
    :goto_5
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v21

    .line 665
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v23

    .line 666
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v25

    .line 667
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v27

    const-wide/16 v1, 0x400

    mul-long v6, v21, v1

    mul-long v8, v23, v1

    mul-long v10, v25, v1

    mul-long v12, v27, v1

    mul-long v14, v29, v1

    .line 668
    invoke-static/range {v6 .. v15}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 670
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v30}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 672
    monitor-exit v5

    goto :goto_7

    :goto_6
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 643
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_5
    :goto_7
    const/4 v1, 0x3

    .line 676
    new-array v1, v1, [J

    move v2, v3

    .line 683
    :goto_8
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 684
    :try_start_6
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_8

    .line 685
    iget-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_7

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_17

    .line 686
    :cond_6
    :goto_9
    sget-object v1, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collected pss of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 691
    monitor-exit v5

    return-void

    .line 693
    :cond_8
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessProfileRecord;

    move v7, v2

    .line 694
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v2

    .line 695
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v11

    .line 696
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v8

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 698
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v10

    const-wide/16 v14, 0x3e8

    if-eqz v10, :cond_9

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v10

    if-ne v2, v10, :cond_9

    add-long v20, v8, v14

    cmp-long v10, v20, v12

    if-gez v10, :cond_9

    .line 700
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v10

    move/from16 v20, v3

    goto :goto_b

    .line 702
    :cond_9
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 703
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v6, :cond_a

    .line 704
    sget-object v6, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    const-string v3, "Skipped pss collection of "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": still need "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v14, v8

    sub-long/2addr v14, v12

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms until safe"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    move/from16 v20, v3

    :goto_a
    move-object v6, v4

    move/from16 v10, v20

    .line 712
    :goto_b
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_16

    .line 714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 718
    iget-object v3, v6, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 720
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v6, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 721
    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v3, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v3, v20

    goto :goto_d

    :cond_d
    :goto_c
    move v3, v5

    :goto_d
    if-eqz v3, :cond_e

    move-wide/from16 v14, v18

    goto :goto_e

    .line 723
    :cond_e
    invoke-static {v10, v1, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    .line 724
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-object/from16 v23, v1

    .line 725
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    cmp-long v24, v14, v18

    if-eqz v24, :cond_10

    .line 726
    :try_start_7
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v24

    if-eqz v24, :cond_10

    .line 727
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v4

    if-ne v4, v2, :cond_f

    .line 728
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v4

    if-ne v4, v10, :cond_f

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v25

    cmp-long v4, v25, v8

    if-nez v4, :cond_f

    add-int/lit8 v25, v7, 0x1

    .line 730
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v4, v1

    move v3, v5

    move-object v1, v6

    .line 731
    :try_start_8
    aget-wide v5, v23, v20

    aget-wide v7, v23, v3

    const/4 v3, 0x2

    aget-wide v9, v23, v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    sub-long v12, v21, v12

    move-object/from16 v21, v4

    move-wide v3, v14

    .line 732
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v24, 0x0

    .line 731
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/am/AppProfiler;->recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V

    move/from16 v2, v25

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v21, v1

    goto/16 :goto_15

    :cond_f
    move-object/from16 v21, v1

    move-object v1, v6

    const/16 v24, 0x0

    goto :goto_f

    :cond_10
    move-object/from16 v21, v1

    move-object/from16 v24, v4

    move-object v1, v6

    .line 734
    :goto_f
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 735
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_15

    .line 736
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pss collection of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-nez v5, :cond_11

    const-string v5, "NO_THREAD "

    goto :goto_10

    :cond_11
    const-string v5, ""

    :goto_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_12

    .line 738
    const-string v3, "SKIP_PSS_COLLECTION "

    goto :goto_11

    :cond_12
    const-string v3, ""

    :goto_11
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v3

    if-eq v3, v10, :cond_13

    const-string v3, "PID_CHANGED "

    goto :goto_12

    :cond_13
    const-string v3, ""

    :goto_12
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " initState="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curState="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_14

    .line 743
    const-string v1, "TIME_CHANGED"

    goto :goto_13

    :cond_14
    const-string v1, ""

    :goto_13
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v2, v7

    .line 746
    :goto_14
    monitor-exit v21

    goto :goto_16

    :goto_15
    monitor-exit v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_16
    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move v2, v7

    :goto_16
    move-object/from16 v0, p0

    move/from16 v3, v20

    move-object/from16 v1, v23

    move-object/from16 v4, v24

    goto/16 :goto_8

    .line 712
    :goto_17
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 634
    :goto_18
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public final collectRssInBackground()V
    .locals 37

    move-object/from16 v0, p0

    .line 761
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 763
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    .line 765
    iput-boolean v12, v0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 766
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_0
    move-object v2, v13

    .line 768
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 770
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 773
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 774
    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v4, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v3

    .line 777
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 781
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-nez v1, :cond_3

    .line 782
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v4, v12

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 784
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7

    .line 785
    :try_start_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_1

    .line 787
    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 789
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 790
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v7

    add-long/2addr v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 789
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move-wide/from16 v25, v5

    goto :goto_4

    :cond_3
    const-wide/16 v25, 0x0

    .line 794
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 795
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 798
    :try_start_4
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v1, :cond_4

    .line 799
    sget-object v1, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected native and kernel memory in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 802
    :cond_4
    :goto_5
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v17

    .line 803
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v19

    .line 804
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v21

    .line 805
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v23

    const-wide/16 v1, 0x400

    mul-long v27, v17, v1

    mul-long v29, v19, v1

    mul-long v31, v21, v1

    mul-long v33, v23, v1

    mul-long v35, v25, v1

    .line 808
    invoke-static/range {v27 .. v36}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 810
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v26}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 812
    monitor-exit v3

    goto :goto_7

    :goto_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 777
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_5
    :goto_7
    move v1, v12

    .line 824
    :goto_8
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    :try_start_6
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_8

    .line 826
    iget-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v3, :cond_7

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v4, v2

    goto/16 :goto_16

    .line 827
    :cond_6
    :goto_9
    sget-object v3, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Collected rss of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " processes in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_7
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 832
    monitor-exit v2

    return-void

    .line 834
    :cond_8
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v4, v2

    .line 835
    :try_start_7
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPssProcState()I

    move-result v2

    .line 836
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPssStatType()I

    move-result v5

    .line 837
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v6

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 839
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v16

    const-wide/16 v17, 0x3e8

    if-eqz v16, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v12

    if-ne v2, v12, :cond_9

    add-long v19, v6, v17

    cmp-long v12, v19, v8

    if-gez v12, :cond_9

    .line 841
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v8

    const-wide/16 v19, 0x0

    goto :goto_b

    :catchall_5
    move-exception v0

    goto/16 :goto_16

    .line 843
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 844
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v3, :cond_a

    .line 845
    sget-object v3, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v19, 0x0

    const-string v14, "Skipped rss collection of "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, -0x1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": still need "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v17, v6, v17

    sub-long v8, v17, v8

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms until safe"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    const-wide/16 v19, 0x0

    :goto_a
    move-object v3, v13

    const/4 v8, 0x0

    .line 853
    :goto_b
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v3, :cond_15

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 859
    iget-object v4, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v4, :cond_b

    .line 861
    invoke-virtual {v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->skipPSSCollectionBecauseFrozen()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 862
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    if-eqz v4, :cond_c

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_e

    move-wide/from16 v17, v19

    goto :goto_e

    .line 864
    :cond_e
    invoke-static {v8, v13}, Landroid/os/Debug;->getRss(I[J)J

    move-result-wide v17

    .line 865
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 866
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v12

    cmp-long v9, v17, v19

    if-eqz v9, :cond_f

    .line 867
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 868
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v9

    if-ne v9, v2, :cond_f

    .line 869
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v9

    if-ne v9, v8, :cond_f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v23

    cmp-long v9, v23, v6

    if-nez v9, :cond_f

    add-int/lit8 v23, v1, 0x1

    .line 871
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime()V

    sub-long v6, v21, v14

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v1, v3

    move-wide/from16 v3, v17

    .line 872
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AppProfiler;->recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V

    move/from16 v1, v23

    goto/16 :goto_13

    :catchall_6
    move-exception v0

    goto/16 :goto_14

    .line 875
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 876
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v0, :cond_14

    .line 877
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped rss collection of "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-nez v9, :cond_10

    const-string v9, "NO_THREAD "

    goto :goto_f

    :cond_10
    const-string v9, ""

    :goto_f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_11

    .line 879
    const-string v4, "SKIP_RSS_COLLECTION "

    goto :goto_10

    :cond_11
    const-string v4, ""

    :goto_10
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v4

    if-eq v4, v8, :cond_12

    const-string v4, "PID_CHANGED "

    goto :goto_11

    :cond_12
    const-string v4, ""

    :goto_11
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initState="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curState="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13

    .line 884
    const-string v2, "TIME_CHANGED"

    goto :goto_12

    :cond_13
    const-string v2, ""

    :goto_12
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_14
    :goto_13
    monitor-exit v12

    goto :goto_15

    :goto_14
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :cond_15
    :goto_15
    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_8

    .line 853
    :goto_16
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 768
    :goto_17
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final deferPssForActivityStart()V
    .locals 4

    .line 1236
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1237
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_0

    .line 1238
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    const-string v1, "Deferring PSS collection for activity start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->deferPssIfNeededLPf()V

    .line 1242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception p0

    .line 1242
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final deferPssIfNeededLPf()V
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final doLowMemReportIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->haveBackgroundProcessLOSP()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1614
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 1617
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-gez v1, :cond_0

    move v0, v7

    goto :goto_0

    .line 1620
    :cond_0
    iput-wide v5, p0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    .line 1623
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-eqz v0, :cond_2

    .line 1625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1626
    :goto_2
    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmLowMemory(I)V

    .line 1627
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V

    invoke-virtual {v8, v7, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    if-eqz v0, :cond_4

    .line 1656
    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1657
    iget-object p1, v2, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_3
    move-object v2, p0

    .line 1660
    :cond_4
    :goto_3
    iget-object p0, v2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1661
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1662
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpHeapFinished(Ljava/lang/String;I)V
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    if-eq p2, v1, :cond_0

    .line 1093
    const-string p1, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpHeapFinished: Calling pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match last pid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1097
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1102
    :cond_1
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump heap finished for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1107
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    .line 1108
    monitor-exit v0

    return-void

    .line 1098
    :cond_3
    :goto_0
    const-string p2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHeapFinished: Calling path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match last path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    monitor-exit v0

    return-void

    .line 1108
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpLastMemoryLevelLocked(Ljava/io/PrintWriter;)V
    .locals 1

    .line 2598
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2612
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 2613
    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2609
    :cond_0
    const-string p0, "critical)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2606
    :cond_1
    const-string/jumbo p0, "low)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2603
    :cond_2
    const-string/jumbo p0, "moderate)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2600
    :cond_3
    const-string/jumbo p0, "normal)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpMemWatchProcessesLPf(Ljava/io/PrintWriter;Z)Z
    .locals 9

    .line 2531
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2532
    const-string v0, "  Mem watch processes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 2534
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2535
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2536
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2537
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 2538
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    if-eqz p2, :cond_0

    .line 2540
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p2, 0x0

    .line 2543
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2544
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2545
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2546
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2547
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 2548
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 2549
    const-string v7, ", report to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2554
    :cond_3
    const-string v0, "  mMemWatchDumpProcName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    const-string v0, "  mMemWatchDumpUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2556
    const-string v0, "  mMemWatchDumpPid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2557
    const-string v0, "  mMemWatchDumpUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2558
    const-string v0, "  mMemWatchIsUserInitiated="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return p2
.end method

.method public dumpMemoryLevelsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 2620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowLowerMemLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMemoryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumProcesses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 8

    .line 2755
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2758
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    .line 2759
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_0

    .line 2760
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    .line 2764
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2766
    :cond_1
    const-string p2, "  Processes that are waiting to GC:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x1

    move v4, p2

    .line 2769
    :cond_2
    const-string v6, "    Process "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2770
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2771
    const-string v6, "      lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2772
    const-string v6, ", last gced="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 2774
    const-string v6, " ms ago, last lowMem="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2775
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 2776
    const-string v5, " ms ago"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public dumpProfileDataLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z
    .locals 1

    .line 2565
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2566
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2567
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2568
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2569
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 2571
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 p3, 0x0

    .line 2574
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileApp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileProc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2575
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2574
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileFile="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mProfileFd="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2578
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSamplingInterval="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2580
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->samplingInterval:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mAutoStopProfiler="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2582
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mStreamingOutput="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2584
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ProfilerInfo;->streamingOutput:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mClockType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2586
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->clockType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mProfilerOutputVersion="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2588
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mProfileType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return p3
.end method

.method public forAllCpuStats(Ljava/util/function/Consumer;)V
    .locals 4

    .line 2294
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2295
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2297
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2299
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .locals 3

    .line 2714
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    .line 2716
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    .line 2717
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    .line 2718
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_0
    if-gt p2, p3, :cond_1

    const/16 v2, 0xa

    .line 2722
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2724
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2729
    :cond_1
    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    .line 2718
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCpuDelayTimeForPid(I)J
    .locals 0

    .line 2284
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2289
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCpuTimeForPid(I)J
    .locals 0

    .line 2280
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLastMemoryLevelLocked()I
    .locals 2

    .line 1329
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1332
    :cond_0
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    return p0
.end method

.method public getLowRamTimeSinceIdleLPr(J)J
    .locals 6

    .line 1493
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    sub-long v4, p1, v2

    :cond_0
    add-long/2addr v0, v4

    return-wide v0
.end method

.method public getTestPssMode()Z
    .locals 0

    .line 1324
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    return p0
.end method

.method public handleAbortDumpHeap(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1185
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1186
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 1187
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1188
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1190
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final handleMemoryPressureChangedLocked(II)V
    .locals 6

    .line 1990
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const-string/jumbo v3, "mem-pressure-event"

    .line 1991
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v1, p1

    move v2, p2

    .line 1990
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V

    return-void
.end method

.method public handlePostDumpHeapNotification()V
    .locals 9

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1118
    :try_start_0
    iget v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1119
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1120
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_0

    .line 1122
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1125
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1126
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    move-object v3, v4

    .line 1131
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1133
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1134
    iput-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 1135
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1136
    iput v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    return-void

    .line 1142
    :cond_2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_3

    .line 1143
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing dump heap notification from "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.HEAP_DUMP_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    const-string v4, "com.android.shell"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1150
    const-string v4, "com.android.internal.extra.heap_dump.IS_USER_INITIATED"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const-string v4, "com.android.internal.extra.heap_dump.SIZE_BYTES"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1152
    const-string v4, "com.android.internal.extra.heap_dump.REPORT_PACKAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v3, "com.android.internal.extra.heap_dump.PROCESS_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1156
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1155
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 1137
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isLastMemoryLevelNormal()Z
    .locals 4

    .line 1337
    iget v0, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-gtz v0, :cond_0

    return v3

    :cond_0
    return v2

    .line 1340
    :cond_1
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-gtz p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isProfilingPss()Z
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$doLowMemReportIfNeededLocked$4(Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;JLcom/android/server/am/ProcessRecord;)V
    .locals 7

    if-eq p5, p1, :cond_3

    .line 1628
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 1631
    :cond_0
    iget-object p1, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p2, :cond_1

    .line 1633
    new-instance v0, Lcom/android/server/am/ProcessMemInfo;

    iget-object v1, p5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 1634
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 1635
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    :cond_1
    iget-object p2, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1638
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-gtz v0, :cond_3

    .line 1642
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1643
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p1

    const/16 v0, 0x190

    if-gt p1, v0, :cond_2

    const-wide/16 v2, 0x0

    .line 1644
    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1646
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    :goto_0
    const/4 p1, 0x1

    .line 1648
    invoke-virtual {p2, p1}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1649
    invoke-virtual {p2, p3, p4}, Lcom/android/server/am/ProcessProfileRecord;->setLastLowMemory(J)V

    .line 1650
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1651
    invoke-virtual {p0, p5}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1652
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final synthetic lambda$requestPssAllProcsLPr$2(ZZJLcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1290
    iget-object p5, p5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1291
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1292
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1295
    :cond_0
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    cmp-long p1, p3, v2

    if-gtz p1, :cond_2

    :cond_1
    const-wide/32 v2, 0x124f80

    add-long/2addr v0, v2

    cmp-long p1, p3, v0

    if-lez p1, :cond_4

    .line 1299
    :cond_2
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 1300
    :goto_0
    invoke-virtual {p5, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1302
    invoke-virtual {p5}, Lcom/android/server/am/ProcessProfileRecord;->getSetProcState()I

    move-result p1

    move-object p2, p5

    const/4 p5, 0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 1303
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onActivityLaunched()V
    .locals 4

    .line 2410
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2412
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .locals 2

    .line 2392
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2397
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2399
    const-string v0, "ActivityManager"

    const-string v1, "Interrupted wait during start"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2400
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2401
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 2522
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2526
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

.method public onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 2512
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2513
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2514
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2515
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2516
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    .line 2517
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1502
    :try_start_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setLastRequestedGc(J)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1507
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setReportLowMemory(Z)V

    .line 1508
    invoke-interface {p1}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    return-void

    .line 1510
    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->processInBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final performAppGcsIfAppropriateLocked()V
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canGcNowLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsLPf()V

    .line 1559
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1562
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    .line 1563
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final performAppGcsLPf()V
    .locals 5

    .line 1524
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1528
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1529
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 1530
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getCurRawAdj()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    .line 1531
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v1, v3

    .line 1533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 1536
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->performAppGcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void

    .line 1542
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1548
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->scheduleAppGcsLPf()V

    return-void
.end method

.method public printCurrentCpuState(Ljava/lang/StringBuilder;J)V
    .locals 2

    .line 2705
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 2707
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/16 v1, 0xa

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public profileControlLPf(Lcom/android/server/am/ProcessRecord;ZLandroid/app/ProfilerInfo;I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-nez p4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 2045
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V

    .line 2046
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2047
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    :goto_1
    move-object v7, p3

    move v9, p4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v7, p3

    goto/16 :goto_9

    :catch_0
    move-object v7, p3

    goto/16 :goto_8

    :cond_1
    move-object v8, v2

    goto :goto_1

    .line 2046
    :goto_2
    :try_start_2
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;Landroid/content/pm/ApplicationInfo;I)V

    .line 2048
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p3, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2049
    iput v9, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    if-eqz v3, :cond_2

    .line 2053
    iget-object p3, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2055
    :try_start_3
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object p0, v0

    goto/16 :goto_9

    :catch_1
    move-object p3, v2

    .line 2059
    :goto_4
    :try_start_4
    iput-object p3, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2062
    :cond_2
    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    invoke-interface {p3, p2, v7, v9}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_7

    .line 2067
    :try_start_5
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2070
    :catch_2
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p0

    iput-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2072
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    sget p1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p0, p1, :cond_7

    move-object p3, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v7, p3

    goto :goto_3

    :cond_3
    move-object v7, p3

    move v9, p4

    if-ne v9, v1, :cond_4

    move v0, v1

    :cond_4
    if-eqz v7, :cond_6

    .line 2082
    iget-object p2, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p2, :cond_6

    if-eqz v0, :cond_5

    .line 2086
    :try_start_7
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    :goto_5
    move-object v2, p2

    goto :goto_6

    .line 2088
    :cond_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 2093
    :catch_3
    :goto_6
    :try_start_8
    iput-object v2, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2095
    :cond_6
    invoke-virtual {p0, p1, v7, v9}, Lcom/android/server/am/AppProfiler;->stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    move-object p3, v7

    :goto_7
    if-eqz p3, :cond_8

    .line 2102
    iget-object p0, p3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_8

    .line 2104
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_8
    return v1

    .line 2100
    :catch_5
    :goto_8
    :try_start_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_9
    if-eqz v7, :cond_9

    .line 2102
    iget-object p1, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_9

    .line 2104
    :try_start_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 2108
    :catch_6
    :cond_9
    throw p0
.end method

.method public final recordPssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJJJJIJJ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p7

    .line 916
    iget-object v14, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 918
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v15

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v4, 0x400

    mul-long v18, p3, v4

    mul-long v20, p5, v4

    mul-long v22, v12, v4

    mul-long v24, p9, v4

    move/from16 v27, p2

    move/from16 v26, p11

    move-wide/from16 v28, p12

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 917
    invoke-static/range {v15 .. v29}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p14

    .line 920
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    const/4 v8, 0x1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    move/from16 v9, p11

    move-wide/from16 v10, p12

    .line 921
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 922
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v4, :cond_0

    .line 923
    sget-object v4, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pss of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " lastPss="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePssOrRss()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 929
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePssOrRss(J)V

    .line 931
    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPss(J)V

    .line 932
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastSwapPss(J)V

    const/16 v4, 0xe

    move/from16 v5, p2

    if-lt v5, v4, :cond_2

    .line 934
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedPss(J)V

    .line 935
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedSwapPss(J)V

    .line 937
    :cond_2
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    .line 939
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 940
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 943
    iget v4, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_3

    .line 945
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/util/Pair;

    :cond_3
    if-eqz v4, :cond_4

    .line 948
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 952
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-ltz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 954
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_6

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 958
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but debugging not enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 955
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_7
    return-void
.end method

.method public final recordRssSampleLPf(Lcom/android/server/am/ProcessProfileRecord;IJIJJ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 978
    iget-object v12, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 984
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v13

    iget v14, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v28, 0x400

    mul-long v22, p3, v28

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move/from16 v25, p2

    move/from16 v24, p5

    move-wide/from16 v26, p6

    .line 983
    invoke-static/range {v13 .. v27}, Lcom/android/server/am/EventLogTags;->writeAmPss(IILjava/lang/String;JJJJIIJ)V

    move-wide/from16 v2, p8

    .line 986
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessProfileRecord;->setLastPssTime(J)V

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    .line 988
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ProcessProfileRecord;->addPss(JJJZIJ)V

    .line 989
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RSS:Z

    if-eqz v2, :cond_0

    .line 990
    sget-object v2, Lcom/android/server/am/AppProfiler;->TAG_RSS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rss of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " lastRss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePssOrRss()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 996
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setInitialIdlePssOrRss(J)V

    .line 998
    :cond_1
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    const/16 v2, 0xe

    move/from16 v3, p2

    if-lt v3, v2, :cond_2

    .line 1000
    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/ProcessProfileRecord;->setLastCachedRss(J)V

    .line 1003
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    .line 1004
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 1007
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    if-nez v5, :cond_3

    .line 1009
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/util/Pair;

    :cond_3
    if-eqz v5, :cond_4

    .line 1012
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_4
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_7

    .line 1017
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v5

    invoke-static {v5, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v4

    mul-long v4, v4, v28

    .line 1018
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 1020
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v5, " exceeded pss limit "

    const-string v6, "Process "

    const-string v7, "ActivityManager"

    if-nez v4, :cond_6

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 1024
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but debugging not enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; reporting"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/AppProfiler;->startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V

    :cond_7
    return-void
.end method

.method public reportMemUsage(Ljava/util/ArrayList;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1666
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 1667
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 1668
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    .line 1669
    iget v7, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->updateCpuStatsNow()V

    const/4 v3, 0x4

    .line 1672
    new-array v5, v3, [J

    const/4 v6, 0x2

    .line 1673
    new-array v7, v6, [J

    .line 1675
    new-instance v8, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppProfiler;->getCpuStats(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v8

    .line 1676
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v17, v3

    move v12, v4

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_1
    if-ge v12, v9, :cond_2

    .line 1680
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    const-wide/16 v20, 0x0

    .line 1681
    iget v10, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10, v7, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v10

    cmp-long v18, v10, v20

    if-lez v18, :cond_1

    const/16 v18, 0x1

    .line 1683
    iget v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 1684
    new-instance v22, Lcom/android/server/am/ProcessMemInfo;

    iget-object v3, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string/jumbo v27, "native"

    const/16 v28, 0x0

    const/16 v25, -0x3e8

    const/16 v26, -0x1

    move-object/from16 v23, v3

    move/from16 v24, v6

    invoke-direct/range {v22 .. v28}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v22

    .line 1686
    iput-wide v10, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1687
    aget-wide v10, v7, v18

    iput-wide v10, v3, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1688
    aget-wide v10, v5, v4

    iput-wide v10, v3, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1689
    aget-wide v10, v5, v18

    add-long/2addr v13, v10

    .line 1690
    aget-wide v10, v5, v19

    add-long/2addr v15, v10

    .line 1691
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v6

    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    .line 1699
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    move-wide/from16 v8, v20

    move-wide v10, v8

    move-wide/from16 v22, v10

    :goto_2
    if-ge v3, v2, :cond_4

    .line 1700
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessMemInfo;

    move v12, v4

    move-object/from16 v24, v5

    .line 1701
    iget-wide v4, v6, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_3

    .line 1702
    iget v4, v6, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v5, v24

    move-wide/from16 v24, v13

    move v14, v12

    invoke-static {v4, v7, v5}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->pss:J

    .line 1703
    aget-wide v12, v7, v18

    iput-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    .line 1704
    aget-wide v12, v5, v14

    iput-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    .line 1705
    aget-wide v12, v5, v18

    add-long v12, v24, v12

    .line 1706
    aget-wide v24, v5, v19

    add-long v15, v15, v24

    move-wide/from16 v24, v12

    goto :goto_3

    :cond_3
    move-object/from16 v5, v24

    move-wide/from16 v24, v13

    move v14, v12

    .line 1708
    :goto_3
    iget-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long/2addr v8, v12

    .line 1709
    iget-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->swapPss:J

    add-long/2addr v10, v12

    .line 1710
    iget-wide v12, v6, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v22, v22, v12

    add-int/lit8 v3, v3, 0x1

    move v4, v14

    move-wide/from16 v13, v24

    goto :goto_2

    :cond_4
    move-wide/from16 v24, v13

    move v14, v4

    .line 1712
    new-instance v2, Lcom/android/server/am/AppProfiler$2;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppProfiler$2;-><init>(Lcom/android/server/am/AppProfiler;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1726
    const-string v3, "Low on memory -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    const-string/jumbo v3, "total"

    move v12, v14

    invoke-static {v2, v8, v9, v3, v12}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1728
    const-string/jumbo v3, "total"

    move/from16 v5, v18

    invoke-static {v4, v8, v9, v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1730
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1739
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/high16 v14, -0x80000000

    move v12, v14

    move-wide/from16 v28, v20

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    const/4 v14, 0x0

    const/16 v27, 0x1

    :goto_4
    if-ge v14, v13, :cond_14

    .line 1740
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/server/am/ProcessMemInfo;

    move-wide/from16 v36, v10

    .line 1742
    iget v10, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v11, 0x384

    if-lt v10, v11, :cond_5

    move v11, v14

    move-wide/from16 v38, v15

    .line 1743
    iget-wide v14, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v28, v28, v14

    move/from16 v16, v11

    :goto_5
    move-wide/from16 v14, v28

    goto :goto_6

    :cond_5
    move-wide/from16 v38, v15

    move/from16 v16, v14

    goto :goto_5

    :goto_6
    const/16 v11, -0x3e8

    if-eq v10, v11, :cond_6

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_7

    const/16 v11, 0x258

    if-eq v10, v11, :cond_7

    const/16 v11, 0x2bc

    if-ne v10, v11, :cond_6

    goto :goto_7

    :cond_6
    move-wide/from16 v40, v14

    goto/16 :goto_d

    :cond_7
    :goto_7
    if-eq v12, v10, :cond_b

    if-gtz v10, :cond_8

    .line 1753
    const-string v11, " / "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    :cond_8
    iget v11, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v11, :cond_a

    if-eqz v27, :cond_9

    .line 1757
    const-string v11, ":"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    goto :goto_8

    :cond_9
    move/from16 v12, v27

    .line 1760
    :goto_8
    const-string v11, "\n\t at "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v27, v12

    :goto_9
    move v12, v10

    goto :goto_a

    .line 1762
    :cond_a
    const-string v11, "$"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1765
    :cond_b
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string v10, "$"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    :goto_a
    iget v10, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v10, :cond_c

    .line 1769
    iget-wide v10, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-wide/from16 v40, v14

    iget-object v14, v5, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v2, v10, v11, v14, v15}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    goto :goto_b

    :cond_c
    move-wide/from16 v40, v14

    .line 1771
    :goto_b
    iget-wide v10, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v15, v5, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v4, v10, v11, v15, v14}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    .line 1772
    iget v10, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v10, :cond_10

    add-int/lit8 v14, v16, 0x1

    if-ge v14, v13, :cond_d

    .line 1773
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessMemInfo;

    iget v10, v10, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq v10, v12, :cond_10

    .line 1774
    :cond_d
    const-string v10, "("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    .line 1775
    :goto_c
    sget-object v11, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v14, v11

    if-ge v10, v14, :cond_f

    .line 1776
    aget v14, v11, v10

    iget v15, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v14, v15, :cond_e

    .line 1777
    sget-object v14, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v14, v14, v10

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    aget v11, v11, v10

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1782
    :cond_f
    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_d
    move/from16 v10, v27

    .line 1786
    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    .line 1787
    iget v11, v5, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v14, -0x3e8

    if-ne v11, v14, :cond_12

    .line 1789
    iget-wide v14, v5, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v26, 0x200

    cmp-long v11, v14, v26

    if-ltz v11, :cond_11

    .line 1790
    invoke-static {v6, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    goto :goto_f

    :cond_11
    add-long v30, v30, v14

    .line 1793
    iget-wide v14, v5, Lcom/android/server/am/ProcessMemInfo;->memtrack:J

    add-long v32, v32, v14

    goto :goto_f

    :cond_12
    cmp-long v11, v30, v20

    if-lez v11, :cond_13

    const/16 v28, -0x1

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    .line 1799
    const-string v33, "(Other native)"

    const/16 v27, -0x3e8

    move-object/from16 v26, v6

    invoke-static/range {v26 .. v33}, Lcom/android/server/am/ActivityManagerService;->appendBasicMemEntry(Ljava/lang/StringBuilder;IIJJLjava/lang/String;)V

    const/16 v11, 0xa

    .line 1801
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v29, v20

    goto :goto_e

    :cond_13
    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    .line 1804
    :goto_e
    invoke-static {v7, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemInfo(Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessMemInfo;)V

    move-wide/from16 v32, v31

    move-wide/from16 v30, v29

    :goto_f
    add-int/lit8 v14, v16, 0x1

    move/from16 v27, v10

    move-wide/from16 v10, v36

    move-wide/from16 v15, v38

    move-wide/from16 v28, v40

    goto/16 :goto_4

    :cond_14
    move-wide/from16 v36, v10

    move-wide/from16 v38, v15

    .line 1808
    const-string v1, "           "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-static {v7, v8, v9}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    .line 1810
    const-string v1, ": TOTAL"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v1, v22, v20

    if-lez v1, :cond_15

    .line 1812
    const-string v1, " ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-static/range {v22 .. v23}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    const-string v1, " memtrack)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    :cond_15
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1819
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1820
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v5

    .line 1822
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1823
    invoke-static {v5}, Landroid/os/Debug;->getMemInfo([J)V

    .line 1824
    const-string v11, "  MemInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    .line 1825
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " slab, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    aget-wide v11, v5, v17

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shmem, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xc

    .line 1827
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " vm alloc, "

    .line 1828
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xd

    .line 1829
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " page tables "

    .line 1830
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xe

    .line 1831
    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " kernel stack\n"

    .line 1832
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    const-string v11, "           "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    aget-wide v11, v5, v19

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " buffers, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    .line 1835
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " cached, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xb

    .line 1836
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mapped, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    .line 1837
    aget-wide v12, v5, v18

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " free\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v35, 0xa

    .line 1838
    aget-wide v12, v5, v35

    cmp-long v12, v12, v20

    if-eqz v12, :cond_16

    .line 1839
    const-string v12, "  ZRAM: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    aget-wide v12, v5, v35

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const-string v12, " RAM, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x8

    .line 1842
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    const-string v12, " swap total, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x9

    .line 1844
    aget-wide v12, v5, v12

    invoke-static {v12, v13}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    const-string v5, " swap free\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    :cond_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getKsmInfo()[J

    move-result-object v5

    const/16 v18, 0x1

    .line 1848
    aget-wide v12, v5, v18

    cmp-long v12, v12, v20

    if-nez v12, :cond_17

    const/4 v12, 0x0

    aget-wide v13, v5, v12

    cmp-long v13, v13, v20

    if-nez v13, :cond_17

    aget-wide v13, v5, v19

    cmp-long v13, v13, v20

    if-nez v13, :cond_17

    aget-wide v13, v5, v11

    cmp-long v13, v13, v20

    if-eqz v13, :cond_18

    .line 1850
    :cond_17
    const-string v13, "  KSM: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x1

    .line 1851
    aget-wide v13, v5, v18

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const-string v13, " saved from shared "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    .line 1853
    aget-wide v13, v5, v12

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    const-string v13, "\n       "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    aget-wide v13, v5, v19

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    const-string v13, " unshared; "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    aget-wide v13, v5, v11

    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    const-string v5, " volatile\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    :cond_18
    const-string v5, "  Free RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v13

    add-long v13, v28, v13

    .line 1862
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v15

    add-long/2addr v13, v15

    .line 1861
    invoke-static {v13, v14}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v13

    .line 1865
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v15

    .line 1866
    invoke-static {}, Landroid/os/Debug;->getIonPoolsSizeKb()J

    move-result-wide v17

    .line 1867
    invoke-static {}, Landroid/os/Debug;->getDmabufMappedSizeKb()J

    move-result-wide v22

    cmp-long v5, v15, v20

    if-ltz v5, :cond_19

    cmp-long v5, v17, v20

    if-ltz v5, :cond_19

    sub-long v26, v15, v22

    .line 1870
    const-string v5, "       ION: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v15, v15, v17

    .line 1871
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v13, v26

    sub-long v8, v8, v24

    add-long v8, v8, v22

    goto :goto_10

    .line 1880
    :cond_19
    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v15

    cmp-long v5, v15, v20

    if-ltz v5, :cond_1a

    sub-long v17, v15, v22

    .line 1883
    const-string v5, "DMA-BUF: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v13, v13, v17

    sub-long v8, v8, v24

    add-long v8, v8, v22

    .line 1894
    :cond_1a
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v15

    cmp-long v5, v15, v20

    if-ltz v5, :cond_1b

    .line 1896
    const-string v5, "DMA-BUF Heap: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    :cond_1b
    invoke-static {}, Landroid/os/Debug;->getDmabufHeapPoolsSizeKb()J

    move-result-wide v15

    cmp-long v5, v15, v20

    if-ltz v5, :cond_1c

    .line 1903
    const-string v5, "DMA-BUF Heaps pool: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    :cond_1c
    :goto_10
    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v15

    cmp-long v5, v15, v20

    if-ltz v5, :cond_1e

    .line 1911
    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v17

    cmp-long v5, v17, v20

    if-ltz v5, :cond_1d

    sub-long v19, v15, v17

    .line 1914
    const-string v5, "      GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    const-string v5, " ("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    const-string v5, " dmabuf + "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    const-string v5, " private)\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v8, v38

    add-long v13, v13, v17

    goto :goto_11

    .line 1926
    :cond_1d
    const-string v5, "       GPU: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    :cond_1e
    :goto_11
    const-string v5, "  Used RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v15, v8, v28

    add-long/2addr v15, v13

    .line 1933
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const-string v5, "  Lost RAM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v15

    sub-long v8, v8, v36

    sub-long/2addr v15, v8

    .line 1941
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v8

    sub-long/2addr v15, v8

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v8

    sub-long/2addr v15, v8

    sub-long/2addr v15, v13

    .line 1942
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    sub-long/2addr v15, v8

    .line 1940
    invoke-static/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    const-string v1, "ActivityManager"

    const-string v5, "Low on memory:"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const-string v1, "ActivityManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-string v1, "ActivityManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v1, "ActivityManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1950
    const-string v5, "Low on memory:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    .line 1952
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1953
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1954
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1956
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1958
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1959
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    .line 1960
    :try_start_0
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    const/16 v5, 0x100

    const/4 v12, 0x0

    invoke-direct {v15, v3, v12, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1961
    new-array v8, v12, [Ljava/lang/String;

    .line 1962
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1963
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1964
    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v8

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/am/ProcessList;->dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V

    .line 1965
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1966
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1967
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActiveServices;->newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-result-object v5

    .line 1968
    invoke-virtual {v5}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpLocked()V

    .line 1969
    invoke-virtual {v15}, Ljava/io/PrintWriter;->println()V

    .line 1970
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v14, "activities"

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object v7, v15

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v16

    move-object/from16 v16, v7

    invoke-virtual/range {v13 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V

    move-object/from16 v15, v16

    .line 1972
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    .line 1973
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1974
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x51

    .line 1975
    invoke-static {v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 1976
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "lowmem"

    const-string/jumbo v7, "system_server"

    .line 1977
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1976
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 1979
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1980
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1981
    iget-wide v4, v0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1f

    .line 1982
    iput-wide v2, v0, Lcom/android/server/am/AppProfiler;->mLastMemUsageReportTime:J

    goto :goto_12

    :catchall_0
    move-exception v0

    goto :goto_13

    .line 1984
    :cond_1f
    :goto_12
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_13
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_14

    :catchall_2
    move-exception v0

    .line 1965
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1973
    :goto_14
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public requestPssAllProcsLPr(JZZ)V
    .locals 9

    .line 1271
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p3, :cond_1

    .line 1273
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    if-eqz p4, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    :goto_0
    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 1276
    monitor-exit v1

    return-void

    .line 1279
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2

    .line 1280
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting pss of all procs!  memLowered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_2
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLastFullPssTime:J

    const/4 v0, 0x1

    .line 1283
    iput-boolean v0, p0, Lcom/android/server/am/AppProfiler;->mFullPssOrRssPending:Z

    .line 1284
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 1285
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1287
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1288
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1289
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-wide v7, p1

    move v6, p3

    move v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppProfiler;ZZJ)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 1306
    iget-object p0, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1307
    iget-object p0, v4, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1309
    :cond_4
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z
    .locals 7

    .line 1204
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1208
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    .line 1209
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    goto :goto_0

    :cond_1
    move-wide v3, v5

    .line 1210
    :goto_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 1211
    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPssLPf() deferring PSS request by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1216
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting pss of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->setPssProcState(I)V

    .line 1218
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->setPssStatType(I)V

    .line 1219
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public retrieveSettings()V
    .locals 5

    .line 2383
    const-string v0, "activity_start_pss_defer"

    const-wide/16 v1, 0x0

    const-string v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2386
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mPssDelayConfigListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 2385
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2388
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mPssDeferralTime:J

    return-void
.end method

.method public final scheduleAppGcsLPf()V
    .locals 10

    .line 1571
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1573
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1575
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1576
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1578
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v2, v4

    .line 1579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1580
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    add-long v8, v4, v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_0

    add-long v2, v4, v6

    .line 1583
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public setAgentAppLPf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_1

    .line 2137
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 2138
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2140
    iput-object p1, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    :cond_0
    return-void

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 2145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2147
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 2149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App agent map has too many entries, cannot add "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2153
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAllowLowerMemLevelLocked(Z)V
    .locals 0

    .line 1353
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    return-void
.end method

.method public setCpuInfoService()V
    .locals 3

    .line 2369
    new-instance v0, Lcom/android/server/am/AppProfiler$CpuBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppProfiler$CpuBinder;-><init>(Lcom/android/server/am/AppProfiler;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    const-string v2, "cpuinfo"

    invoke-static {v2, v0, p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 1163
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, p3, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1166
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_0

    .line 1168
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMemFactorOverrideLocked(I)V
    .locals 0

    .line 1358
    iput p1, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    .line 1359
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    return-void
.end method

.method public setProfileAppLPf(Ljava/lang/String;Landroid/app/ProfilerInfo;I)V
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileApp(Ljava/lang/String;)V

    .line 2115
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2116
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 2118
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p2, :cond_1

    .line 2124
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, p2}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    .line 2126
    :cond_1
    iput p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    return-void
.end method

.method public setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 2131
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public setTestPssMode(Z)V
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1314
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    if-eqz p1, :cond_0

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v2, p1, p1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1320
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setupProfilerInfoLocked(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)Landroid/app/ProfilerInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2421
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2422
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2423
    :try_start_0
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2424
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2425
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6, v2}, Lcom/android/server/am/AppProfiler$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 2426
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2429
    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2430
    invoke-virtual {v6}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 2432
    :cond_1
    :goto_0
    new-instance v6, Landroid/app/ProfilerInfo;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 2433
    :goto_1
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 2434
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    :cond_2
    move-object/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 2437
    iget-object v6, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2438
    new-instance v8, Landroid/app/ProfilerInfo;

    iget-object v9, v3, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v6, v7

    move-object v7, v8

    goto :goto_2

    :cond_4
    move-object v6, v7

    .line 2441
    :goto_2
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2444
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2445
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v7, :cond_5

    .line 2448
    new-instance v10, Landroid/app/ProfilerInfo;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    .line 2449
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v19}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;ZII)V

    move-object v7, v10

    goto :goto_3

    .line 2451
    :cond_5
    iget-object v8, v7, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 2452
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mAppAgentMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/app/ProfilerInfo;->setAgent(Ljava/lang/String;Z)Landroid/app/ProfilerInfo;

    move-result-object v7

    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 2457
    iget-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_7

    .line 2458
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 2459
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v8}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2460
    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2461
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 2464
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    if-nez v3, :cond_c

    .line 2471
    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    :goto_4
    if-ltz v3, :cond_c

    .line 2472
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v4

    if-nez v4, :cond_c

    .line 2473
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveInstrumentation;

    .line 2474
    iget-boolean v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v8, :cond_b

    .line 2475
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v5

    .line 2476
    :try_start_1
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v9, v8

    if-nez v9, :cond_8

    .line 2479
    iget-object v8, v4, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2480
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2482
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 2485
    :cond_8
    array-length v9, v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    .line 2486
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2487
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/am/ProcessStateController;->setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V

    .line 2489
    iget-object v4, v4, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2494
    :cond_a
    :goto_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8

    :goto_7
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_b
    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    .line 2502
    invoke-interface {v1, v6}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 2504
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2505
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    :cond_e
    return-object v7

    .line 2464
    :goto_9
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public startHeapDumpLPf(Lcom/android/server/am/ProcessProfileRecord;Z)V
    .locals 3

    .line 1073
    iget-object v0, p1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1074
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1075
    invoke-static {v1}, Lcom/android/server/am/AppProfiler;->makeHeapDumpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1076
    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    .line 1077
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    .line 1078
    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    .line 1081
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android"

    .line 1082
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    .line 1081
    invoke-virtual {p2, v1, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppProfiler$RecordPssRunnable;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 1087
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/server/am/AppProfiler$RecordPssRunnable;-><init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1084
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "android package not found."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopDeferPss()V
    .locals 4

    .line 1249
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1251
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_0

    .line 1252
    sget-object v1, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSS activity start deferral interval ended; now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez v0, :cond_2

    .line 1256
    const-string v0, "ActivityManager"

    const-string v1, "Activity start nesting undercount!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mActivityStartingNesting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    .line 1260
    :cond_1
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz p0, :cond_2

    .line 1261
    sget-object p0, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still deferring PSS, nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final stopProfilerLPf(Lcom/android/server/am/ProcessRecord;Landroid/app/ProfilerInfo;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1997
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1998
    iget p3, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    .line 1999
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 2004
    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2009
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2011
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Process disappeared"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateCpuStats()V
    .locals 6

    .line 2158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2159
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 2164
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mProcessCpuThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCpuStatsNow()V
    .locals 33

    move-object/from16 v0, p0

    .line 2170
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "settings_enable_monitor_phantom_procs"

    invoke-static {v1, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2172
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v4

    .line 2173
    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuMutexFree:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2177
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2178
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long v9, v5, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 2179
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2180
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 2181
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->hasGoodLastStats()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2188
    const-string/jumbo v7, "true"

    const-string v8, "events.cpu"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2189
    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    .line 2190
    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    .line 2191
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v9

    .line 2192
    iget-object v10, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v10

    .line 2193
    iget-object v11, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v11

    .line 2194
    iget-object v12, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int v13, v7, v8

    add-int/2addr v13, v9

    add-int/2addr v13, v10

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    if-nez v12, :cond_1

    move v12, v2

    :cond_1
    mul-int/lit8 v13, v13, 0x64

    .line 2199
    div-int v14, v13, v12

    mul-int/lit8 v7, v7, 0x64

    div-int v15, v7, v12

    mul-int/lit8 v8, v8, 0x64

    div-int v16, v8, v12

    mul-int/lit8 v9, v9, 0x64

    div-int v17, v9, v12

    mul-int/lit8 v10, v10, 0x64

    div-int v18, v10, v12

    mul-int/lit8 v11, v11, 0x64

    div-int v19, v11, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/EventLogTags;->writeCpu(IIIIII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_b

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 2211
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v7, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v7}, Lcom/android/server/am/PhantomProcessList;->updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V

    .line 2214
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v7

    .line 2215
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_c

    .line 2217
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->startAddingCpuStatsLocked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2220
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    .line 2221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2223
    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move v8, v3

    move v9, v8

    :goto_2
    if-ge v3, v1, :cond_b

    .line 2225
    :try_start_2
    iget-object v14, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v14, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v14

    .line 2226
    iget-boolean v15, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-nez v15, :cond_5

    move/from16 v16, v1

    move-object/from16 v31, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 2229
    :cond_5
    iget-object v15, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    move/from16 v16, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v15, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2230
    iget v15, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    add-int/2addr v15, v8

    .line 2231
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int v17, v9, v8

    if-eqz v1, :cond_8

    .line 2233
    :try_start_3
    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2234
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getCurProcBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v9, :cond_7

    .line 2235
    :try_start_4
    invoke-virtual {v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v18, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v19, v4

    goto/16 :goto_8

    .line 2236
    :cond_7
    :goto_3
    :try_start_5
    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v32, v9

    move-object v9, v1

    move-object v1, v8

    move/from16 v8, v32

    .line 2237
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v9

    .line 2236
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessProfileRecord;->setCurProcBatteryStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;)V

    .line 2241
    :goto_4
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move/from16 v18, v3

    iget v3, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v9, v8, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2242
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 2244
    iget-object v1, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v19, v4

    const-wide/16 v3, 0x0

    :try_start_6
    invoke-virtual {v1, v3, v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v31, v2

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_5

    :cond_8
    move/from16 v18, v3

    move-object/from16 v19, v4

    .line 2246
    iget-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    if-eqz v1, :cond_9

    .line 2248
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->isActive()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2249
    :cond_9
    iget v8, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v9, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    iput-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->batteryStats:Landroid/os/BatteryStats$Uid$Proc;

    .line 2252
    :cond_a
    iget v3, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(II)V

    .line 2254
    :goto_6
    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    int-to-long v3, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    int-to-long v8, v1

    iget-object v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v24, v1

    move-object/from16 v31, v2

    :try_start_7
    iget-wide v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    move-wide/from16 v25, v1

    iget v1, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v1, v1

    iget v14, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-wide/from16 v27, v1

    int-to-long v1, v14

    move-wide/from16 v29, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v8

    invoke-static/range {v20 .. v30}, Lcom/android/server/am/EventLogTags;->writeAmCpu(JJLjava/lang/String;JJJ)V

    move v8, v15

    move/from16 v9, v17

    :goto_7
    add-int/lit8 v3, v18, 0x1

    move/from16 v1, v16

    move-object/from16 v4, v19

    move-object/from16 v2, v31

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_b
    move-object/from16 v31, v2

    move-object/from16 v19, v4

    .line 2257
    monitor-exit v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2259
    :try_start_8
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v10

    .line 2260
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v11

    .line 2261
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIoWaitTime()I

    move-result v12

    .line 2262
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v13

    .line 2263
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v14

    .line 2264
    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v15

    .line 2265
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/power/stats/BatteryStatsImpl;->addCpuStatsLocked(IIIIIIII)V

    .line 2267
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->finishAddingCpuStatsLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_a

    .line 2257
    :goto_8
    :try_start_9
    monitor-exit v31
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    :catchall_6
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_a

    :cond_c
    move-object/from16 v19, v4

    .line 2271
    :goto_9
    iget-wide v1, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    const-wide/32 v3, 0x1b7740

    sub-long v3, v5, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    .line 2272
    iput-wide v5, v0, Lcom/android/server/am/AppProfiler;->mLastWriteTime:J

    .line 2273
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    .line 2275
    :cond_d
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 2276
    :try_start_b
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    goto :goto_b

    .line 2275
    :goto_a
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v0

    .line 2276
    :goto_b
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0
.end method

.method public updateLowMemStateLSP(IIIJ)V
    .locals 5

    .line 1365
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/LowMemDetector;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1366
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mLowMemDetector:Lcom/android/server/am/LowMemDetector;

    invoke-virtual {p3}, Lcom/android/server/am/LowMemDetector;->getMemFactor()I

    move-result p3

    goto :goto_0

    .line 1374
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    if-gt p1, v2, :cond_3

    iget p3, p3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-gt p2, p3, :cond_3

    add-int p3, p1, p2

    const/4 v2, 0x3

    if-gt p3, v2, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-gt p3, v2, :cond_2

    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p3, v0

    .line 1391
    :goto_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_4

    .line 1392
    sget-object v2, Lcom/android/server/am/AppProfiler;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oom: memFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " override="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " last="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " allowLow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " numProcs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1394
    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " last="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1392
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_4
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mMemFactorOverride:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    if-eqz v3, :cond_6

    move p3, v2

    .line 1401
    :cond_6
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-le p3, v2, :cond_8

    if-nez v3, :cond_8

    .line 1402
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1403
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    if-lt v2, v3, :cond_8

    .line 1404
    :cond_7
    iget p3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1405
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/am/AppProfiler;->TAG_OOM_ADJ:Ljava/lang/String;

    const-string v3, "Keeping last mem factor!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_8
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    if-eq p3, v2, :cond_9

    .line 1409
    invoke-static {p3, v2}, Lcom/android/server/am/EventLogTags;->writeAmMemFactor(II)V

    const/16 v2, 0xf

    .line 1410
    invoke-static {v2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 1411
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {v2, v3, v4, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1412
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1415
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    add-int/2addr p1, p2

    invoke-virtual {v2, p1, p4, p5}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsHighWatermarkIfNecessaryLocked(IJ)V

    .line 1419
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1420
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz p2, :cond_a

    .line 1421
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_a
    :goto_2
    move v0, v1

    .line 1422
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1420
    invoke-virtual {p4, p3, v0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->setMemFactorLocked(IZJ)Z

    .line 1423
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    .line 1424
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    iput p3, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    .line 1427
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateController;->setIsLastMemoryLevelNormal(Z)V

    .line 1428
    iget-object p1, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    .line 1431
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance p1, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void

    .line 1424
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateLowRamTimestampLPr(J)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1345
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler;->mLowRamTimeSinceLastIdle:J

    .line 1346
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1347
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler;->mLowRamStartTime:J

    :cond_0
    return-void
.end method

.method public updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V
    .locals 6

    if-nez p5, :cond_1

    .line 896
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPssTime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 897
    invoke-virtual {p2}, Lcom/android/server/am/ProcessProfileRecord;->getLastStateTime()J

    move-result-wide v2

    iget-boolean p5, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    .line 898
    invoke-static {p5}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 896
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppProfiler;->requestPssLPf(Lcom/android/server/am/ProcessProfileRecord;I)Z

    move-result p5

    if-nez p5, :cond_1

    :goto_0
    return-void

    .line 906
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mTestPssOrRssMode:Z

    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 907
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v3

    move v1, p1

    move-object v0, p2

    move-wide v4, p3

    .line 906
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord;->computeNextPssTime(IZZJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setNextPssTime(J)V

    return-void
.end method

.method public writeMemWatchProcessToProtoLPf(Landroid/util/proto/ProtoOutputStream;)V
    .locals 14

    .line 2627
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-wide v0, 0x10b00000020L

    .line 2628
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2630
    iget-object v2, p0, Lcom/android/server/am/AppProfiler;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    .line 2631
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-wide v5, 0x10900000001L

    if-ge v3, v4, :cond_1

    .line 2632
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2633
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const-wide v8, 0x20b00000001L

    .line 2634
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2636
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2638
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    const-wide v5, 0x20b00000002L

    .line 2639
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2641
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    const-wide v11, 0x10500000001L

    .line 2643
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 2642
    invoke-virtual {p1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2644
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 2646
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const-wide v12, 0x10900000002L

    .line 2644
    invoke-virtual {p1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2647
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {p1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2649
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2651
    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide v2, 0x10b00000002L

    .line 2654
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2656
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpProcName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2658
    iget-object v4, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUri:Landroid/net/Uri;

    .line 2659
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x10900000006L

    .line 2658
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10500000003L

    .line 2660
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpPid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000004L

    .line 2662
    iget v6, p0, Lcom/android/server/am/AppProfiler;->mMemWatchDumpUid:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10800000005L

    .line 2664
    iget-boolean p0, p0, Lcom/android/server/am/AppProfiler;->mMemWatchIsUserInitiated:Z

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2667
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2669
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_2
    return-void
.end method

.method public writeMemoryLevelsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

    const-wide v0, 0x10800000037L

    .line 2698
    iget-boolean v2, p0, Lcom/android/server/am/AppProfiler;->mAllowLowerMemLevel:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000038L

    .line 2700
    iget v2, p0, Lcom/android/server/am/AppProfiler;->mLastMemoryLevel:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000039L

    .line 2701
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mLastNumProcesses:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public writeProcessesToGcToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .locals 13

    move-object/from16 v0, p4

    .line 2734
    iget-object v1, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2735
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2736
    iget-object v3, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 2737
    iget-object v5, p0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 2738
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 2741
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2742
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const-wide v9, 0x10b00000001L

    .line 2743
    invoke-virtual {v5, p1, v9, v10}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2744
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getReportLowMemory()Z

    move-result v5

    const-wide v9, 0x10800000002L

    invoke-virtual {p1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v9, 0x10300000003L

    .line 2745
    invoke-virtual {p1, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000004L

    .line 2746
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastRequestedGc()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10300000005L

    .line 2747
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getLastLowMemory()J

    move-result-wide v11

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2748
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeProfileDataToProtoLocked(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 4

    .line 2675
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2676
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2677
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2678
    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2679
    iget-object v0, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-wide v0, 0x10b00000022L

    .line 2680
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2681
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    .line 2682
    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileApp()Ljava/lang/String;

    move-result-object p2

    const-wide v2, 0x10900000001L

    .line 2681
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2683
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object p2

    const-wide v2, 0x10b00000002L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2685
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2686
    iget-object p2, p0, Lcom/android/server/am/AppProfiler;->mProfileData:Lcom/android/server/am/AppProfiler$ProfileData;

    invoke-virtual {p2}, Lcom/android/server/am/AppProfiler$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object p2

    const-wide v2, 0x10b00000003L

    invoke-virtual {p2, p1, v2, v3}, Landroid/app/ProfilerInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10500000004L

    .line 2688
    iget p0, p0, Lcom/android/server/am/AppProfiler;->mProfileType:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2691
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
