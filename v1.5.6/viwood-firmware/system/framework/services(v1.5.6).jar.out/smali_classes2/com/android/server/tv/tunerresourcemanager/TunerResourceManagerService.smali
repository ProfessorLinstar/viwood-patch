.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCasResources:Ljava/util/Map;

.field public mCiCamResources:Ljava/util/Map;

.field public mClientProfiles:Ljava/util/Map;

.field public mDemuxResources:Ljava/util/Map;

.field public mFrontendExistingNums:Landroid/util/SparseIntArray;

.field public mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendResources:Ljava/util/Map;

.field public mFrontendResourcesBackup:Ljava/util/Map;

.field public mFrontendUsedNums:Landroid/util/SparseIntArray;

.field public mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field public mListeners:Ljava/util/Map;

.field public mLnbResources:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMediaResourceManager:Landroid/media/IResourceManagerService;

.field public mNextUnusedClientId:I

.field public mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field public mResourceRequestCount:I

.field public mTunerApiLockHolder:I

.field public mTunerApiLockHolderThreadId:J

.field public mTunerApiLockNestedCount:I

.field public final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field public mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCasResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCiCamResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientProfiles(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDemuxResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResourcesBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLnbResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriorityCongfig(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$macquireLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJJ)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->acquireLockInternal(IJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceDescramblerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceDescramblerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTrmAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTunerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getMaxNumberOfFrontendsInternal(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLockInternal(IJZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setMaxNumberOfFrontendsInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJ)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 98
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 100
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 105
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 106
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 107
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 127
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 136
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    return-void
.end method


# virtual methods
.method public final acquireLockInternal(IJJ)Z
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    .line 1756
    const-string v7, "TunerResourceManagerService"

    const-string v8, ", "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1759
    const-string v0, "acquireLockInternal()"

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    return v11

    .line 1764
    :cond_0
    :try_start_0
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move v14, v11

    :goto_0
    if-ne v2, v0, :cond_2

    move v15, v14

    const/4 v0, 0x1

    .line 1765
    iget-wide v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v13, v3, v13

    if-nez v13, :cond_3

    move v13, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move/from16 v18, v11

    goto/16 :goto_a

    :cond_2
    move v15, v14

    const/4 v0, 0x1

    :cond_3
    move v13, v11

    :goto_1
    move v14, v15

    .line 1770
    :goto_2
    const-string v15, "acquireLockInternal("

    if-nez v14, :cond_7

    if-nez v13, :cond_7

    .line 1772
    :try_start_1
    invoke-virtual {v1, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getElapsedTime(J)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v11

    sub-long v11, v5, v16

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    move/from16 v17, v0

    .line 1773
    const-string v0, "("

    if-gtz v16, :cond_4

    .line 1774
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAILED:acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_a

    .line 1789
    :cond_4
    iget-object v14, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    move-wide/from16 v19, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v14, v11, v12, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1794
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    move/from16 v14, v17

    goto :goto_3

    :cond_5
    move/from16 v14, v18

    :goto_3
    if-nez v14, :cond_6

    .line 1797
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") - woken up from cond wait, but "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v12, v10

    move/from16 v0, v17

    move/from16 v11, v18

    move-wide/from16 v9, v19

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    :goto_4
    if-nez v14, :cond_b

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v13, :cond_a

    .line 1822
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1823
    sget-boolean v9, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 1824
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - nested count incremented to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    move/from16 v9, v17

    goto :goto_7

    .line 1829
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - should not reach here"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1806
    :cond_b
    :goto_6
    sget-boolean v9, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 1807
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUCCESS:acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_c
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-eqz v9, :cond_d

    .line 1812
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Something is wrong as nestedCount("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") is not zero. Will overriding it to 1 anyways"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_d
    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 1818
    iput-wide v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    move/from16 v9, v17

    .line 1819
    iput v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    if-nez v14, :cond_f

    if-nez v13, :cond_f

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v11, v18

    goto :goto_9

    :cond_f
    :goto_8
    move v11, v9

    .line 1840
    :goto_9
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1841
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_10
    return v11

    .line 1836
    :goto_a
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception thrown in acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1840
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1841
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_11
    return v18

    .line 1840
    :goto_b
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1841
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1843
    :cond_12
    throw v0
.end method

.method public final addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V
    .locals 1

    .line 2384
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V
    .locals 1

    .line 2389
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .locals 2

    .line 2428
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public final addDemuxResource(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .locals 2

    .line 2299
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .locals 5

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 2281
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2282
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    .line 2283
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V

    .line 2284
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2285
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 2286
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    goto :goto_0

    .line 2288
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(J)V

    .line 2293
    :cond_2
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public final addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 2

    .line 2346
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .locals 2

    if-nez p2, :cond_1

    .line 1937
    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1938
    const-string p0, "TunerResourceManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener is null when client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " registered!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1943
    :cond_1
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 1947
    :try_start_0
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1954
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1949
    :catch_0
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Listener already died."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 650
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "TunerResourceManagerService"

    const-string v1, "Native media resource manager service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 654
    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 655
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkClientExists(I)Z
    .locals 0

    .line 2504
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public checkIsForeground(I)Z
    .locals 3

    .line 2027
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2030
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 2034
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2035
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_2

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public claimCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J[I)Z
    .locals 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1311
    aput-wide v0, p2, v2

    const/4 v0, -0x1

    .line 1312
    aput v0, p3, v2

    .line 1313
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1314
    :try_start_0
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1318
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1321
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v3

    .line 1323
    new-instance v5, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    iget v6, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    const v3, 0x7fffffff

    .line 1324
    invoke-virtual {v5, v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v3

    .line 1325
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v3

    .line 1326
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1328
    :cond_0
    :goto_0
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    .line 1329
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1334
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 1335
    iget p3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1336
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1337
    monitor-exit v1

    return v6

    .line 1339
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v5, 0x3e9

    move v7, v0

    move v8, v2

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1341
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v5, v10, :cond_2

    .line 1345
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v5

    .line 1346
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v7

    if-ne v5, v7, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    move v7, v9

    move v5, v10

    goto :goto_1

    :cond_4
    if-eq v7, v0, :cond_6

    .line 1353
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-gt p0, v5, :cond_5

    .line 1354
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-ne p0, v5, :cond_6

    if-eqz v8, :cond_6

    .line 1358
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1359
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1360
    aput v7, p3, v2

    .line 1361
    monitor-exit v1

    return v6

    .line 1363
    :cond_6
    monitor-exit v1

    return v2

    .line 1315
    :cond_7
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request cas from unregistered client:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1363
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public claimCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J[I)Z
    .locals 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1399
    aput-wide v0, p2, v2

    const/4 v0, -0x1

    .line 1400
    aput v0, p3, v2

    .line 1401
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1402
    :try_start_0
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1406
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1409
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v3

    .line 1411
    new-instance v5, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    iget v6, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(JI)V

    const v3, 0x7fffffff

    .line 1412
    invoke-virtual {v5, v3}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object v3

    .line 1413
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    .line 1414
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1416
    :cond_0
    :goto_0
    iget v4, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    .line 1417
    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1422
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 1423
    iget p3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1424
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1425
    monitor-exit v1

    return v6

    .line 1427
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v5, 0x3e9

    move v7, v0

    move v8, v2

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1429
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v5, v10, :cond_2

    .line 1433
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v5

    .line 1434
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v7

    if-ne v5, v7, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    move v7, v9

    move v5, v10

    goto :goto_1

    :cond_4
    if-eq v7, v0, :cond_6

    .line 1441
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-gt p0, v5, :cond_5

    .line 1442
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-ne p0, v5, :cond_6

    if-eqz v8, :cond_6

    .line 1446
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1447
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1448
    aput v7, p3, v2

    .line 1449
    monitor-exit v1

    return v6

    .line 1451
    :cond_6
    monitor-exit v1

    return v2

    .line 1403
    :cond_7
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request ciCam from unregistered client:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1451
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public claimDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J[I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 1594
    aput-wide v2, p2, v4

    const/4 v2, -0x1

    .line 1595
    aput v2, p3, v4

    .line 1596
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1597
    :try_start_0
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1605
    iget-object v3, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 1608
    invoke-virtual {v0, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1609
    monitor-exit v2

    return v5

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 1612
    :cond_0
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1614
    monitor-exit v2

    return v4

    .line 1616
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1623
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    .line 1627
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/16 v10, 0x3e9

    move v13, v4

    move-object v11, v9

    move v12, v10

    move v9, v8

    move-object v10, v11

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    if-eqz v6, :cond_3

    .line 1628
    iget v15, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    invoke-virtual {v14, v15}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->hasSufficientCaps(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1629
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v15

    if-nez v15, :cond_5

    .line 1630
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->getNumOfCaps()I

    move-result v15

    if-le v8, v15, :cond_4

    move-object v10, v14

    move v8, v15

    :cond_4
    move/from16 v16, v4

    goto :goto_4

    :cond_5
    if-nez v10, :cond_4

    .line 1640
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v15

    if-lt v12, v15, :cond_4

    move/from16 v16, v4

    .line 1642
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->getNumOfCaps()I

    move-result v4

    if-le v12, v15, :cond_7

    .line 1647
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v9

    .line 1648
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v12

    if-ne v9, v12, :cond_6

    move v13, v5

    goto :goto_2

    :cond_6
    move/from16 v13, v16

    :goto_2
    move v9, v4

    move v4, v5

    move v12, v15

    goto :goto_3

    :cond_7
    if-le v9, v4, :cond_8

    move v9, v4

    move v4, v5

    goto :goto_3

    :cond_8
    move/from16 v4, v16

    :goto_3
    if-eqz v4, :cond_9

    move-object v11, v14

    :cond_9
    :goto_4
    move/from16 v4, v16

    goto :goto_1

    :cond_a
    move/from16 v16, v4

    if-eqz v10, :cond_b

    .line 1672
    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnNewGrant(JI)V

    .line 1673
    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v16

    .line 1674
    monitor-exit v2

    return v5

    :cond_b
    if-eqz v11, :cond_d

    .line 1680
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-gt v0, v12, :cond_c

    .line 1681
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-ne v0, v12, :cond_d

    if-eqz v13, :cond_d

    .line 1685
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1686
    :cond_c
    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v16

    .line 1687
    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    aput v0, p3, v16

    .line 1688
    monitor-exit v2

    return v5

    .line 1690
    :cond_d
    monitor-exit v2

    return v16

    .line 1598
    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request demux from unregistered client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public claimFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J[I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 999
    aput-wide v2, p2, v4

    const/4 v2, -0x1

    .line 1000
    aput v2, p3, v4

    .line 1001
    iget-object v3, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1002
    :try_start_0
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1003
    const-string v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request frontend from unregistered client: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    monitor-exit v3

    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 1008
    :cond_0
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1009
    const-string v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Release frontend before requesting another one. Client id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v3

    return v4

    .line 1013
    :cond_1
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    .line 1014
    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1021
    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    const/4 v7, 0x1

    if-eq v6, v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v4

    .line 1023
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x3e9

    move v11, v4

    move v10, v9

    move-object v9, v8

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 1024
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(J)I

    move-result v13

    .line 1025
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    iget v15, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    if-ne v14, v15, :cond_3

    if-eqz v2, :cond_4

    iget v14, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    if-ne v13, v14, :cond_3

    .line 1027
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v13

    if-nez v13, :cond_7

    .line 1030
    iget v13, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_1

    .line 1034
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v8, v12

    goto :goto_3

    :cond_6
    if-nez v8, :cond_3

    move-object v8, v12

    goto :goto_1

    :cond_7
    if-nez v8, :cond_3

    .line 1045
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendHighestClientPriority(I)I

    move-result v13

    if-le v10, v13, :cond_3

    .line 1050
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    .line 1051
    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v14

    .line 1052
    invoke-virtual {v0, v14, v15}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v14

    .line 1053
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v15

    invoke-virtual {v14}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    if-eq v15, v14, :cond_8

    .line 1054
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_1

    .line 1060
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v9

    .line 1061
    invoke-virtual {v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v10

    if-ne v9, v10, :cond_9

    move v9, v7

    goto :goto_2

    :cond_9
    move v9, v4

    :goto_2
    move v11, v9

    move-object v9, v12

    move v10, v13

    goto/16 :goto_1

    :cond_a
    :goto_3
    if-eqz v8, :cond_b

    .line 1069
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v5

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(JI)V

    .line 1071
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1072
    monitor-exit v3

    return v7

    :cond_b
    if-eqz v9, :cond_d

    .line 1078
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-gt v0, v10, :cond_c

    .line 1079
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v0

    if-ne v0, v10, :cond_d

    if-eqz v11, :cond_d

    .line 1083
    invoke-virtual {v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1084
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    aput-wide v0, p2, v4

    .line 1085
    invoke-virtual {v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    aput v0, p3, v4

    .line 1086
    monitor-exit v3

    return v7

    .line 1088
    :cond_d
    monitor-exit v3

    return v4

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public claimLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J[I)Z
    .locals 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1223
    aput-wide v0, p2, v2

    const/4 v0, -0x1

    .line 1224
    aput v0, p3, v2

    .line 1225
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_0
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1230
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1231
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    move v7, v2

    move-object v6, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1238
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v4, v8

    goto :goto_2

    .line 1245
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v5, v10, :cond_0

    .line 1249
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v5

    .line 1250
    invoke-virtual {v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    move-object v6, v8

    move v5, v10

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1257
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v5

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v5, v6, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(JI)V

    .line 1258
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1259
    monitor-exit v0

    return v9

    :cond_4
    if-eqz v6, :cond_6

    .line 1265
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-gt p0, v5, :cond_5

    .line 1266
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    if-ne p0, v5, :cond_6

    if-eqz v7, :cond_6

    .line 1270
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->resourceOwnershipRetentionEnabled()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1271
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide p0

    aput-wide p0, p2, v2

    .line 1272
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result p0

    aput p0, p3, v2

    .line 1273
    monitor-exit v0

    return v9

    .line 1275
    :cond_6
    monitor-exit v0

    return v2

    .line 1227
    :cond_7
    new-instance p0, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request lnb from unregistered client:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1275
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2482
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2483
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_0

    .line 2486
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2487
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2490
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 2491
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2494
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseDemuxHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2495
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_1

    .line 2498
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2499
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->reclaimAllResources()V

    return-void
.end method

.method public final clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2451
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2452
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    .line 2453
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    .line 2454
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2455
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_0

    .line 2458
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2460
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    goto :goto_0

    .line 2464
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 2466
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2468
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2472
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    return-void
.end method

.method public clearResourceMapInternal(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 794
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 795
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 796
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 797
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 2

    .line 1699
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->isPriorityOverwritten()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1703
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v0

    .line 1704
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1706
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getUseCase()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    .line 1705
    invoke-virtual {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    return-void
.end method

.method public final decreFrontendNum(Landroid/util/SparseIntArray;I)V
    .locals 1

    const/4 p0, -0x1

    .line 2224
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2226
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method public final dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2253
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2255
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2259
    :cond_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2260
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public final dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2267
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p0, 0x0

    .line 2269
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    .line 2270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 2273
    :cond_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2274
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public final enforceDescramblerAccessPermission(Ljava/lang/String;)V
    .locals 2

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTrmAccessPermission(Ljava/lang/String;)V
    .locals 2

    .line 2538
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTunerAccessPermission(Ljava/lang/String;)V
    .locals 2

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final generateResourceHandle(II)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 p1, 0x38

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    .line 2516
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method public getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 0

    .line 2363
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object p0
.end method

.method public getCasResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    .line 2374
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .locals 0

    .line 2369
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    return-object p0
.end method

.method public getCiCamResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation

    .line 2379
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public getClientPriority(IZ)I
    .locals 2

    .line 2014
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientPriority useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 2020
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getForegroundPriority(I)I

    move-result p0

    return p0

    .line 2022
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getBackgroundPriority(I)I

    move-result p0

    return p0
.end method

.method public getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 0

    .line 2423
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object p0
.end method

.method public getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .locals 0

    .line 2167
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    return-object p0
.end method

.method public getDemuxResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/DemuxResource;",
            ">;"
        }
    .end annotation

    .line 2172
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    return-object p0
.end method

.method public final getElapsedTime(J)J
    .locals 4

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    sub-long p0, v2, p1

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gez p2, :cond_1

    return-wide v2

    :cond_1
    return-wide p0
.end method

.method public final getFrontendHighestClientPriority(I)I
    .locals 2

    .line 2135
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result p1

    .line 2144
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2145
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v1

    if-le v1, p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 0

    .line 2156
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object p0
.end method

.method public getFrontendResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    .line 2161
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 0

    .line 2336
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object p0
.end method

.method public getLnbResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    .line 2341
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public final getMaxNumberOfFrontendsInternal(I)I
    .locals 2

    .line 2189
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "existingNum is -1 for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2194
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public getResourceIdFromHandle(J)I
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    long-to-int p0, p1

    return p0

    :cond_0
    const/16 p0, 0x18

    shr-long p0, p1, p0

    long-to-int p0, p0

    return p0
.end method

.method public hasUnusedFrontendInternal(I)Z
    .locals 2

    .line 745
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 746
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final increFrontendNum(Landroid/util/SparseIntArray;I)V
    .locals 2

    const/4 p0, -0x1

    .line 2215
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    .line 2217
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_0
    add-int/2addr v0, v1

    .line 2219
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final isFrontendMaxNumUseReached(I)Z
    .locals 3

    .line 2203
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2207
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v2

    :cond_1
    if-lt p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 4

    .line 1459
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHigherPriority(challengerProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1465
    const-string p0, "TvInputManager is null. Can\'t compare the priority."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1471
    :cond_1
    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1472
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_0

    .line 1473
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 1474
    :goto_0
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_1

    .line 1476
    :cond_3
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v3, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    .line 1478
    :goto_1
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 1479
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1478
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 1480
    iget p2, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    if-le p1, p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isLowestPriorityInternal(II)Z
    .locals 4

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 760
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 761
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p1

    .line 764
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 765
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v2

    if-le p1, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final lockForTunerApiLock(IJLjava/lang/String;)Z
    .locals 4

    .line 1738
    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1741
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED to lock mLockForTRMSLock in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeoutMS:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mTunerApiLockHolder:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1747
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception thrown in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1749
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v1
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 150
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService-IA;)V

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 154
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 155
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parse()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 159
    const-string/jumbo p1, "ro.tuner.lazyhal"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 162
    const-string/jumbo p1, "tuner.server.enable"

    const-string/jumbo v1, "true"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez p1, :cond_3

    .line 167
    const-string/jumbo p1, "media.resource_manager"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 168
    const-string v1, "TunerResourceManagerService"

    if-nez p1, :cond_2

    .line 169
    const-string p0, "Resource Manager Service not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_2
    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    return-void

    .line 175
    :catch_0
    const-string p0, "Could not link to death of native resource manager service."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public reclaimResource(II)Z
    .locals 7

    .line 1967
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 1972
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1973
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1975
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 1977
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v1

    .line 1978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1981
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1982
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 1983
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 1986
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1988
    const-string v4, "TunerResourceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reclaim resources on client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 1983
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 1993
    :cond_2
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1994
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reclaiming resources because higher priority client request resource type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", clientId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_3
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1999
    :try_start_4
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    .line 2000
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_4

    .line 2003
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 2005
    const-string p2, "TunerResourceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to reclaim resources on client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v2

    :catchall_2
    move-exception p0

    .line 2000
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 1978
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 6

    .line 661
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClientProfile(clientProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 665
    aput v0, p3, v2

    .line 666
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_1

    .line 667
    const-string p0, "TvInputManager is null. Can\'t register client profile."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 671
    :cond_1
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v3, p3, v2

    .line 673
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 678
    :goto_0
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v3, :cond_3

    .line 680
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v2

    invoke-direct {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 688
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 689
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 692
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 692
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 695
    aget p1, p3, v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 2

    .line 1548
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    return-void
.end method

.method public releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .locals 2

    .line 1556
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    return-void
.end method

.method public releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .locals 3

    .line 1532
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseDemux(DemuxHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    return-void
.end method

.method public releaseFrontendInternal(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1488
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseFrontend(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unclaimFrontend(JI)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1496
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1497
    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    goto :goto_0

    .line 1501
    :cond_1
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1502
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1503
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1492
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "frontendHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 3

    .line 1540
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseLnb(lnbHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    return-void
.end method

.method public final releaseLockInternal(IJZZ)Z
    .locals 7

    .line 1849
    const-string/jumbo v0, "releaseLockInternal()"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1854
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const-string/jumbo v3, "releaseLockInternal("

    const-string v4, "TunerResourceManagerService"

    const-string v5, ", "

    if-ne v0, p1, :cond_6

    .line 1856
    :try_start_1
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-nez p4, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1869
    :cond_1
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - NOT signaling because nested count is not zero ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 1858
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUCCESS:releaseLockInternal("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - signaling!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_3
    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 p1, -0x1

    .line 1865
    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 1866
    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1867
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1896
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1897
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    return v6

    :cond_6
    if-ne v0, v2, :cond_9

    if-nez p5, :cond_7

    .line 1879
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while there is no current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1896
    :cond_7
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1897
    :goto_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    return v1

    :cond_9
    if-nez p5, :cond_a

    .line 1887
    :try_start_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while someone else:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is the current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1896
    :cond_a
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    return v1

    :goto_3
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1897
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1899
    :cond_c
    throw p1
.end method

.method public final removeCasResource(I)V
    .locals 2

    .line 2393
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2397
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2398
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    goto :goto_0

    .line 2400
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCiCamResource(I)V
    .locals 2

    .line 2404
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2408
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2409
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    goto :goto_0

    .line 2411
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeClientProfile(I)V
    .locals 2

    .line 2434
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2435
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_0

    .line 2437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2438
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    if-eqz p0, :cond_1

    .line 2442
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public final removeDemuxResource(J)V
    .locals 2

    .line 2323
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2327
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2328
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    .line 2330
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeFrontendResource(J)V
    .locals 5

    .line 2303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2307
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2308
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 2309
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2310
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_0

    .line 2312
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2314
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2315
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 2316
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeExclusiveGroupMemberFeId(J)V

    goto :goto_1

    .line 2318
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2319
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeLnbResource(J)V
    .locals 2

    .line 2350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2354
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2355
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 2357
    :cond_1
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2242
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2244
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 2245
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2233
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 2234
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 2235
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1283
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1284
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCasSession(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1286
    new-array v1, v0, [I

    .line 1287
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1290
    :cond_1
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_2

    return v3

    .line 1293
    :cond_2
    aget p2, v1, v3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x4

    .line 1294
    invoke-virtual {p0, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result p2

    if-nez p2, :cond_3

    return v3

    .line 1298
    :cond_3
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1299
    :try_start_0
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1300
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed cas still fully used"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    monitor-exit p2

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1303
    :cond_4
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    .line 1304
    monitor-exit p2

    goto :goto_1

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return v0
.end method

.method public requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1372
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCiCamInternal(TunerCiCamRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1374
    new-array v1, v0, [I

    .line 1375
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1378
    :cond_1
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_2

    return v3

    .line 1381
    :cond_2
    aget p2, v1, v3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    .line 1382
    invoke-virtual {p0, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result p2

    if-nez p2, :cond_3

    return v3

    .line 1386
    :cond_3
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1387
    :try_start_0
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1388
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed ciCam still fully used"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    monitor-exit p2

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1391
    :cond_4
    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    .line 1392
    monitor-exit p2

    goto :goto_1

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return v0
.end method

.method public requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1566
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDemux(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1568
    new-array v1, v0, [I

    .line 1569
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1572
    :cond_1
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    return v3

    .line 1575
    :cond_2
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1576
    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1580
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1581
    :try_start_0
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1582
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed demux still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1585
    :cond_4
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateDemuxClientMappingOnNewGrant(JI)V

    .line 1586
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return v0
.end method

.method public requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .locals 2

    .line 1712
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDescrambler(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TunerResourceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1717
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide p0

    aput-wide p0, p2, v0

    const/4 p0, 0x1

    return p0
.end method

.method public requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .locals 8

    .line 968
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestFrontend(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 971
    new-array v1, v0, [I

    .line 972
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 975
    :cond_1
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    return v3

    .line 978
    :cond_2
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 979
    invoke-virtual {p0, v1, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 983
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_0
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 985
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed frontend still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 988
    :cond_4
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(JI)V

    .line 989
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return v0
.end method

.method public requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLnb(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 1198
    new-array v1, v0, [I

    .line 1199
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->claimLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1202
    :cond_1
    aget-wide v4, p2, v3

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    return v3

    .line 1205
    :cond_2
    aget v1, v1, v3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    .line 1206
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1210
    :cond_3
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1211
    :try_start_0
    aget-wide v4, p2, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    const-string p0, "TunerResourceManagerService"

    const-string p1, "Reclaimed lnb still in use"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1215
    :cond_4
    aget-wide v2, p2, v3

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(JI)V

    .line 1216
    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return v0
.end method

.method public restoreResourceMapInternal(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 808
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 809
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 810
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 811
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .locals 6

    .line 858
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 859
    const-string/jumbo v0, "updateDemuxInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 860
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 861
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 871
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 872
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 873
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Demux handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 879
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;-><init>(J)V

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->filterTypes:I

    .line 880
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->filterTypes(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    move-result-object v3

    .line 881
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    .line 882
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addDemuxResource(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 888
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeDemuxResource(J)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 6

    .line 821
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 822
    const-string/jumbo v0, "updateFrontendInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 823
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 824
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 834
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 835
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 836
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_1
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 842
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;-><init>(J)V

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 843
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    .line 844
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    .line 845
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 846
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 852
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeFrontendResource(J)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setLnbInfoListInternal([J)V
    .locals 6

    .line 893
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    .line 894
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLnbInfo(lnbHanle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 905
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 906
    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 907
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lnb handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_1
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 913
    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;-><init>(J)V

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    .line 914
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 918
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 919
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeLnbResource(J)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final setMaxNumberOfFrontendsInternal(II)Z
    .locals 2

    .line 2176
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 2181
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max number of frontend for frontendType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be set to a value lower than the current usage count. (requested max num = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", current usage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2178
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public shareFrontendInternal(II)V
    .locals 4

    .line 1095
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareeFeClientId()Ljava/lang/Integer;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    .line 1103
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1104
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    goto :goto_0

    .line 1106
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    return-void
.end method

.method public storeResourceMapInternal(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 780
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 781
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 782
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 783
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public final transferFeCiCamOwner(II)Z
    .locals 2

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1138
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1141
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v1

    .line 1142
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p0

    .line 1146
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1149
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    const/4 p0, 0x1

    return p0
.end method

.method public final transferFeOwner(II)Z
    .locals 4

    .line 1111
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1112
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1114
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    .line 1115
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    const/4 p1, -0x1

    .line 1116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setShareeFeClientId(Ljava/lang/Integer;)V

    .line 1118
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1119
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    goto :goto_0

    .line 1122
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    const-wide/16 v1, -0x1

    .line 1123
    invoke-virtual {v0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    .line 1125
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1126
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 1128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "something is wrong in transferFeOwner:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final transferLnbOwner(II)Z
    .locals 6

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1155
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1160
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(J)V

    .line 1163
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v4

    .line 1164
    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1166
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 1171
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(J)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public transferOwnerInternal(III)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "transferOwnerInternal. unsupported resourceType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1183
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeCiCamOwner(II)Z

    move-result p0

    return p0

    .line 1185
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferLnbOwner(II)Z

    move-result p0

    return p0

    .line 1181
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeOwner(II)Z

    move-result p0

    return p0
.end method

.method public final unclaimFrontend(JI)Ljava/util/Set;
    .locals 2

    .line 1508
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1513
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1517
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result p1

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-ne p1, p3, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1522
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1526
    :goto_0
    monitor-exit v0

    return-object p0

    .line 1523
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not a sharee of the releasing fe."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1515
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Releasing frontend does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1510
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Release frontend from unregistered client:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1526
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterClientProfileInternal(I)V
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    const-string p0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering non exists client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 705
    :cond_0
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 706
    const-string v1, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClientProfile(clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 710
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 712
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 714
    :try_start_2
    const-string p1, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final updateAndGetOwnerClientPriority(I)I
    .locals 0

    .line 2121
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 2122
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2123
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    return p0
.end method

.method public final updateCasClientMappingOnNewGrant(II)V
    .locals 1

    .line 2085
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 2086
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2087
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 2088
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCas(I)V

    return-void
.end method

.method public final updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 1

    .line 2099
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeSession(I)V

    .line 2100
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->hasOpenSessions(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2101
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2102
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    :cond_0
    return-void
.end method

.method public updateCasInfoInternal(II)V
    .locals 4

    .line 925
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCasInfo(casSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCasResource(I)V

    .line 933
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCiCamResource(I)V

    return-void

    .line 937
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 940
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result p0

    if-le p0, p2, :cond_2

    .line 942
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    .line 945
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    if-eqz v1, :cond_3

    .line 947
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x4

    .line 952
    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v0

    .line 954
    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    .line 955
    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    const/4 v1, 0x5

    .line 957
    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v1

    .line 959
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    invoke-direct {v3, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(JI)V

    .line 960
    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p1

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    return-void
.end method

.method public final updateCiCamClientMappingOnNewGrant(II)V
    .locals 1

    .line 2092
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 2093
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2094
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 2095
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    return-void
.end method

.method public final updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .locals 0

    .line 2109
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2110
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2111
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    return-void
.end method

.method public updateClientPriorityInternal(III)Z
    .locals 3

    .line 723
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClientPriority(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niceValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-nez p0, :cond_1

    .line 731
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not find client profile with id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when trying to update the client priority."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 737
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->overwritePriority(I)V

    .line 738
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setNiceValue(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateDemuxClientMappingOnNewGrant(JI)V
    .locals 1

    .line 2057
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2059
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2060
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2061
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useDemux(J)V

    :cond_0
    return-void
.end method

.method public final updateDemuxClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .locals 2

    .line 2066
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2067
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    .line 2068
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseDemux(J)V

    return-void
.end method

.method public final updateFrontendClientMappingOnNewGrant(JI)V
    .locals 5

    .line 2044
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 2045
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 2046
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2047
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2048
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    .line 2049
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2050
    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2051
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(J)V

    goto :goto_0

    .line 2053
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(J)V

    return-void
.end method

.method public final updateLnbClientMappingOnNewGrant(JI)V
    .locals 1

    .line 2072
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 2073
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2074
    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 2075
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(J)V

    return-void
.end method

.method public final updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 2

    .line 2079
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 2080
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    .line 2081
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(J)V

    return-void
.end method

.method public final validateResourceHandle(IJ)Z
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    const/16 p0, 0x38

    shr-long/2addr p2, p0

    const-wide/16 v0, 0xff

    and-long/2addr p2, v0

    int-to-long p0, p1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
