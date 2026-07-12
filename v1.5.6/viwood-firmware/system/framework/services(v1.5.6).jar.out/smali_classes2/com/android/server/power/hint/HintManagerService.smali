.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# static fields
.field static final CLEAN_UP_UID_DELAY_MILLIS:I = 0x3e8

.field static final MAX_GRAPHICS_PIPELINE_THREADS_COUNT:I = 0x5

.field public static final PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mActiveSessions:Landroid/util/ArrayMap;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mChannelMap:Landroid/util/ArrayMap;

.field public final mChannelMapLock:Ljava/lang/Object;

.field public final mCheckHeadroomAffinity:Z

.field public final mCheckHeadroomProcStatMinMillis:I

.field public final mCheckHeadroomTid:Z

.field public final mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

.field public mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public final mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mCpuHeadroomLock:Ljava/lang/Object;

.field public final mCpuHeadroomMaxTidCnt:I

.field public final mDefaultCpuHeadroomCalculationWindowMillis:I

.field public final mDefaultGpuHeadroomCalculationWindowMillis:I

.field private mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

.field public mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

.field public final mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mGpuHeadroomLock:Ljava/lang/Object;

.field final mHintSessionPreferredRate:J

.field final mJiffyMillis:F

.field public mLastCpuUserModeJiffies:J

.field public mLastCpuUserModeTimeCheckedMillis:J

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field public final mNonIsolatedTids:Ljava/util/Map;

.field public final mNonIsolatedTidsLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerHal:Landroid/hardware/power/IPower;

.field public mPowerHalVersion:I

.field private mProcStatFilePathOverride:Ljava/lang/String;

.field final mService:Landroid/os/IHintManager$Stub;

.field public mSessionManager:Landroid/adpf/ISessionManager;

.field public mSessionSnapshotMap:Landroid/util/ArrayMap;

.field public final mSessionSnapshotMapLock:Ljava/lang/Object;

.field public mSupportInfo:Landroid/hardware/power/SupportInfo;

.field public mThreadsUsageMap:Landroid/util/ArrayMap;

.field public final mThreadsUsageObject:Ljava/lang/Object;

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final mUidToLastUserModeJiffies:Ljava/util/Map;

.field public mUsesFmq:Z


# direct methods
.method public static synthetic $r8$lambda$ekPydgvI2SqQJb7XQ9M2EthMnAQ(Lcom/android/server/power/hint/HintManagerService;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChannelMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChannelMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomAffinity(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomProcStatMinMillis(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomTid(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCleanUpHandler(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultGpuHeadroomCalculationWindowMillis(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadsUsageMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadsUsageObject(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsesFmq(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSessionManager(Lcom/android/server/power/hint/HintManagerService;Landroid/adpf/ISessionManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsesFmq(Lcom/android/server/power/hint/HintManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcontains(Lcom/android/server/power/hint/HintManagerService;[II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->contains([II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtooManyPipelineThreads(Lcom/android/server/power/hint/HintManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService;->tooManyPipelineThreads(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetPROC_STAT_CPU_TIME_TOTAL_PATTERN()Ljava/util/regex/Pattern;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 117
    const-string v0, "cpu\\s+(?<user>[0-9]+)\\s(?<nice>[0-9]+).+"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 300
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .locals 6

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    .line 212
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    .line 214
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 221
    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    .line 223
    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    .line 227
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 v2, 0x0

    .line 229
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    .line 287
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    .line 296
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 306
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 308
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->createCleanUpThread()Lcom/android/server/ServiceThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;-><init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 309
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 319
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 320
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 321
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 322
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    .line 323
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 325
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 326
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 327
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 328
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 329
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createIPower()Landroid/hardware/power/IPower;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    .line 330
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 331
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz p1, :cond_0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not contact PowerHAL!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 339
    :cond_0
    :goto_0
    new-instance p1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    iget p1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultCpuHeadroomCalculationWindowMillis:I

    .line 341
    new-instance p1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iget p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mDefaultGpuHeadroomCalculationWindowMillis:I

    .line 343
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    .line 344
    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v4, p1

    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 345
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    .line 346
    sget p1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide p1

    const/high16 v2, 0x447a0000    # 1000.0f

    long-to-float p1, p1

    div-float/2addr v2, p1

    .line 347
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 348
    const-string/jumbo p1, "persist.hms.check_headroom_tid"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 349
    const-string/jumbo p1, "persist.hms.check_headroom_affinity"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 351
    const-string/jumbo p1, "persist.hms.check_headroom_proc_stat_min_millis"

    const/16 p2, 0x32

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 354
    const-string/jumbo p1, "persist.hms.cpu_headroom_tid_max_cnt"

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p2, p2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p2, p2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    goto :goto_1

    .line 358
    :cond_1
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 359
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    const/4 p1, 0x0

    .line 360
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 361
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 363
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 364
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    .line 366
    :goto_1
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz p2, :cond_2

    .line 367
    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, p1

    invoke-direct {p2, v3, v0, v1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void

    .line 369
    :cond_2
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void
.end method

.method private onPullAtom(ILjava/util/List;)I
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x27bd

    if-ne p1, v1, :cond_0

    .line 685
    const-string v2, "debug.sf.enable_adpf_cpu_hint"

    .line 686
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 687
    const-string v3, "debug.hwui.use_hint_manager"

    .line 688
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 694
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getFmqUsage()I

    move-result v4

    .line 690
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZI)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0x27ea

    if-ne p1, v1, :cond_3

    .line 697
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    move v1, v0

    .line 698
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 699
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 700
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 701
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move v10, v0

    .line 702
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v10, v3, :cond_1

    .line 703
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 704
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    .line 709
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxConcurrentSession()I

    move-result v6

    .line 710
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxThreadCount()I

    move-result v7

    .line 711
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getPowerEfficientSessionCount()I

    move-result v8

    .line 712
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->targetDurationNsList()[J

    move-result-object v9

    const/16 v3, 0x27ea

    .line 705
    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII[J)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->restoreSessionSnapshot()V

    goto :goto_3

    .line 716
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return v0
.end method

.method private registerStatsCallbacks()V
    .locals 5

    .line 670
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 671
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v3, 0x27bd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 676
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 p0, 0x27ea

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method private systemReady()V
    .locals 4

    .line 658
    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 1294
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_5

    .line 1295
    aget v4, p3, v2

    .line 1296
    const-string v5, "Uid:"

    const-string v6, "Tgid:"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1300
    new-array v6, v6, [J

    .line 1301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1302
    aget-wide v7, v6, v1

    long-to-int v5, v7

    const/4 v7, 0x1

    .line 1303
    aget-wide v6, v6, v7

    long-to-int v6, v6

    if-eqz p4, :cond_0

    if-ne v6, p2, :cond_0

    .line 1307
    invoke-virtual {p4, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :cond_0
    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    .line 1317
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_2

    .line 1318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1320
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1322
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1325
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1328
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method

.method public final contains([II)Z
    .locals 3

    .line 1339
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    if-ne v2, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final createCleanUpThread()Lcom/android/server/ServiceThread;
    .locals 3

    .line 453
    new-instance p0, Lcom/android/server/ServiceThread;

    const/16 v0, 0x13

    const/4 v1, 0x1

    const-string v2, "HintManagerService"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    return-object p0
.end method

.method public final formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tid"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from list "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t belong to the calling application "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .locals 0

    .line 1274
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object p0
.end method

.method public final getFmqUsage()I
    .locals 1

    .line 723
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 725
    :cond_0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v0, 0x5

    if-ge p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public getOrCreateMappedChannelItem(IILandroid/os/IBinder;)Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    .locals 4

    .line 986
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 990
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 992
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;-><init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V

    .line 993
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->openChannel()V

    .line 994
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    monitor-exit v0

    return-object p0

    .line 997
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSupportInfo()Landroid/hardware/power/SupportInfo;
    .locals 6

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {v0}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 377
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {p0}, Landroid/hardware/power/IPower;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 383
    :cond_0
    new-instance v0, Landroid/hardware/power/SupportInfo;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo;-><init>()V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    const-wide/16 v1, 0x0

    .line 386
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->boosts:J

    .line 387
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->modes:J

    .line 388
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 389
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 390
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    .line 392
    new-instance v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    const/4 v2, 0x0

    .line 393
    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    .line 394
    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    .line 396
    new-instance v1, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    .line 397
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f

    if-ne p0, v1, :cond_1

    .line 402
    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    const-wide/16 v4, 0xff

    .line 411
    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    const-wide/16 v4, 0x1

    .line 414
    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 417
    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not contact PowerHAL!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasChannel(II)Ljava/lang/Boolean;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeMap;

    if-eqz p0, :cond_1

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1283
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1285
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v0

    return-object p0

    .line 1286
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isHintSessionSupported()Z
    .locals 4

    .line 639
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->registerStatsCallbacks()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 644
    const-string/jumbo v0, "performance_hint"

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    if-eqz v1, :cond_1

    .line 1008
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    .line 1011
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1013
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1014
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final restoreSessionSnapshot()V
    .locals 15

    .line 734
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 736
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move v3, v2

    .line 737
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 738
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 739
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 740
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 741
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v2

    .line 742
    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 743
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 744
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTag()I

    move-result v9

    .line 745
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getUid()I

    move-result v10

    .line 747
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTargetDurationNs()J

    move-result-wide v11

    .line 748
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getThreadIds()[I

    move-result-object v8

    array-length v8, v8

    .line 749
    iget-object v13, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 750
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_0

    .line 752
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 753
    iget-object v14, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 755
    :cond_0
    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v10, :cond_1

    .line 757
    new-instance v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    invoke-direct {v10, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    .line 758
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_1
    invoke-virtual {v10, v8, v11, v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionCreation(IJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 765
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 765
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 766
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public setProcStatPathOverride(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return-void
.end method

.method public final tooManyPipelineThreads(I)Z
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageObject:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mThreadsUsageMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 439
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;

    .line 440
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ThreadUsageTracker;->isGraphicsPipeline()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x5

    if-le v1, p0, :cond_2

    const/4 p0, 0x1

    .line 445
    monitor-exit v0

    return p0

    .line 448
    :cond_2
    monitor-exit v0

    return p1

    .line 449
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
