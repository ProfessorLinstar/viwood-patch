.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# static fields
.field public static final CACHING_UI_SERVICE_CLIENT_ADJ_THRESHOLD:I = 0x1f4


# instance fields
.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mFollowUpUpdateSet:Landroid/util/ArraySet;

.field public final mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

.field public final mInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public mLastFreeSwapPercent:D

.field public mLastReason:I

.field public final mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextFollowUpUpdateUptimeMs:J

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessStateCurTop:I

.field public final mProcessesInCycle:Landroid/util/ArraySet;

.field public final mProcsToOomAdj:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpLong:[J

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessList2:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$9F-hNbXzRFxc_BBmKMXasg6rCRI(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HE3RR_IDk_ZVk05ZPt838QkiYKw(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uOb2fkEfiodlL-R7ljyXmiY1wCQ(Lcom/android/server/am/OomAdjuster;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 4

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 344
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v0, 0x0

    .line 349
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 355
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 356
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 357
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 363
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 369
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v1, 0x1

    .line 381
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList2:Ljava/util/ArrayList;

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 395
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 396
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 397
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    .line 413
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 419
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v2, 0x2

    .line 433
    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 436
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    const-wide v2, 0x7fffffffffffffffL

    .line 440
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1343
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1725
    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 509
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 510
    iput-object p5, p0, Lcom/android/server/am/OomAdjuster;->mGlobalState:Lcom/android/server/am/OomAdjuster$GlobalState;

    .line 511
    iput-object p7, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 512
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 513
    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 514
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 516
    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 517
    iput-object p6, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 518
    new-instance p2, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p2, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 520
    new-instance p2, Lcom/android/server/am/OomAdjusterDebugLogger;

    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p2, p0, p3}, Lcom/android/server/am/OomAdjusterDebugLogger;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 522
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance p4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 531
    new-instance p2, Lcom/android/server/am/ActiveUids;

    invoke-direct {p2, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 532
    new-instance p1, Ljava/util/ArrayDeque;

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p2, p2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/2addr p2, v1

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p1, 0xa

    .line 533
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    return-void
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 500
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "OomAdjuster"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 502
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method

.method public static getCpuCapability(Lcom/android/server/am/ProcessRecord;JZ)I
    .locals 0

    .line 3428
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p1

    const/16 p2, 0x80

    if-eqz p1, :cond_0

    .line 3429
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    return p2

    .line 3444
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    .line 3447
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result p1

    if-lez p1, :cond_3

    return p2

    .line 3450
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasActiveInstrumentation()Z

    move-result p0

    if-eqz p0, :cond_4

    return p2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    if-eqz p0, :cond_1

    .line 3510
    invoke-interface {p0}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->transmitsCpuTime()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3511
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    return p0
.end method

.method public static getFreeSwapPercent()D
    .locals 2

    .line 1346
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 295
    const-string p0, "_unknown"

    return-object p0

    .line 293
    :pswitch_0
    const-string/jumbo p0, "updateOomAdj_reconfiguration"

    return-object p0

    .line 291
    :pswitch_1
    const-string/jumbo p0, "updateOomAdj_followUp"

    return-object p0

    .line 289
    :pswitch_2
    const-string/jumbo p0, "updateOomAdj_componentDisabled"

    return-object p0

    .line 287
    :pswitch_3
    const-string/jumbo p0, "updateOomAdj_restrictionChange"

    return-object p0

    .line 285
    :pswitch_4
    const-string/jumbo p0, "updateOomAdj_executingService"

    return-object p0

    .line 283
    :pswitch_5
    const-string/jumbo p0, "updateOomAdj_stopService"

    return-object p0

    .line 281
    :pswitch_6
    const-string/jumbo p0, "updateOomAdj_uidIdle"

    return-object p0

    .line 279
    :pswitch_7
    const-string/jumbo p0, "updateOomAdj_removeTask"

    return-object p0

    .line 277
    :pswitch_8
    const-string/jumbo p0, "updateOomAdj_shell"

    return-object p0

    .line 275
    :pswitch_9
    const-string/jumbo p0, "updateOomAdj_backup"

    return-object p0

    .line 273
    :pswitch_a
    const-string/jumbo p0, "updateOomAdj_systemInit"

    return-object p0

    .line 271
    :pswitch_b
    const-string/jumbo p0, "updateOomAdj_shortFgs"

    return-object p0

    .line 269
    :pswitch_c
    const-string/jumbo p0, "updateOomAdj_processEnd"

    return-object p0

    .line 267
    :pswitch_d
    const-string/jumbo p0, "updateOomAdj_processBegin"

    return-object p0

    .line 265
    :pswitch_e
    const-string/jumbo p0, "updateOomAdj_allowlistChange"

    return-object p0

    .line 263
    :pswitch_f
    const-string/jumbo p0, "updateOomAdj_uiVisibility"

    return-object p0

    .line 261
    :pswitch_10
    const-string/jumbo p0, "updateOomAdj_removeProvider"

    return-object p0

    .line 259
    :pswitch_11
    const-string/jumbo p0, "updateOomAdj_getProvider"

    return-object p0

    .line 257
    :pswitch_12
    const-string/jumbo p0, "updateOomAdj_startService"

    return-object p0

    .line 255
    :pswitch_13
    const-string/jumbo p0, "updateOomAdj_unbindService"

    return-object p0

    .line 253
    :pswitch_14
    const-string/jumbo p0, "updateOomAdj_bindService"

    return-object p0

    .line 251
    :pswitch_15
    const-string/jumbo p0, "updateOomAdj_startReceiver"

    return-object p0

    .line 249
    :pswitch_16
    const-string/jumbo p0, "updateOomAdj_finishReceiver"

    return-object p0

    .line 247
    :pswitch_17
    const-string/jumbo p0, "updateOomAdj_activityChange"

    return-object p0

    .line 245
    :pswitch_18
    const-string/jumbo p0, "updateOomAdj_meh"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
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


# virtual methods
.method public applyLruAdjust(Ljava/util/ArrayList;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1168
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const/16 v5, 0x38e

    const/16 v6, 0x3e9

    const/16 v7, 0x384

    const/4 v8, 0x1

    const/16 v9, 0x2bc

    if-eqz v4, :cond_7

    .line 1169
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v3

    .line 1172
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v10, v10, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    const/16 v11, 0xa

    add-int/2addr v10, v11

    sub-int/2addr v2, v8

    move v8, v9

    :goto_0
    if-ltz v2, :cond_1a

    .line 1174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 1175
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1176
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1177
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v15

    if-gt v9, v15, :cond_0

    .line 1178
    sget v9, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v15, v9, :cond_0

    .line 1179
    invoke-virtual {v13, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    add-int/lit8 v8, v8, 0x1

    .line 1180
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_5

    .line 1181
    :cond_0
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-eqz v9, :cond_1

    if-ge v15, v6, :cond_2

    .line 1182
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v9

    if-eqz v9, :cond_1

    if-lt v15, v7, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    goto :goto_4

    .line 1183
    :cond_2
    :goto_1
    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-eqz v14, :cond_3

    .line 1186
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v12

    if-eqz v12, :cond_3

    move/from16 v17, v8

    :goto_2
    move v12, v11

    move v11, v7

    goto :goto_3

    .line 1189
    :cond_3
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v12

    if-eqz v12, :cond_4

    if-ge v11, v10, :cond_4

    add-int/lit8 v12, v11, 0x1

    add-int/lit16 v11, v11, 0x384

    move/from16 v17, v8

    goto :goto_3

    .line 1192
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    if-lt v12, v7, :cond_5

    .line 1193
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v14

    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v17, v8

    iget-wide v7, v12, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    add-long/2addr v14, v7

    cmp-long v7, v14, v3

    if-gez v7, :cond_6

    .line 1196
    iget v7, v12, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/lit16 v7, v7, 0x3ac

    goto :goto_2

    :cond_5
    move/from16 v17, v8

    .line 1199
    :cond_6
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    add-int/2addr v7, v5

    goto :goto_2

    .line 1201
    :goto_3
    invoke-virtual {v13, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1202
    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    move v11, v12

    :goto_4
    move/from16 v8, v17

    :goto_5
    add-int/lit8 v2, v2, -0x1

    const/16 v7, 0x384

    const/16 v9, 0x2bc

    goto/16 :goto_0

    .line 1214
    :cond_7
    iget v4, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1215
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v3, v4

    .line 1221
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v4, v2, v4

    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v4, v7

    if-le v4, v3, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    if-lez v7, :cond_9

    .line 1232
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v8

    goto :goto_7

    :cond_9
    move v7, v8

    :goto_7
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v7, v0

    if-ge v7, v8, :cond_a

    move v7, v8

    :cond_a
    add-int/2addr v3, v0

    sub-int/2addr v3, v8

    .line 1236
    div-int/2addr v3, v0

    if-ge v3, v8, :cond_b

    move v3, v8

    :cond_b
    sub-int/2addr v2, v8

    const/4 v0, -0x1

    const/16 v9, 0x389

    const/16 v10, 0x393

    move v11, v9

    move v12, v10

    const/4 v4, 0x0

    const/16 v10, 0x384

    const/16 v13, 0x2bc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v9, v5

    move v5, v2

    move v2, v0

    :goto_8
    if-ltz v5, :cond_1a

    .line 1247
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1248
    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move/from16 v18, v0

    .line 1249
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v1, 0x2bc

    if-gt v1, v0, :cond_c

    .line 1250
    sget v1, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v0, v1, :cond_c

    .line 1251
    invoke-virtual {v6, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    add-int/lit8 v13, v13, 0x1

    .line 1252
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v21, v3

    move/from16 v0, v18

    goto/16 :goto_10

    .line 1253
    :cond_c
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_19

    const/16 v1, 0x3e9

    if-lt v0, v1, :cond_19

    .line 1256
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1257
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    const-string v1, ")"

    move/from16 v19, v2

    const-string v2, " adj: "

    move/from16 v20, v13

    const/16 v13, 0x3e7

    packed-switch v17, :pswitch_data_0

    if-eq v11, v12, :cond_f

    add-int/lit8 v8, v18, 0x1

    if-lt v8, v3, :cond_e

    add-int/lit8 v8, v12, 0xa

    move v11, v12

    if-le v8, v13, :cond_d

    move v12, v13

    const/16 v18, 0x0

    goto :goto_9

    :cond_d
    const/16 v18, 0x0

    move v12, v8

    goto :goto_9

    :cond_e
    move/from16 v18, v8

    .line 1327
    :cond_f
    :goto_9
    invoke-virtual {v6, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1328
    invoke-virtual {v0, v11}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1329
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_10

    .line 1330
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Assigning empty LRU #"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (curEmptyAdj="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move/from16 v21, v3

    :goto_a
    move/from16 v0, v18

    move/from16 v2, v19

    move/from16 v13, v20

    goto/16 :goto_10

    .line 1264
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    move/from16 v21, v3

    if-eqz v13, :cond_14

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    .line 1267
    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v14, v8, :cond_13

    if-ne v15, v13, :cond_13

    if-le v3, v4, :cond_12

    if-ge v10, v9, :cond_11

    const/16 v4, 0x3e7

    if-ge v10, v4, :cond_11

    add-int/lit8 v16, v16, 0x1

    :cond_11
    move v4, v3

    :cond_12
    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    move v4, v3

    move v14, v8

    move v15, v13

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_17

    if-eq v10, v9, :cond_17

    add-int/lit8 v3, v19, 0x1

    if-lt v3, v7, :cond_16

    add-int/lit8 v3, v9, 0xa

    const/16 v8, 0x3e7

    if-le v3, v8, :cond_15

    :goto_c
    const/4 v3, 0x0

    :goto_d
    const/4 v10, 0x0

    goto :goto_e

    :cond_15
    move v8, v3

    goto :goto_c

    :cond_16
    move v8, v9

    move v9, v10

    goto :goto_d

    :cond_17
    move v8, v9

    move v9, v10

    move/from16 v10, v16

    move/from16 v3, v19

    :goto_e
    add-int v13, v9, v10

    .line 1300
    invoke-virtual {v6, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1301
    invoke-virtual {v0, v13}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1302
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_18

    .line 1303
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_LRU:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "Assigning activity LRU #"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (curCachedAdj="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curCachedImpAdj="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_18
    move/from16 v16, v3

    :goto_f
    move/from16 v2, v16

    move/from16 v0, v18

    move/from16 v13, v20

    move/from16 v16, v10

    move v10, v9

    move v9, v8

    goto :goto_10

    :cond_19
    move/from16 v19, v2

    move/from16 v21, v3

    move/from16 v20, v13

    goto/16 :goto_a

    :goto_10
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    move/from16 v3, v21

    const/16 v6, 0x3e9

    const/4 v8, 0x1

    goto/16 :goto_8

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 3577
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    move-result p0

    return p0
.end method

.method public applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v9, p5

    .line 3585
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3586
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v12

    .line 3588
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 3589
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 3594
    :cond_0
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 3595
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    .line 3598
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    .line 3599
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-eq v0, v3, :cond_6

    if-eqz p8, :cond_2

    .line 3600
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    if-eqz v0, :cond_2

    .line 3601
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3603
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setOomAdj(III)V

    .line 3606
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_4

    .line 3607
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adj "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3608
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3609
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    :cond_4
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    if-eqz v12, :cond_5

    .line 3613
    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    :cond_5
    const/16 v0, -0x2710

    .line 3615
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 3618
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    .line 3619
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v3

    if-nez v3, :cond_7

    .line 3620
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3621
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasStartedServices()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3622
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v2, v0, v14, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    move v0, v15

    goto/16 :goto_5

    .line 3625
    :cond_7
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    if-eq v3, v0, :cond_11

    .line 3626
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    .line 3627
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3628
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v5, :cond_8

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v8, :cond_9

    .line 3629
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting sched group of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3630
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3631
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    invoke-virtual {v1, v8, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v5, 0x3

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    const/4 v8, 0x5

    if-eq v0, v5, :cond_d

    const/4 v14, 0x4

    if-eq v0, v14, :cond_d

    if-eq v0, v8, :cond_a

    const/4 v8, -0x1

    goto :goto_1

    :cond_a
    const/16 v8, 0x8

    goto :goto_1

    :cond_b
    const/4 v8, 0x7

    goto :goto_1

    :cond_c
    move v8, v15

    .line 3652
    :cond_d
    :goto_1
    invoke-virtual {v1, v2, v8}, Lcom/android/server/am/OomAdjuster;->setAppAndChildProcessGroup(Lcom/android/server/am/ProcessRecord;I)V

    .line 3654
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v8

    if-ne v0, v5, :cond_f

    if-eq v3, v5, :cond_11

    .line 3658
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3659
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3661
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 3662
    invoke-static {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    .line 3665
    :cond_e
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/16 v5, -0xa

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_11

    .line 3669
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0, v8, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_f
    if-ne v3, v5, :cond_11

    if-eq v0, v5, :cond_11

    .line 3679
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3680
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3682
    invoke-static {v2, v15}, Lcom/android/server/am/ActivityManagerService;->setFifoPriority(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3683
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    goto :goto_2

    .line 3686
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v0, v3, v15}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    :goto_2
    if-eqz v8, :cond_11

    .line 3690
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    const/4 v3, -0x4

    invoke-virtual {v0, v8, v3}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 3694
    :goto_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v3, :cond_11

    .line 3695
    const-string v3, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed setting thread priority of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_11
    :goto_4
    move v0, v4

    .line 3699
    :goto_5
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v5

    if-eq v3, v5, :cond_12

    .line 3700
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    move v14, v4

    :goto_6
    move/from16 v3, p7

    goto :goto_7

    :cond_12
    move v14, v15

    goto :goto_6

    .line 3704
    :goto_7
    invoke-virtual {v1, v2, v3, v15, v13}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V

    .line 3706
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    if-eq v3, v5, :cond_13

    .line 3707
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 3708
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 3715
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3721
    :catch_2
    :cond_13
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v5, 0x14

    if-eq v3, v5, :cond_15

    .line 3723
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    .line 3722
    invoke-static {v3, v5}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_14
    move v8, v15

    goto :goto_9

    .line 3724
    :cond_15
    :goto_8
    invoke-virtual {v11, v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    .line 3726
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_16

    .line 3727
    sget-object v3, Lcom/android/server/am/AppProfiler;->TAG_PSS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process state change from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3728
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " next pss in "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 3730
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v16

    sub-long v6, v16, p3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3727
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move v8, v4

    .line 3733
    :goto_9
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v3, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3734
    :try_start_4
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 3735
    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move v6, v4

    .line 3736
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v7, v3

    move-object v3, v5

    :try_start_5
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v16, v7

    move-wide/from16 v6, p3

    .line 3735
    :try_start_6
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 3737
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3738
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    .line 3739
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    if-eq v4, v5, :cond_1e

    .line 3740
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_17

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v4, :cond_17

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_18

    .line 3741
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proc state change of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3743
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3744
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    :cond_18
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_a

    :cond_19
    move v4, v15

    .line 3747
    :goto_a
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    if-ge v8, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_b

    :cond_1a
    move v5, v15

    :goto_b
    if-eqz v4, :cond_1b

    if-nez v5, :cond_1b

    .line 3752
    invoke-virtual {v11, v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 3753
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v5, v12

    move v8, v13

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_c

    :cond_1b
    move-object v5, v12

    move v8, v13

    .line 3757
    :goto_c
    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3759
    invoke-virtual {v1, v11, v6, v7}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 3761
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 3762
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v6, 0xe

    if-lt v4, v6, :cond_1c

    .line 3763
    invoke-virtual {v11, v15}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_1c
    if-nez p2, :cond_1d

    .line 3766
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3767
    :try_start_7
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 3768
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    .line 3767
    invoke-virtual {v6, v2, v7}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 3769
    monitor-exit v4

    goto :goto_f

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_1d
    const/4 v6, 0x1

    .line 3771
    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    goto :goto_f

    :cond_1e
    move-object v5, v12

    move v8, v13

    .line 3773
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_20

    .line 3774
    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3777
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_d

    .line 3778
    :cond_1f
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 3781
    :goto_d
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v12

    sub-long v12, v9, v12

    cmp-long v4, v12, v6

    if-lez v4, :cond_22

    .line 3782
    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_f

    .line 3785
    :cond_20
    invoke-virtual {v11, v6}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3788
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_e

    .line 3789
    :cond_21
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3791
    :goto_e
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v12

    sub-long v12, v9, v12

    cmp-long v4, v12, v6

    if-lez v4, :cond_22

    .line 3792
    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3796
    :cond_22
    :goto_f
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v6

    if-eq v4, v6, :cond_23

    .line 3797
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 3800
    :cond_23
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v4

    .line 3801
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v6

    if-eq v4, v6, :cond_24

    .line 3802
    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v4, :cond_24

    .line 3803
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3804
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    if-eqz v14, :cond_26

    .line 3814
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_25

    sget-object v4, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changes in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    :cond_25
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3817
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v12

    .line 3816
    invoke-virtual {v4, v6, v7, v14, v12}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZ)V

    .line 3818
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_26

    sget-object v4, Lcom/android/server/am/ProcessList;->TAG_PROCESS_OBSERVERS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueued process change item for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": changes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " foreground="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3818
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_26
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 3829
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3832
    :cond_27
    invoke-virtual {v11, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    .line 3834
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v7, 0x3a

    if-nez v6, :cond_28

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3835
    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 3836
    :cond_28
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3837
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    .line 3838
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iget-object v9, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    .line 3837
    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle2(IIJ)V

    .line 3841
    :cond_29
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3846
    :cond_2a
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    .line 3847
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    .line 3848
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    if-ne v3, v4, :cond_2b

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v8, v4, :cond_2c

    :cond_2b
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3849
    invoke-virtual {v4, v5}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3850
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    .line 3851
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    .line 3852
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    move-object/from16 p0, v1

    move/from16 p2, v2

    move/from16 p4, v3

    move/from16 p1, v4

    move/from16 p3, v5

    move/from16 p5, v6

    move/from16 p6, v8

    .line 3850
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/OomAdjusterDebugLogger;->logProcStateChanged(IIIIII)V

    :cond_2c
    return v0

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    .line 3737
    :goto_10
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public final checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 892
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_0
    return v0
.end method

.method public collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 744
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 745
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 746
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_0

    move-object/from16 v7, p1

    .line 748
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 749
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 750
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 758
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_15

    .line 759
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 762
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    move-object/from16 v9, p3

    invoke-virtual {v9, v8, v7}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    goto :goto_2

    :cond_1
    move-object/from16 v9, p3

    .line 764
    :goto_2
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 765
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3
    const/16 v10, -0x384

    if-ltz v8, :cond_7

    .line 766
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v11

    const/4 v12, 0x2

    .line 767
    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 768
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    :cond_2
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_4
    if-eqz v12, :cond_6

    if-eq v12, v3, :cond_6

    .line 769
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 770
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_3

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 771
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v10

    if-gez v10, :cond_3

    goto :goto_5

    .line 774
    :cond_3
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v5, v10

    .line 775
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    const/16 v10, 0x20

    .line 778
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x8000080

    .line 779
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    .line 783
    :cond_5
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 784
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 786
    :cond_7
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 787
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_6
    if-ltz v11, :cond_b

    .line 788
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v12

    .line 789
    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_a

    if-eq v12, v3, :cond_a

    .line 790
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 791
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_8

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 792
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-gez v13, :cond_8

    goto :goto_7

    .line 795
    :cond_8
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    .line 796
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_7

    .line 799
    :cond_9
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 800
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 804
    :cond_b
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 805
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessList;->getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 806
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    sub-int/2addr v11, v6

    :goto_9
    if-ltz v11, :cond_e

    .line 808
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 809
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    .line 810
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_a

    .line 813
    :cond_d
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 814
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :goto_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 817
    :cond_e
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_14

    .line 818
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_b
    if-ltz v8, :cond_14

    .line 819
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    .line 821
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 822
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v6

    :goto_c
    if-ltz v12, :cond_13

    .line 823
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 824
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_d
    if-ltz v14, :cond_12

    .line 825
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 826
    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_11

    if-eq v15, v3, :cond_11

    .line 827
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 828
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-lt v4, v10, :cond_f

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 829
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-gez v4, :cond_f

    goto :goto_e

    .line 832
    :cond_f
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_e

    .line 835
    :cond_10
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 836
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_11
    :goto_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 758
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    .line 843
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    sub-int/2addr v0, v6

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_16

    .line 847
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 848
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 849
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 850
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 851
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_16
    return v5
.end method

.method public computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-wide/from16 v4, p5

    .line 1923
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p10, :cond_1

    .line 1925
    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1926
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v5

    if-ne v4, v5, :cond_0

    return v3

    .line 1932
    :cond_0
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 1933
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v3

    .line 1940
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialAdj(Lcom/android/server/am/ProcessRecord;)I

    move-result v8

    .line 1941
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v9

    .line 1942
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    .line 1946
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const-wide v12, 0x7fffffffffffffffL

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 1948
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    const/16 v12, 0x13

    if-nez v11, :cond_2

    .line 1949
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1950
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1951
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1952
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v0, 0x3e7

    .line 1953
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1954
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1955
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1956
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v3

    .line 1960
    :cond_2
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    const/4 v11, 0x0

    .line 1961
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1962
    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    const/4 v13, 0x2

    if-eqz p10, :cond_3

    if-nez p7, :cond_5

    .line 1965
    :cond_3
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    .line 1967
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v14

    .line 1968
    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v2

    goto :goto_0

    :cond_4
    move v14, v3

    :goto_0
    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v15, v14, v13, v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZII)V

    .line 1972
    :cond_5
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1973
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v11, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1975
    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1977
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v17

    const/4 v2, 0x3

    if-gtz v17, :cond_f

    .line 1980
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_6

    if-ne v15, v14, :cond_7

    .line 1981
    :cond_6
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Making fixed: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    :cond_7
    const-string v4, "fixed"

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1984
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1985
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1986
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1987
    invoke-virtual {v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v4, 0xff

    .line 1988
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1989
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v4, 0x1

    .line 1994
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v1, v6, :cond_8

    .line 1996
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1997
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1998
    const-string/jumbo v4, "pers-top-activity"

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 1999
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2001
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2002
    const-string/jumbo v4, "pers-top-ui"

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 2003
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2004
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2006
    :cond_a
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2007
    invoke-virtual {v0, v7}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    .line 2009
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2010
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_2

    :cond_b
    const/4 v4, 0x1

    .line 2011
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isShowingUiWhileDozing()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x5

    .line 2013
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2014
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2017
    :cond_c
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2018
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2019
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2021
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v8, :cond_d

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v9, :cond_e

    :cond_d
    const/16 v18, 0x1

    goto :goto_3

    :cond_e
    return v3

    :goto_3
    return v18

    :cond_f
    const/16 v18, 0x1

    const/16 v19, 0x5

    .line 2024
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2026
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    if-eqz p7, :cond_10

    .line 2033
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialCapability(Lcom/android/server/am/ProcessRecord;)I

    move-result v20

    goto :goto_4

    :cond_10
    move/from16 v20, v3

    :goto_4
    move/from16 v22, v3

    if-ne v1, v6, :cond_14

    const/4 v12, 0x2

    if-ne v2, v12, :cond_14

    .line 2039
    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->useTopSchedGroupForTopProcess()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2041
    const-string/jumbo v12, "top-activity"

    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v12, 0x3

    goto :goto_5

    .line 2046
    :cond_11
    const-string v12, "intermediate-top-activity"

    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v12, 0x2

    .line 2050
    :goto_5
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v24, :cond_13

    if-ne v15, v14, :cond_12

    goto :goto_6

    :cond_12
    move/from16 v26, v2

    goto :goto_7

    .line 2051
    :cond_13
    :goto_6
    sget-object v13, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v2

    const-string v2, "Making top: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object v3, v11

    move v13, v12

    move/from16 v11, v18

    move/from16 v2, v22

    const/4 v12, 0x2

    goto/16 :goto_9

    :cond_14
    move/from16 v26, v2

    .line 2053
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2056
    const-string/jumbo v2, "running-remote-anim"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2058
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_15

    if-ne v15, v14, :cond_16

    .line 2059
    :cond_15
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making running remote anim: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/16 v2, 0x64

    move-object v3, v11

    move/from16 v11, v22

    move/from16 v12, v26

    const/4 v13, 0x3

    goto/16 :goto_9

    .line 2061
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2065
    const-string v2, "instrumentation"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    or-int/lit8 v20, v20, 0x10

    .line 2068
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_18

    if-ne v15, v14, :cond_19

    .line 2069
    :cond_18
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making instrumentation: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move-object v3, v11

    move/from16 v2, v22

    move v11, v2

    const/4 v12, 0x4

    const/4 v13, 0x2

    goto/16 :goto_9

    .line 2071
    :cond_1a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast([I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2077
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    aget v12, v2, v22

    .line 2078
    const-string v2, "broadcast"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2080
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_1b

    if-ne v15, v14, :cond_1c

    .line 2081
    :cond_1b
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Making broadcast: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/16 v2, 0xb

    move-object v3, v11

    move v13, v12

    move/from16 v11, v22

    move v12, v2

    move v2, v11

    goto/16 :goto_9

    .line 2083
    :cond_1d
    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v2

    if-lez v2, :cond_21

    .line 2087
    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v12, 0x2

    goto :goto_8

    :cond_1e
    move/from16 v12, v22

    .line 2089
    :goto_8
    const-string v2, "exec-service"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2091
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_1f

    if-ne v15, v14, :cond_20

    .line 2092
    :cond_1f
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Making exec-service: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move-object v3, v11

    move v13, v12

    move/from16 v2, v22

    move v11, v2

    const/16 v12, 0xa

    goto :goto_9

    :cond_21
    if-ne v1, v6, :cond_24

    .line 2097
    const-string/jumbo v2, "top-sleeping"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2099
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_22

    if-ne v15, v14, :cond_23

    .line 2100
    :cond_22
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making top (sleeping): "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    move-object v3, v11

    move/from16 v2, v22

    move v11, v2

    move v13, v11

    move/from16 v12, v26

    goto :goto_9

    :cond_24
    if-eqz p10, :cond_25

    .line 2109
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2110
    :cond_25
    const-string v2, "cch-empty"

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2112
    :cond_26
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_27

    if-ne v15, v14, :cond_28

    .line 2113
    :cond_27
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making empty: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    move/from16 v2, p2

    move-object v3, v11

    move/from16 v11, v22

    move v13, v11

    const/16 v12, 0x13

    :goto_9
    move/from16 v27, v10

    if-ne v1, v6, :cond_29

    move/from16 v10, v18

    goto :goto_a

    :cond_29
    move/from16 v10, v22

    :goto_a
    if-nez v10, :cond_2a

    .line 2119
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v28

    if-eqz v28, :cond_2a

    move/from16 v28, v8

    .line 2120
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object/from16 v21, v3

    move/from16 v31, v9

    move/from16 v16, v26

    move/from16 v32, v27

    move/from16 v30, v28

    const/4 v3, 0x2

    move v9, v2

    const/4 v2, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    move/from16 v39, v14

    move-object v14, v7

    move v7, v15

    move/from16 v15, v39

    .line 2124
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v8

    .line 2125
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v10

    .line 2126
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v11

    .line 2127
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v12

    .line 2128
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v9

    .line 2129
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdjType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v13, v9

    goto :goto_b

    :cond_2a
    move/from16 v21, v14

    move-object v14, v7

    move v7, v15

    move/from16 v15, v21

    move-object/from16 v21, v3

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v27

    const/4 v3, 0x2

    move v9, v2

    const/4 v2, 0x0

    move v8, v9

    :goto_b
    const/16 v9, 0x12

    if-le v12, v9, :cond_2d

    .line 2132
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v16

    if-eqz v16, :cond_2d

    .line 2134
    const-string v12, "cch-rec"

    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2135
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_2b

    if-ne v7, v15, :cond_2c

    .line 2136
    :cond_2b
    sget-object v12, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Raise procstate to cached recent: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const/16 v12, 0x12

    .line 2142
    :cond_2d
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    .line 2143
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v9

    move/from16 v23, v13

    move-object/from16 v13, v21

    if-eqz v2, :cond_2e

    .line 2145
    invoke-virtual {v13, v4, v5}, Lcom/android/server/am/ProcessServiceRecord;->areAllShortForegroundServicesProcstateTimedOut(J)Z

    move-result v21

    if-nez v21, :cond_2e

    move/from16 v21, v18

    goto :goto_c

    :cond_2e
    move/from16 v21, v22

    :goto_c
    const/16 v26, 0x10

    const/16 v6, 0xc8

    const/4 v3, 0x4

    if-gt v8, v6, :cond_30

    if-le v12, v3, :cond_2f

    goto :goto_d

    :cond_2f
    move/from16 v21, v22

    goto :goto_f

    :cond_30
    :goto_d
    if-eqz v2, :cond_31

    if-eqz v9, :cond_31

    .line 2159
    const-string v2, "fg-service"

    move/from16 v16, v3

    move v9, v6

    move/from16 v21, v26

    goto :goto_e

    :cond_31
    if-eqz v21, :cond_32

    .line 2175
    const-string v2, "fg-service-short"

    const/16 v9, 0xe2

    move/from16 v16, v3

    move/from16 v21, v22

    goto :goto_e

    .line 2177
    :cond_32
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2180
    const-string v2, "has-overlay-ui"

    move v9, v6

    move/from16 v21, v22

    const/16 v16, 0x6

    goto :goto_e

    :cond_33
    move/from16 v9, v22

    move/from16 v16, v9

    move/from16 v21, v16

    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_36

    .line 2186
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2189
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_34

    if-ne v7, v15, :cond_35

    .line 2190
    :cond_34
    sget-object v8, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    move v8, v9

    move/from16 v12, v16

    const/16 v23, 0x2

    .line 2199
    :cond_36
    :goto_f
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x32

    if-le v8, v2, :cond_3c

    .line 2200
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v33

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v3, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v33, v33, v2

    cmp-long v2, v33, v4

    if-gtz v2, :cond_38

    .line 2201
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_37

    goto :goto_11

    :cond_37
    move v9, v3

    move/from16 v16, v7

    move/from16 v6, v18

    move/from16 v7, v22

    :goto_10
    const/16 v17, 0x3

    const/16 v25, 0x4

    const/16 v27, 0x6

    goto :goto_13

    :cond_38
    const/4 v3, 0x2

    .line 2202
    :goto_11
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2204
    const-string v2, "fg-service-act"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v8, 0x32

    goto :goto_12

    .line 2209
    :cond_39
    const-string v2, "fg-service-short-act"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v2, 0x33

    move v8, v2

    .line 2211
    :goto_12
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3a

    if-ne v7, v15, :cond_3b

    .line 2212
    :cond_3a
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    :cond_3b
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v2

    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v16, v7

    iget-wide v6, v9, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v6

    move/from16 v6, v18

    move/from16 v7, v22

    const/4 v9, 0x2

    const/16 v17, 0x3

    const/16 v25, 0x4

    const/16 v27, 0x6

    .line 2214
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    goto :goto_13

    :cond_3c
    move/from16 v16, v7

    move/from16 v6, v18

    move/from16 v7, v22

    const/4 v9, 0x2

    goto :goto_10

    .line 2222
    :goto_13
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/16 v2, 0x34

    if-le v8, v2, :cond_3d

    .line 2224
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v33, v3

    iget-wide v2, v5, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long v3, v33, v2

    cmp-long v2, v3, p5

    if-gtz v2, :cond_3e

    .line 2226
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    if-gt v2, v9, :cond_3d

    goto :goto_14

    :cond_3d
    move/from16 v2, v16

    goto :goto_15

    .line 2232
    :cond_3e
    :goto_14
    const-string/jumbo v2, "top-ej-act"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2233
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    move/from16 v8, v16

    if-nez v2, :cond_3f

    if-ne v8, v15, :cond_40

    .line 2234
    :cond_3f
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to recent fg for EJ: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    :cond_40
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p5

    const/16 v18, 0x34

    .line 2236
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move v2, v8

    move/from16 v8, v18

    :goto_15
    const/16 v3, 0x8

    const/16 v4, 0xc8

    if-gt v8, v4, :cond_41

    if-le v12, v3, :cond_44

    .line 2243
    :cond_41
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 2249
    const-string v5, "force-imp"

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2252
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_42

    if-ne v2, v15, :cond_43

    .line 2253
    :cond_42
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise to force imp: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    move v12, v3

    move v8, v4

    move/from16 v23, v9

    .line 2258
    :cond_44
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v4

    if-eqz v4, :cond_4a

    const/16 v4, 0x190

    if-le v8, v4, :cond_47

    .line 2263
    const-string v5, "heavy"

    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2264
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_45

    if-ne v2, v15, :cond_46

    .line 2265
    :cond_45
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to heavy: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    move v8, v4

    move v3, v7

    goto :goto_16

    :cond_47
    move/from16 v3, v23

    :goto_16
    const/16 v4, 0xd

    if-le v12, v4, :cond_4b

    .line 2270
    const-string v4, "heavy"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2271
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_48

    if-ne v2, v15, :cond_49

    .line 2272
    :cond_48
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to heavy: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    const/16 v12, 0xd

    goto :goto_17

    :cond_4a
    move/from16 v3, v23

    .line 2277
    :cond_4b
    :goto_17
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-eqz v4, :cond_51

    const/16 v4, 0x258

    if-le v8, v4, :cond_4e

    .line 2283
    const-string v3, "home"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2284
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_4c

    if-ne v2, v15, :cond_4d

    .line 2285
    :cond_4c
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    const/16 v8, 0x258

    move v3, v7

    :cond_4e
    const/16 v4, 0xe

    if-le v12, v4, :cond_51

    .line 2290
    const-string v4, "home"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2291
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_4f

    if-ne v2, v15, :cond_50

    .line 2292
    :cond_4f
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to home: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    const/16 v12, 0xe

    .line 2296
    :cond_51
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v4

    const/16 v5, 0x2bc

    move/from16 v18, v6

    const/16 v6, 0xf

    if-eqz v4, :cond_5c

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v4

    if-eqz v4, :cond_5c

    if-lt v12, v6, :cond_54

    .line 2303
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    if-ne v4, v6, :cond_54

    .line 2304
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v22

    sget-wide v33, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v22, v22, v33

    cmp-long v4, v22, p5

    if-gtz v4, :cond_54

    .line 2307
    const-string/jumbo v3, "previous-expired"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2308
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_52

    if-ne v2, v15, :cond_53

    .line 2309
    :cond_52
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expire prev adj: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    move v9, v2

    move v12, v6

    move v3, v7

    :goto_18
    const/16 v6, 0x8

    goto/16 :goto_1b

    :cond_54
    if-le v8, v5, :cond_57

    .line 2315
    const-string/jumbo v3, "previous"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2316
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_55

    if-ne v2, v15, :cond_56

    .line 2317
    :cond_55
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Raise adj to prev: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    move/from16 v19, v5

    move v8, v7

    goto :goto_19

    :cond_57
    move/from16 v19, v8

    move v8, v3

    :goto_19
    if-le v12, v6, :cond_5a

    .line 2322
    const-string/jumbo v3, "previous"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2323
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_58

    if-ne v2, v15, :cond_59

    .line 2324
    :cond_58
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to prev: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    move v12, v6

    .line 2328
    :cond_5a
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ne v3, v6, :cond_5b

    .line 2329
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    goto :goto_1a

    :cond_5b
    move-wide/from16 v3, p5

    .line 2333
    :goto_1a
    sget-wide v22, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v3, v3, v22

    move v9, v2

    move-wide v2, v3

    const/16 v6, 0x8

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move v3, v8

    move/from16 v8, v19

    goto :goto_1b

    :cond_5c
    move v9, v2

    goto :goto_18

    :goto_1b
    if-eqz p7, :cond_5d

    .line 2347
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2348
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2349
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v39, v3

    move v3, v2

    move/from16 v2, v39

    goto :goto_1c

    :cond_5d
    move v2, v3

    move v3, v12

    .line 2351
    :goto_1c
    invoke-virtual {v14, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2352
    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2354
    invoke-virtual {v14, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 2355
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2357
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->isBackupProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_65

    const/16 v4, 0x12c

    if-le v8, v4, :cond_62

    .line 2360
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v4, :cond_5e

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_BACKUP:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    if-le v3, v6, :cond_5f

    move v3, v6

    .line 2365
    :cond_5f
    const-string v4, "backup"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2366
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_60

    if-ne v9, v15, :cond_61

    .line 2367
    :cond_60
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    const/16 v8, 0x12c

    :cond_62
    const/16 v4, 0x9

    if-le v3, v4, :cond_65

    .line 2372
    const-string v3, "backup"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2373
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_63

    if-ne v9, v15, :cond_64

    .line 2374
    :cond_63
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise procstate to backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    const/16 v3, 0x9

    .line 2379
    :cond_65
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 2381
    invoke-virtual {v14, v7}, Lcom/android/server/am/ProcessStateRecord;->setScheduleLikeTopApp(Z)V

    .line 2383
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v6, v2

    move v2, v8

    move/from16 v12, v20

    move v8, v4

    :goto_1d
    if-ltz v8, :cond_81

    if-gtz v2, :cond_67

    if-eqz v6, :cond_67

    const/4 v5, 0x2

    if-le v3, v5, :cond_66

    goto :goto_1f

    :cond_66
    move/from16 v16, v15

    move v15, v5

    :goto_1e
    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    move-object/from16 v20, v13

    const/16 v13, 0x1f4

    goto/16 :goto_33

    .line 2388
    :cond_67
    :goto_1f
    invoke-virtual {v13, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    .line 2389
    iget-boolean v7, v5, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v7, :cond_73

    move/from16 v7, v18

    .line 2390
    invoke-virtual {v14, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v7, 0xa

    if-le v3, v7, :cond_6a

    .line 2393
    const-string/jumbo v3, "started-services"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2394
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_68

    if-ne v9, v15, :cond_69

    .line 2395
    :cond_68
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to started service: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    const/16 v7, 0xa

    goto :goto_20

    :cond_6a
    move v7, v3

    .line 2399
    :goto_20
    iget-boolean v3, v5, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v3, :cond_6c

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-nez v3, :cond_6c

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_6b

    .line 2405
    const-string v3, "cch-started-ui-services"

    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_6b
    move-object v0, v5

    move v3, v7

    move-object/from16 v20, v13

    goto/16 :goto_23

    .line 2408
    :cond_6c
    iget-boolean v3, v5, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v3, :cond_6e

    iget-wide v3, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-wide/from16 v33, v3

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v3, v33, v3

    cmp-long v3, p5, v3

    if-gez v3, :cond_6d

    goto :goto_21

    :cond_6d
    move-object/from16 v35, v5

    move-object/from16 v20, v13

    const/16 v13, 0x1f4

    goto :goto_22

    .line 2415
    :cond_6e
    :goto_21
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez v3, :cond_6d

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_71

    .line 2417
    const-string/jumbo v2, "started-services"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2418
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_6f

    if-ne v9, v15, :cond_70

    .line 2419
    :cond_6f
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to started service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    :cond_70
    iget-wide v2, v5, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v35, v5

    move-object/from16 v20, v13

    const/16 v13, 0x1f4

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move v2, v13

    goto :goto_22

    :cond_71
    move-object/from16 v35, v5

    move-object/from16 v20, v13

    move v13, v3

    :goto_22
    if-le v2, v13, :cond_72

    .line 2430
    const-string v0, "cch-started-services"

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_72
    move v3, v7

    move-object/from16 v0, v35

    goto :goto_23

    :cond_73
    move-object/from16 v20, v13

    move-object v0, v5

    .line 2435
    :goto_23
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_78

    .line 2436
    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2437
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v5

    if-eqz v5, :cond_78

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_74

    const/4 v5, 0x1

    goto :goto_24

    :cond_74
    const/4 v5, 0x0

    :goto_24
    or-int v5, v21, v5

    or-int/lit8 v7, v5, 0x40

    const/4 v13, 0x1

    .line 2448
    invoke-virtual {v14, v13}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v19

    if-eqz v19, :cond_77

    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_75

    const/4 v5, 0x2

    goto :goto_25

    :cond_75
    const/4 v5, 0x0

    :goto_25
    or-int/2addr v5, v7

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_76

    move/from16 v4, v25

    goto :goto_26

    :cond_76
    const/4 v4, 0x0

    :goto_26
    or-int/2addr v4, v5

    :goto_27
    move/from16 v21, v4

    goto :goto_28

    :cond_77
    or-int/lit8 v4, v5, 0x46

    goto :goto_27

    :cond_78
    :goto_28
    if-nez p10, :cond_79

    move/from16 v19, v8

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    move/from16 v16, v15

    const/4 v15, 0x2

    const/16 v18, 0x1

    :goto_29
    const/16 v29, 0xa

    goto/16 :goto_32

    .line 2471
    :cond_79
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2472
    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2473
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2474
    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2476
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2477
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_2a
    if-ltz v4, :cond_80

    if-gtz v2, :cond_7b

    if-eqz v6, :cond_7b

    const/4 v5, 0x2

    if-le v3, v5, :cond_7a

    goto :goto_2c

    :cond_7a
    move/from16 v16, v15

    move v15, v5

    :goto_2b
    move/from16 v19, v8

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    goto :goto_29

    .line 2482
    :cond_7b
    :goto_2c
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move v7, v6

    move v6, v3

    const/4 v3, 0x0

    .line 2484
    :goto_2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_7f

    if-gtz v2, :cond_7d

    if-eqz v7, :cond_7d

    const/4 v13, 0x2

    if-le v6, v13, :cond_7c

    goto :goto_2f

    :cond_7c
    move/from16 v16, v15

    move v15, v13

    :goto_2e
    move-object/from16 v23, v0

    move/from16 v24, v4

    move/from16 v19, v8

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    const/16 v29, 0xa

    goto/16 :goto_31

    :cond_7d
    const/4 v13, 0x2

    .line 2490
    :goto_2f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    move-object/from16 v19, v0

    .line 2491
    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v1, :cond_7e

    move/from16 v28, v3

    move/from16 v24, v4

    move-object/from16 v27, v5

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    move/from16 v16, v15

    move-object/from16 v23, v19

    const/4 v15, 0x2

    const/16 v29, 0xa

    move/from16 v19, v8

    goto :goto_30

    :cond_7e
    const/4 v12, 0x1

    move-object v1, v13

    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v28, v3

    move/from16 v24, v4

    move-object/from16 v27, v5

    move/from16 v36, v9

    move/from16 v37, v10

    move/from16 v38, v11

    move/from16 v16, v15

    move-object/from16 v23, v19

    const/4 v15, 0x2

    const/16 v29, 0xa

    move/from16 v11, p2

    move-wide/from16 v4, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v3, v0

    move/from16 v19, v8

    move-object/from16 v0, p0

    move/from16 v8, p7

    .line 2496
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object v1, v2

    .line 2499
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    .line 2500
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    .line 2501
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v7

    .line 2502
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v12

    :goto_30
    add-int/lit8 v3, v28, 0x1

    move/from16 v15, v16

    move/from16 v8, v19

    move-object/from16 v0, v23

    move/from16 v4, v24

    move-object/from16 v5, v27

    move/from16 v9, v36

    move/from16 v10, v37

    move/from16 v11, v38

    const/16 v27, 0x6

    goto/16 :goto_2d

    :cond_7f
    move/from16 v16, v15

    const/4 v15, 0x2

    goto/16 :goto_2e

    :goto_31
    add-int/lit8 v4, v24, -0x1

    move v3, v6

    move v6, v7

    move/from16 v15, v16

    move/from16 v8, v19

    move-object/from16 v0, v23

    move/from16 v9, v36

    move/from16 v10, v37

    move/from16 v11, v38

    const/16 v27, 0x6

    goto/16 :goto_2a

    :cond_80
    move/from16 v16, v15

    const/4 v15, 0x2

    goto/16 :goto_2b

    :goto_32
    add-int/lit8 v8, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v15, v16

    move-object/from16 v13, v20

    move/from16 v9, v36

    move/from16 v10, v37

    move/from16 v11, v38

    const/4 v7, 0x0

    const/16 v27, 0x6

    goto/16 :goto_1d

    :cond_81
    move/from16 v16, v15

    const/4 v15, 0x2

    goto/16 :goto_1e

    .line 2507
    :goto_33
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2508
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v6

    move v6, v3

    move v3, v5

    move v5, v2

    :goto_34
    move v2, v4

    if-ltz v2, :cond_82

    if-gtz v5, :cond_83

    if-eqz v3, :cond_83

    if-le v6, v15, :cond_82

    goto :goto_35

    :cond_82
    move-object/from16 v19, v0

    move v15, v13

    move/from16 v7, v16

    move/from16 v8, v36

    move-object/from16 v0, p0

    goto/16 :goto_3d

    .line 2513
    :cond_83
    :goto_35
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v4

    if-eqz p10, :cond_85

    .line 2516
    invoke-virtual {v14, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2517
    invoke-virtual {v14, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2518
    invoke-virtual {v14, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2519
    invoke-virtual {v14, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2521
    iget-object v7, v4, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_36
    if-ltz v7, :cond_85

    if-gtz v5, :cond_84

    if-eqz v3, :cond_84

    if-le v6, v15, :cond_85

    .line 2526
    :cond_84
    iget-object v3, v4, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    move-object v1, v3

    .line 2527
    iget-object v3, v1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x1

    move/from16 v19, v13

    const/4 v13, 0x0

    move/from16 v11, p2

    move-object/from16 v6, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v27, v7

    move/from16 v15, v19

    move-object/from16 v2, p1

    move/from16 v7, p4

    move-wide/from16 v4, p5

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    .line 2528
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-object v1, v2

    .line 2531
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    .line 2532
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    .line 2533
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v3

    .line 2534
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v12

    add-int/lit8 v7, v27, -0x1

    move v13, v15

    move-object/from16 v0, v19

    move/from16 v2, v23

    move-object/from16 v4, v25

    const/4 v15, 0x2

    goto :goto_36

    :goto_37
    move v13, v3

    move v3, v5

    goto :goto_38

    :cond_85
    move-object/from16 v19, v0

    move/from16 v23, v2

    move-object/from16 v25, v4

    move v15, v13

    move-object/from16 v0, p0

    goto :goto_37

    .line 2540
    :goto_38
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_8c

    if-lez v3, :cond_88

    const/4 v7, 0x0

    .line 2543
    invoke-virtual {v14, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2545
    const-string v2, "ext-provider"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move-object/from16 v2, v25

    .line 2546
    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2547
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    move/from16 v7, v16

    move/from16 v8, v36

    if-nez v2, :cond_86

    if-ne v8, v7, :cond_87

    .line 2548
    :cond_86
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to external provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    const/4 v3, 0x0

    const/4 v13, 0x2

    :goto_39
    const/4 v2, 0x6

    goto :goto_3a

    :cond_88
    move/from16 v7, v16

    move/from16 v8, v36

    goto :goto_39

    :goto_3a
    if-le v6, v2, :cond_8b

    .line 2554
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2555
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_89

    if-ne v8, v7, :cond_8a

    .line 2556
    :cond_89
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to external provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    move v6, v2

    :cond_8b
    :goto_3b
    move v5, v3

    move v3, v13

    goto :goto_3c

    :cond_8c
    move/from16 v7, v16

    move/from16 v8, v36

    const/4 v2, 0x6

    goto :goto_3b

    :goto_3c
    add-int/lit8 v4, v23, -0x1

    move/from16 v16, v7

    move/from16 v36, v8

    move v13, v15

    move-object/from16 v0, v19

    const/4 v15, 0x2

    goto/16 :goto_34

    .line 2563
    :goto_3d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v9

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v4, v3

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v9, v2

    cmp-long v2, v9, p5

    if-lez v2, :cond_93

    const/16 v9, 0x2bc

    if-le v5, v9, :cond_8f

    .line 2567
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2568
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_8d

    if-ne v8, v7, :cond_8e

    .line 2569
    :cond_8d
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to recent provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    :cond_8e
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p5

    .line 2572
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move v10, v9

    const/4 v9, 0x0

    :goto_3e
    const/16 v11, 0xf

    goto :goto_3f

    :cond_8f
    move v9, v4

    move v10, v5

    goto :goto_3e

    :goto_3f
    if-le v6, v11, :cond_92

    .line 2577
    const-string/jumbo v2, "recent-provider"

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2578
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_90

    if-ne v8, v7, :cond_91

    .line 2579
    :cond_90
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to recent provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :cond_91
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v4

    move-wide/from16 v4, p5

    .line 2582
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V

    move-wide v2, v4

    move v5, v10

    move v6, v11

    :goto_40
    const/16 v4, 0x13

    goto :goto_41

    :cond_92
    move-wide/from16 v2, p5

    move v5, v10

    goto :goto_40

    :cond_93
    move-wide/from16 v2, p5

    move v9, v4

    goto :goto_40

    :goto_41
    if-lt v6, v4, :cond_95

    .line 2588
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 2591
    const-string v4, "cch-client-act"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v26, 0x11

    :goto_42
    move/from16 v6, v26

    goto :goto_43

    .line 2592
    :cond_94
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2596
    const-string v4, "cch-as-act"

    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_42

    :cond_95
    :goto_43
    if-ne v5, v15, :cond_9c

    if-eqz p4, :cond_9b

    if-nez p7, :cond_9b

    .line 2602
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v7, v7, 0x3

    if-le v4, v7, :cond_96

    move/from16 v4, v18

    goto :goto_44

    :cond_96
    const/4 v4, 0x0

    :goto_44
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 2603
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2604
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 2609
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2610
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v7

    goto :goto_45

    :cond_97
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v7

    .line 2618
    :goto_45
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v4}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v4

    if-eqz v4, :cond_98

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_46

    .line 2619
    :cond_98
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    float-to-double v10, v4

    .line 2620
    :goto_46
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move v13, v5

    .line 2621
    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v10

    .line 2623
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->isLastMemoryLevelNormal()Z

    move-result v10

    if-nez v10, :cond_99

    long-to-double v7, v7

    cmpl-double v4, v7, v4

    if-ltz v4, :cond_99

    move/from16 v4, v18

    .line 2624
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2625
    invoke-virtual {v14, v4}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_47

    :cond_99
    move/from16 v4, v18

    .line 2628
    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_47

    :cond_9a
    move v13, v5

    const/4 v7, 0x0

    .line 2632
    invoke-virtual {v14, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    goto :goto_47

    :cond_9b
    move v13, v5

    .line 2635
    :goto_47
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v4

    if-eqz v4, :cond_9d

    const/16 v5, 0x320

    goto :goto_48

    :cond_9c
    move v13, v5

    :cond_9d
    move v5, v13

    .line 2641
    :goto_48
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_9e

    or-int v12, v12, v21

    .line 2645
    :cond_9e
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v4

    or-int/2addr v4, v12

    move/from16 v10, v37

    .line 2646
    invoke-static {v1, v2, v3, v10}, Lcom/android/server/am/OomAdjuster;->getCpuCapability(Lcom/android/server/am/ProcessRecord;JZ)I

    move-result v2

    or-int/2addr v2, v4

    const/4 v3, 0x5

    if-le v6, v3, :cond_9f

    and-int/lit8 v2, v2, -0x11

    .line 2653
    :cond_9f
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 2658
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2659
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2660
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    const/16 v22, 0x0

    return v22

    .line 2669
    :cond_a0
    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    move/from16 v11, v38

    .line 2670
    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    .line 2671
    invoke-virtual {v14, v10}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2672
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v2, v30

    .line 2674
    invoke-virtual {v0, v1, v5, v2, v9}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v3

    move/from16 v4, v31

    .line 2675
    invoke-virtual {v0, v1, v6, v4}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    .line 2676
    invoke-virtual {v0, v14, v3}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 2679
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-lt v0, v2, :cond_a1

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-lt v0, v4, :cond_a1

    .line 2680
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    move/from16 v1, v32

    if-eq v0, v1, :cond_a2

    :cond_a1
    const/16 v18, 0x1

    goto :goto_49

    :cond_a2
    const/16 v22, 0x0

    return v22

    :goto_49
    return v18
.end method

.method public computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 20

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move/from16 v13, p13

    .line 3214
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    return v14

    .line 3219
    :cond_0
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3220
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v1, v12, :cond_1

    return v14

    :cond_1
    if-eqz p12, :cond_4

    if-eqz p9, :cond_3

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-wide/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move/from16 v2, p11

    move-object/from16 p9, v0

    move-object/from16 v0, p0

    .line 3228
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-object v6, v1

    :cond_2
    move-object/from16 v2, p9

    goto :goto_0

    :cond_3
    move-object/from16 p9, v0

    move-object v6, v1

    if-eqz p12, :cond_2

    .line 3231
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v2, p9

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3232
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 3235
    :goto_0
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v5, p8

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    return v14

    :cond_4
    move-object v2, v0

    move-object v6, v1

    move-object/from16 v0, p0

    .line 3241
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    .line 3242
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    .line 3244
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    .line 3245
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v5

    .line 3246
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v7

    .line 3247
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    .line 3254
    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3255
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v10, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 3260
    invoke-virtual {v0, v6}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v16

    or-int v16, v8, v16

    .line 3262
    invoke-static {v11, v6}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I

    move-result v17

    or-int v16, v16, v17

    const/16 v14, 0x10

    if-lt v3, v14, :cond_6

    const/16 v3, 0x13

    .line 3269
    :cond_6
    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v14

    move-object/from16 p9, v2

    if-eqz v14, :cond_7

    .line 3271
    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3272
    invoke-virtual {v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v18

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3273
    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v2

    or-int v2, v18, v2

    move/from16 p5, v8

    iget v8, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    .line 3271
    invoke-virtual {v14, v12, v13, v2, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v2

    if-eqz v2, :cond_8

    return v12

    :cond_7
    move/from16 p5, v8

    :cond_8
    const/4 v2, 0x4

    const/4 v8, 0x3

    if-nez v13, :cond_b

    .line 3284
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v12

    if-nez v12, :cond_a

    .line 3285
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v12

    if-nez v12, :cond_a

    if-le v3, v8, :cond_a

    if-ne v3, v2, :cond_9

    .line 3288
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_1

    :cond_9
    const/4 v12, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v12, 0x1

    .line 3284
    :goto_2
    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 3292
    :cond_b
    const-string/jumbo v12, "provider"

    if-le v4, v1, :cond_f

    .line 3293
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v14

    if-nez v14, :cond_c

    const/16 v14, 0xc8

    if-le v1, v14, :cond_c

    .line 3295
    const-string v1, "cch-ui-provider"

    move/from16 v18, v4

    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    .line 3297
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3298
    invoke-virtual {v15, v1, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    return v14

    :cond_d
    move/from16 v18, v1

    move-object v1, v12

    goto :goto_3

    .line 3305
    :goto_4
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v19

    if-nez v19, :cond_e

    if-eqz v13, :cond_e

    return v14

    :cond_e
    move/from16 v14, v18

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    move v14, v4

    :goto_5
    const/4 v8, 0x2

    if-gt v3, v2, :cond_12

    if-nez v1, :cond_10

    goto :goto_6

    :cond_10
    move-object v12, v1

    :goto_6
    if-ne v3, v8, :cond_11

    move-object v1, v12

    const/4 v3, 0x3

    goto :goto_7

    :cond_11
    move-object v1, v12

    const/4 v3, 0x5

    :cond_12
    :goto_7
    if-nez v13, :cond_13

    .line 3323
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v3, v2}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    :cond_13
    if-le v5, v3, :cond_15

    .line 3327
    invoke-virtual {v15, v3, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v12, 0x1

    return v12

    :cond_14
    move v2, v3

    :goto_8
    const/4 v12, 0x1

    goto :goto_9

    :cond_15
    move v2, v5

    goto :goto_8

    .line 3332
    :goto_9
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v8

    if-le v8, v7, :cond_16

    const/4 v8, 0x2

    goto :goto_a

    :cond_16
    move v8, v7

    :goto_a
    if-eqz v1, :cond_17

    if-nez v13, :cond_17

    .line 3336
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3339
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3340
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3341
    iget-object v3, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3342
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_18

    if-ne v10, v9, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v12, p2

    :goto_b
    const/4 v1, 0x5

    goto :goto_d

    .line 3343
    :cond_18
    :goto_c
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raise to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", due to "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3346
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3343
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_d
    if-le v2, v1, :cond_19

    and-int/lit8 v16, v16, -0x11

    :cond_19
    move/from16 v1, v16

    if-eqz v13, :cond_1c

    if-lt v14, v4, :cond_1a

    if-lt v2, v5, :cond_1a

    if-le v8, v7, :cond_1b

    :cond_1a
    const/4 v3, 0x1

    goto :goto_e

    :cond_1b
    and-int/lit16 v3, v1, -0x81

    move/from16 v6, p5

    and-int/lit16 v6, v6, -0x81

    if-eq v3, v6, :cond_1c

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_1c

    const/4 v3, 0x1

    :goto_e
    return v3

    :cond_1c
    if-ge v14, v4, :cond_1d

    .line 3377
    invoke-virtual {v0, v12, v14, v4, v8}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v8

    :cond_1d
    if-ge v2, v5, :cond_1e

    .line 3380
    invoke-virtual {v0, v12, v2, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    :cond_1e
    if-le v8, v7, :cond_1f

    .line 3383
    invoke-virtual {v0, v15, v8}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 3385
    :cond_1f
    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    const/16 v17, 0x0

    return v17
.end method

.method public computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z
    .locals 30

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p13

    .line 2733
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    return v14

    .line 2738
    :cond_0
    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object/from16 v0, p3

    .line 2739
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p12, :cond_3

    .line 2743
    iget-boolean v2, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_1

    iget-object v2, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 2747
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object/from16 v29, v1

    move-object v1, v0

    move-object/from16 v0, v29

    :goto_0
    if-eqz p9, :cond_2

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-wide/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v7, p8

    move/from16 v9, p10

    move/from16 v2, p11

    move-object/from16 p3, v0

    move-object/from16 v0, p0

    .line 2750
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-object v2, v0

    move-object/from16 v3, p3

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 p3, v0

    .line 2753
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v3, p3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2754
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_1
    move-object v6, v1

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object/from16 v2, p0

    move-object v6, v0

    .line 2758
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 2759
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    move/from16 v16, v14

    .line 2763
    :goto_3
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    .line 2764
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v3

    .line 2765
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    .line 2766
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v5

    .line 2773
    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v14

    .line 2774
    iget-object v14, v2, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v14, v14, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    const/4 v10, 0x4

    if-nez v13, :cond_8

    .line 2777
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v18

    if-nez v18, :cond_6

    .line 2778
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v18

    if-nez v18, :cond_6

    move/from16 p9, v0

    const/4 v0, 0x3

    if-le v8, v0, :cond_7

    if-ne v8, v10, :cond_5

    .line 2781
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v0, v17

    goto :goto_5

    :cond_6
    move/from16 p9, v0

    :cond_7
    :goto_4
    const/4 v0, 0x1

    .line 2777
    :goto_5
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    goto :goto_6

    :cond_8
    move/from16 p9, v0

    .line 2784
    :goto_6
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2786
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2787
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v18

    move/from16 p10, v10

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2788
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v10

    or-int v10, v18, v10

    move-object/from16 p11, v1

    iget v1, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move/from16 v18, v3

    const/4 v3, 0x1

    .line 2786
    invoke-virtual {v0, v3, v13, v10, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_9
    move-object/from16 p11, v1

    move/from16 v18, v3

    move/from16 p10, v10

    .line 2803
    :cond_a
    invoke-virtual {v2, v6}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int/2addr v0, v5

    .line 2805
    invoke-static {v11, v6}, Lcom/android/server/am/OomAdjuster;->getCpuCapabilityFromClient(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x20

    .line 2807
    invoke-virtual {v11, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v3

    const-string/jumbo v10, "service"

    move-object/from16 v19, v10

    const/16 v21, 0x40

    const/16 v10, 0x8

    if-eqz v3, :cond_46

    const/16 v3, 0x1000

    .line 2808
    invoke-virtual {v11, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 2809
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v22

    or-int v0, v0, v22

    .line 2817
    :cond_b
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v22

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_d

    move/from16 v22, v1

    const/4 v1, 0x5

    if-gt v8, v1, :cond_c

    const/high16 v1, 0x20000

    .line 2821
    invoke-virtual {v11, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    or-int/lit8 v0, v0, 0x8

    goto :goto_7

    :cond_d
    move/from16 v22, v1

    .line 2828
    :cond_e
    :goto_7
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/4 v10, 0x6

    if-eqz v1, :cond_f

    if-gt v8, v10, :cond_f

    move v1, v4

    const-wide v3, 0x100000000L

    .line 2832
    invoke-virtual {v11, v3, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v3

    if-eqz v3, :cond_10

    or-int/lit8 v0, v0, 0x20

    goto :goto_8

    :cond_f
    move v1, v4

    .line 2840
    :cond_10
    :goto_8
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_11

    .line 2842
    iget-boolean v3, v12, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v3, :cond_11

    or-int/lit8 v0, v0, 0x40

    :cond_11
    move/from16 v24, v0

    if-eqz p12, :cond_13

    move v4, v1

    move-object v0, v2

    move-object v1, v12

    move/from16 v3, v18

    const/16 v10, 0x1000

    move/from16 v12, p9

    move-object/from16 v2, p11

    move/from16 v18, v5

    move/from16 v5, p8

    .line 2847
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v5

    move-object/from16 v29, v2

    move-object v2, v0

    move-object/from16 v0, v29

    if-eqz v5, :cond_12

    return v17

    :cond_12
    :goto_9
    const/16 v5, 0x10

    goto :goto_a

    :cond_13
    move-object/from16 v0, p11

    move v4, v1

    move-object v1, v12

    move/from16 v3, v18

    const/16 v10, 0x1000

    move/from16 v12, p9

    move/from16 v18, v5

    goto :goto_9

    :goto_a
    if-lt v8, v5, :cond_14

    const/16 v8, 0x13

    .line 2858
    :cond_14
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v23

    const-string v5, "cch-bound-ui-services"

    const/16 v25, 0x0

    if-eqz v23, :cond_1b

    const/16 v10, 0x384

    if-ge v7, v10, :cond_15

    .line 2861
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 2862
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v26

    move-object/from16 p8, v5

    or-int/lit8 v5, v26, 0x4

    move/from16 p11, v8

    iget v8, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move/from16 v26, v3

    const/4 v3, 0x1

    .line 2861
    invoke-virtual {v10, v3, v13, v5, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v5

    if-eqz v5, :cond_16

    return v3

    :cond_15
    move/from16 v26, v3

    move-object/from16 p8, v5

    move/from16 p11, v8

    .line 2875
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-nez v3, :cond_19

    if-le v4, v7, :cond_17

    move-object/from16 v25, p8

    .line 2884
    :cond_17
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v13, :cond_18

    const/4 v3, 0x1

    return v3

    :cond_18
    move v7, v4

    move v5, v9

    move/from16 v3, v26

    goto :goto_b

    .line 2892
    :cond_19
    iget-object v3, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move v5, v9

    iget-wide v8, v3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v3, v2, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-wide/from16 v27, v8

    iget-wide v8, v3, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long v8, v27, v8

    cmp-long v3, p4, v8

    if-ltz v3, :cond_1c

    if-le v4, v7, :cond_1a

    .line 2900
    const-string v25, "cch-bound-services"

    :cond_1a
    move/from16 v3, p11

    move v7, v4

    goto :goto_b

    :cond_1b
    move/from16 v26, v3

    move-object/from16 p8, v5

    move/from16 p11, v8

    move v5, v9

    :cond_1c
    move/from16 v3, p11

    :goto_b
    if-le v4, v7, :cond_1d

    .line 2911
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v8

    if-nez v8, :cond_1e

    sget v8, Lcom/android/server/am/OomAdjuster;->CACHING_UI_SERVICE_CLIENT_ADJ_THRESHOLD:I

    if-le v7, v8, :cond_1e

    const/16 v10, 0x384

    if-lt v4, v10, :cond_1d

    move-object/from16 p4, p8

    move v7, v4

    move/from16 p8, v5

    move v8, v12

    move/from16 v10, v17

    move/from16 v9, v26

    goto/16 :goto_12

    :cond_1d
    move/from16 p8, v5

    goto/16 :goto_11

    :cond_1e
    const/16 v8, 0x48

    .line 2919
    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_21

    const/16 v8, -0x2bc

    if-lt v7, v8, :cond_1f

    goto/16 :goto_e

    :cond_1f
    if-nez v13, :cond_20

    .line 2929
    iget v9, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move/from16 v10, v17

    invoke-virtual {v11, v10, v9}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_20
    move v10, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v20, 0x1

    goto/16 :goto_f

    :cond_21
    const/16 v8, 0x100

    .line 2933
    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    const/16 v10, 0xc8

    if-eqz v8, :cond_22

    if-gt v7, v10, :cond_22

    const/16 v8, 0xfa

    if-lt v4, v8, :cond_23

    :goto_c
    move v10, v8

    :goto_d
    move v8, v12

    move/from16 v9, v26

    const/16 v20, 0x0

    goto/16 :goto_f

    :cond_22
    const/16 v8, 0x64

    :cond_23
    const/high16 v9, 0x10000

    .line 2937
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v20

    if-eqz v20, :cond_25

    move/from16 v9, p10

    .line 2938
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v20

    if-eqz v20, :cond_25

    if-ge v7, v10, :cond_25

    if-lt v4, v10, :cond_24

    const/16 v8, 0xc9

    goto :goto_c

    :cond_24
    move v8, v10

    :cond_25
    const/high16 v9, 0x10000

    .line 2944
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v9, 0x4

    .line 2945
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v20

    if-eqz v20, :cond_26

    if-ge v7, v10, :cond_26

    const/16 v8, 0xe3

    if-lt v4, v8, :cond_26

    goto :goto_c

    :cond_26
    const/high16 v9, 0x40000000    # 2.0f

    .line 2952
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_28

    if-ge v7, v10, :cond_28

    if-lt v4, v10, :cond_27

    goto :goto_d

    :cond_27
    move v8, v10

    :cond_28
    if-lt v7, v10, :cond_29

    :goto_e
    move v10, v7

    goto :goto_d

    :cond_29
    const/high16 v9, 0x10000000

    .line 2958
    invoke-virtual {v11, v9}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/16 v9, 0x64

    if-gt v7, v9, :cond_2b

    if-le v4, v9, :cond_2b

    move v10, v9

    goto :goto_d

    :cond_2a
    const/16 v9, 0x64

    :cond_2b
    if-le v4, v9, :cond_2c

    .line 2965
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_2c
    move v10, v4

    goto :goto_d

    .line 2971
    :goto_f
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v27

    if-nez v27, :cond_2d

    .line 2972
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v27

    if-eqz v27, :cond_2d

    if-eqz v13, :cond_2d

    const/16 v27, 0x1

    return v27

    :cond_2d
    const/16 v27, 0x1

    move/from16 p8, v5

    if-ne v10, v7, :cond_2e

    .line 2978
    iget-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v5, :cond_2e

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_2e
    move v7, v10

    :goto_10
    if-le v4, v7, :cond_2f

    .line 2985
    invoke-virtual {v15, v7, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-object/from16 p4, v19

    move/from16 v10, v20

    goto :goto_12

    :cond_2f
    move v7, v4

    move/from16 v10, v20

    move-object/from16 p4, v25

    goto :goto_12

    :goto_11
    move v7, v4

    move v8, v12

    move-object/from16 p4, v25

    move/from16 v9, v26

    const/4 v10, 0x0

    :goto_12
    const v5, 0x800004

    .line 2992
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v5

    move/from16 p5, v5

    if-eqz p5, :cond_39

    .line 2997
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v5

    if-le v5, v8, :cond_30

    move/from16 p11, v5

    move/from16 v5, v21

    .line 2999
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_31

    move/from16 v8, p11

    :cond_30
    const/4 v5, 0x2

    goto :goto_13

    :cond_31
    const/4 v5, 0x2

    const/4 v8, 0x2

    :goto_13
    if-ge v3, v5, :cond_35

    const/high16 v0, 0x10000000

    .line 3010
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    goto :goto_16

    :cond_32
    const/high16 v0, 0x4000000

    .line 3012
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_14
    const/4 v0, 0x5

    goto :goto_16

    .line 3014
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x2000000

    .line 3015
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_14

    :cond_34
    const/4 v0, 0x6

    goto :goto_16

    :cond_35
    if-ne v3, v5, :cond_38

    const/4 v5, 0x0

    .line 3025
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_37

    const/16 v3, 0x1000

    .line 3028
    invoke-virtual {v11, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 3030
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    :goto_15
    or-int v24, v24, v0

    :cond_36
    const/4 v0, 0x3

    goto :goto_16

    .line 3036
    :cond_37
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    goto :goto_15

    :cond_38
    move v0, v3

    :goto_16
    move v3, v8

    move v8, v0

    :goto_17
    move/from16 v0, v24

    goto :goto_18

    :cond_39
    const/high16 v0, 0x800000

    .line 3039
    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x8

    if-ge v3, v0, :cond_3b

    move v3, v8

    move/from16 v0, v24

    const/16 v8, 0x8

    goto :goto_18

    :cond_3a
    const/4 v0, 0x7

    if-ge v3, v0, :cond_3b

    move v3, v8

    move/from16 v0, v24

    const/4 v8, 0x7

    goto :goto_18

    :cond_3b
    move v0, v8

    move v8, v3

    move v3, v0

    goto :goto_17

    :goto_18
    const/high16 v5, 0x80000

    .line 3051
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v16, :cond_3d

    if-eqz v13, :cond_3c

    const/4 v3, 0x3

    if-ge v12, v3, :cond_3d

    const/4 v5, 0x1

    return v5

    :cond_3c
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 3059
    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessStateRecord;->setScheduleLikeTopApp(Z)V

    :cond_3d
    if-nez v10, :cond_3e

    if-nez v13, :cond_3e

    .line 3064
    iget v5, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v8, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_3e
    if-le v9, v8, :cond_41

    .line 3069
    invoke-virtual {v15, v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(IZ)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x1

    return v5

    :cond_3f
    const/4 v5, 0x1

    if-nez p4, :cond_40

    move v9, v8

    move-object/from16 v10, v19

    :goto_19
    const/4 v5, 0x7

    goto :goto_1a

    :cond_40
    move-object/from16 v10, p4

    move v9, v8

    goto :goto_19

    :cond_41
    move-object/from16 v10, p4

    goto :goto_19

    :goto_1a
    if-ge v9, v5, :cond_42

    const/high16 v5, 0x20000000

    .line 3078
    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_42

    if-nez v13, :cond_42

    const/4 v5, 0x1

    .line 3079
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_42
    if-eqz v10, :cond_45

    if-nez v13, :cond_45

    .line 3082
    invoke-virtual {v15, v10}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 3083
    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3085
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3086
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3087
    iget-object v5, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3088
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_44

    move/from16 v5, p8

    move/from16 p4, v0

    if-ne v14, v5, :cond_43

    goto :goto_1c

    :cond_43
    :goto_1b
    move/from16 p5, v3

    move/from16 v16, v8

    goto :goto_1d

    :cond_44
    move/from16 v5, p8

    move/from16 p4, v0

    .line 3089
    :goto_1c
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    move/from16 p5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v8

    const-string v8, "Raise to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", due to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " adj="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " procState="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-static {v9}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3089
    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_45
    move/from16 v5, p8

    move/from16 p4, v0

    goto :goto_1b

    :goto_1d
    move/from16 v3, p4

    move/from16 v0, p5

    move v6, v9

    move/from16 v8, v16

    const/4 v9, 0x1

    goto :goto_1e

    :cond_46
    move-object v1, v12

    move/from16 v26, v18

    const/16 v10, 0x384

    move/from16 v12, p9

    move/from16 v18, v5

    move v5, v9

    if-ge v7, v10, :cond_47

    .line 3106
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3107
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v6

    const/16 v22, 0x8

    or-int/lit8 v6, v6, 0x8

    iget v7, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v9, 0x1

    .line 3106
    invoke-virtual {v3, v9, v13, v6, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(ZZII)Z

    move-result v3

    if-eqz v3, :cond_48

    return v9

    :cond_47
    const/4 v9, 0x1

    :cond_48
    move v3, v0

    move v7, v4

    move v0, v12

    move/from16 v6, v26

    :goto_1e
    const/high16 v10, 0x8000000

    .line 3119
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_4a

    if-nez v13, :cond_49

    .line 3121
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    :cond_49
    const/16 v9, 0x10

    if-gt v8, v9, :cond_4a

    if-le v6, v9, :cond_4a

    .line 3128
    const-string v6, "cch-as-act"

    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v10, v9

    goto :goto_1f

    :cond_4a
    move v10, v6

    .line 3131
    :goto_1f
    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    const/16 v8, 0x80

    .line 3132
    invoke-virtual {v11, v8}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v8

    if-eqz v8, :cond_50

    if-eqz v6, :cond_50

    if-lez v7, :cond_50

    .line 3134
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v8

    if-eqz v8, :cond_50

    const/4 v8, 0x0

    .line 3136
    invoke-virtual {v15, v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v9, 0x1

    return v9

    :cond_4b
    const/4 v7, 0x4

    const/4 v9, 0x1

    .line 3139
    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v16

    if-eqz v16, :cond_4d

    const/16 v7, 0x40

    .line 3140
    invoke-virtual {v11, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x4

    goto :goto_20

    :cond_4c
    const/4 v0, 0x2

    :cond_4d
    :goto_20
    if-nez v13, :cond_4f

    move-object/from16 v7, v19

    .line 3148
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 3149
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3151
    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3152
    invoke-virtual {v15, v10}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 3153
    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v15, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 3154
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_4e

    if-ne v14, v5, :cond_4f

    .line 3155
    :cond_4e
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Raise to service w/activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    move v7, v8

    goto :goto_21

    :cond_50
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 3162
    :goto_21
    invoke-virtual {v2, v1, v10}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v5

    or-int/2addr v3, v5

    const/4 v5, 0x5

    if-le v10, v5, :cond_51

    and-int/lit8 v3, v3, -0x11

    :cond_51
    move/from16 v5, v26

    if-lt v7, v4, :cond_53

    if-lt v10, v5, :cond_53

    if-le v0, v12, :cond_52

    goto :goto_22

    :cond_52
    move v14, v8

    goto :goto_23

    :cond_53
    :goto_22
    move v14, v9

    :goto_23
    and-int/lit16 v6, v3, -0x81

    move/from16 v8, v18

    and-int/lit16 v8, v8, -0x81

    if-eq v6, v8, :cond_54

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_54

    goto :goto_24

    :cond_54
    move v9, v14

    :goto_24
    if-eqz v13, :cond_55

    return v9

    :cond_55
    if-ge v7, v4, :cond_56

    .line 3193
    invoke-virtual {v2, v1, v7, v4, v0}, Lcom/android/server/am/OomAdjuster;->setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I

    move-result v0

    :cond_56
    if-ge v10, v5, :cond_57

    .line 3196
    invoke-virtual {v2, v1, v10, v5}, Lcom/android/server/am/OomAdjuster;->setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V

    :cond_57
    if-le v0, v12, :cond_58

    .line 3199
    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/OomAdjuster;->setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V

    .line 3201
    :cond_58
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v9
.end method

.method public dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 0

    .line 4093
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 0

    .line 4088
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 4080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4081
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4080
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

    const-wide v0, 0x10500000031L

    .line 4063
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4064
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000033L

    .line 4065
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000035L

    .line 4067
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000036L

    .line 4068
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 4075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 864
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-lez v0, :cond_0

    .line 865
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public enqueuePendingTopAppIfNecessaryLSP()I
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    .line 727
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 731
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->enqueuePendingTopAppIfNecessaryLocked()V

    :cond_0
    return v1
.end method

.method public final evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4416
    :cond_0
    iget-boolean p1, p2, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-nez p1, :cond_2

    iget-boolean p1, p2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method public evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 14

    .line 4359
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4364
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-le v1, v2, :cond_1

    :goto_0
    move-object/from16 v2, p2

    goto :goto_1

    .line 4366
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 4368
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4369
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v2, p2

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4370
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4380
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4381
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x384

    move-object v0, p0

    move-object v3, p1

    .line 4380
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeProviderHostOomAdjLSP(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateProviderConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 4390
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 4394
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v1

    if-lt p0, v1, :cond_1

    return v0

    .line 4396
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v1

    if-lt p0, v1, :cond_2

    return v0

    .line 4398
    :cond_2
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4399
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4400
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateServiceConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z
    .locals 14

    move-object/from16 v1, p3

    .line 4280
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4285
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v2

    if-le v0, v2, :cond_1

    :goto_0
    move-object/from16 v2, p2

    goto :goto_1

    .line 4288
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-wide v2, 0x100001000L

    .line 4291
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4293
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v2

    and-int/2addr v0, v2

    .line 4294
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v2

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    .line 4303
    invoke-virtual {v1, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 4307
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4308
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v2, p2

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4309
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4317
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 4318
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x384

    move-object v0, p0

    move-object v3, p1

    .line 4317
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public evaluateServiceConnectionRemoval(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;)Z
    .locals 3

    .line 4327
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 4331
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v1

    if-lt p0, v1, :cond_1

    return v0

    .line 4333
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v1

    if-lt p0, v1, :cond_2

    return v0

    :cond_2
    const-wide v1, 0x100001000L

    .line 4335
    invoke-virtual {p3, v1, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4337
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getSetCapability()I

    move-result v1

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/16 p0, 0x30

    .line 4341
    invoke-virtual {p3, p0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    .line 4344
    :cond_4
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4345
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4346
    invoke-virtual {p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I
    .locals 2

    .line 3464
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-ge p0, v0, :cond_0

    return v1

    .line 3502
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    and-int/2addr p0, v1

    return p0
.end method

.method public getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2

    .line 3392
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result p0

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3409
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x6

    goto :goto_0

    .line 3401
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v1, 0x16

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    goto :goto_0

    :cond_3
    const/16 v1, 0xff

    :cond_4
    :goto_0
    or-int/2addr p0, v1

    return p0
.end method

.method public getFreezePolicy(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 4110
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4115
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4120
    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-lt p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 4253
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result p0

    return p0
.end method

.method public getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 4263
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    return p0
.end method

.method public getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 4269
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result p0

    return p0
.end method

.method public getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 4258
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public idleUidsLocked()V
    .locals 20

    move-object/from16 v0, p0

    .line 3984
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 3985
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 3989
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    .line 3990
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v6, v4, v6

    .line 3992
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_1

    .line 3993
    invoke-virtual {v2}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v13, v8

    move-wide v11, v9

    :goto_0
    if-ltz v1, :cond_7

    .line 3997
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v14, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v14

    .line 3998
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v15

    .line 3999
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getLastIdleTimeIfStillIdle()J

    move-result-wide v17

    cmp-long v19, v15, v9

    if-lez v19, :cond_6

    .line 4000
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v19

    if-eqz v19, :cond_2

    cmp-long v17, v17, v9

    if-nez v17, :cond_6

    :cond_2
    cmp-long v17, v15, v6

    if-gtz v17, :cond_3

    .line 4002
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 4003
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v15

    .line 4004
    :try_start_0
    invoke-virtual {v14, v2}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 4005
    invoke-virtual {v14, v2}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 4006
    invoke-virtual {v14, v4, v5}, Lcom/android/server/am/UidRecord;->setLastIdleTime(J)V

    .line 4007
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 4008
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v2

    invoke-virtual {v15, v2, v14}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4007
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_3
    cmp-long v2, v11, v9

    if-eqz v2, :cond_4

    cmp-long v2, v11, v15

    if-lez v2, :cond_5

    :cond_4
    move-wide v11, v15

    .line 4013
    :cond_5
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v13, 0x1

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    goto :goto_0

    .line 4019
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_8

    .line 4020
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 4025
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v1, :cond_b

    .line 4026
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 4027
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_2
    if-ge v8, v2, :cond_b

    .line 4029
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 4030
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 4029
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v6

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v14, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v6, v14

    cmp-long v14, v6, v9

    if-lez v14, :cond_a

    cmp-long v14, v11, v9

    if-eqz v14, :cond_9

    cmp-long v14, v11, v6

    if-lez v14, :cond_a

    :cond_9
    move-wide v11, v6

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v11, v9

    if-lez v1, :cond_d

    .line 4037
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v11, v1

    sub-long/2addr v11, v4

    if-eqz v13, :cond_c

    .line 4039
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle3(J)V

    .line 4041
    :cond_c
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v3, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_3
    return-void
.end method

.method public initSettings()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 567
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final isBackupProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 1903
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BackupRecord;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1907
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster$Injector;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final isDeviceFullyAwake()Z
    .locals 1

    .line 1891
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isLastMemoryLevelNormal()Z
    .locals 0

    .line 1915
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result p0

    return p0
.end method

.method public final isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z
    .locals 0

    .line 1896
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

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

.method public final synthetic lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 3805
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3806
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 3808
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

.method public final synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 3

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    .line 524
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 525
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    .line 527
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/PhantomProcessList;->setProcessGroupForPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final maybeSetProcessFollowUpUpdateLocked(Lcom/android/server/am/ProcessRecord;JJ)V
    .locals 1

    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    return-void

    .line 4434
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4435
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 4437
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    return-void
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 1

    .line 3972
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 3973
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_0

    .line 3974
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_0
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    .line 3908
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3909
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3910
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3911
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3912
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 3911
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 3912
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    .line 3917
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3918
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v1, :cond_0

    .line 3919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking proc ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] state changes: old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3920
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3921
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3919
    const-string v2, "OomAdjuster"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x2

    .line 3926
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    .line 3932
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 3934
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    .line 3935
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/4 v8, 0x4

    if-gt v2, v8, :cond_6

    .line 3936
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_4

    .line 3937
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :cond_3
    move v7, v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 3941
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    .line 3942
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3943
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v10

    add-long/2addr v10, v8

    cmp-long v2, p2, v10

    if-lez v2, :cond_3

    goto :goto_2

    .line 3947
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-gt v2, v3, :cond_7

    goto :goto_1

    :cond_7
    move v7, v4

    .line 3948
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_2
    if-eqz v1, :cond_8

    .line 3951
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    .line 3952
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    if-eqz v7, :cond_a

    .line 3954
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3955
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_a

    .line 3956
    :cond_9
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 3957
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 3959
    :goto_4
    array-length p3, p2

    if-ge v4, p3, :cond_a

    .line 3960
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3965
    :cond_a
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v7, :cond_b

    .line 3967
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_b
    :goto_5
    return-void
.end method

.method public onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .locals 0

    .line 3571
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    return-void
.end method

.method public performUpdateOomAdjLSP(I)V
    .locals 8

    .line 639
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 640
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 642
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 643
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    .line 644
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 11

    .line 686
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 688
    iput p2, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 689
    invoke-static {p2}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 691
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    move-object v4, v3

    .line 694
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    move-object v5, v4

    .line 695
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 696
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v6

    iput v6, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 699
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v6

    .line 703
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 705
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    move v5, v6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    .line 708
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 709
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    const/16 v4, 0x3e9

    if-ne v2, v4, :cond_1

    .line 712
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {p0, v3}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 714
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v3

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 715
    invoke-virtual {v2}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 714
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    .line 717
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->clearPendingTopAppLocked()V

    .line 719
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11

    .line 967
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 969
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 970
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 973
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 974
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 975
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 976
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 977
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 978
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 979
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 980
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 981
    iget-object p0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->clearPendingTopAppLocked()V

    .line 983
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 979
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1127
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1128
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-wide v1, p7

    move p8, p1

    move-object p7, p2

    move-wide p1, p3

    move-wide p3, p5

    move-wide p5, v1

    .line 1130
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;IZ)V

    .line 1132
    iget p5, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput p5, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 1134
    iget-object p5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p6, p5, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz p6, :cond_0

    .line 1137
    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string p6, "always-finish"

    invoke-virtual {p5, p6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 1140
    :cond_0
    invoke-virtual {p0, p7, p3, p4}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 1142
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p3, p3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1143
    :try_start_0
    iget-object p4, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p4}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide p4

    .line 1144
    iget-object p6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p6, p4, p5}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 1145
    iget-object p6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p7, p6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p8, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object p9, p6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {p8, p6, p9}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {p7, p8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1150
    :cond_1
    :goto_0
    iget-object p6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget p7, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p6, p7, p4, p5}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 1151
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz p3, :cond_2

    .line 1154
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    .line 1159
    sget-object p0, Lcom/android/server/am/ActivityManagerService;->TAG_OOM_ADJ:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Did OOM ADJ in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 1151
    :goto_1
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 872
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 874
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3561
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3563
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    .line 3564
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3565
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3567
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetInternal()V
    .locals 0

    .line 0
    return-void
.end method

.method public final resetUidRecordsLsp(Lcom/android/server/am/ActiveUids;)V
    .locals 4

    .line 1115
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 1116
    invoke-virtual {p1, p0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1117
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_0

    .line 1118
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final scheduleFollowUpOomAdjusterUpdateLocked(JJ)V
    .locals 6

    .line 4444
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    add-long v2, p1, v0

    iget-wide v4, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    return-void

    :cond_0
    add-long v2, p3, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    add-long p1, p3, v0

    .line 4457
    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 4458
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 p3, 0x56

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public setAppAndChildProcessGroup(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    .line 3864
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3865
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    .line 3866
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    .line 3869
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x13

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 3874
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3875
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->useFifoUiScheduling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3876
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    .line 3878
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    const/16 v8, -0xa

    invoke-virtual {v3, v7, v8}, Lcom/android/server/am/OomAdjuster$Injector;->setThreadPriority(II)V

    .line 3880
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->isScreenOnOrAnimatingLocked(Lcom/android/server/am/ProcessStateRecord;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    move v5, v4

    move v4, v3

    :cond_1
    const/16 v3, 0xff

    goto :goto_2

    .line 3887
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pre-set top priority to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OomAdjuster"

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v6

    .line 3891
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3892
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 3893
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 3894
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 3896
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 3897
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v3, 0x0

    .line 3898
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setForcingToImportant(Ljava/lang/Object;)V

    .line 3899
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    .line 3901
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V

    .line 3902
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/OomAdjuster;->onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public setIntermediateAdjLSP(Lcom/android/server/am/ProcessRecord;III)I
    .locals 0

    .line 2689
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2690
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2692
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result p1

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result p1

    const/16 p2, 0xfa

    if-gt p1, p2, :cond_0

    const/4 p4, 0x2

    .line 2700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    return p4
.end method

.method public setIntermediateProcStateLSP(Lcom/android/server/am/ProcessRecord;II)V
    .locals 0

    .line 2708
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2709
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2710
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    return-void
.end method

.method public setIntermediateSchedGroupLSP(Lcom/android/server/am/ProcessStateRecord;I)V
    .locals 2

    .line 2717
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->isDeviceFullyAwake()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2719
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->shouldScheduleLikeTopApp()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    if-le p2, p0, :cond_0

    move p2, p0

    .line 2725
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setProcessGroup(IILjava/lang/String;)V
    .locals 6

    .line 538
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x40

    .line 542
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    .line 543
    const-string v2, " to "

    if-eqz p0, :cond_1

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProcessGroup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 548
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 555
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p3

    .line 550
    :try_start_1
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v3, :cond_2

    .line 551
    const-string v3, "OomAdjuster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed setting process group of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p0, :cond_3

    .line 555
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    :goto_0
    return-void

    :goto_1
    if-eqz p0, :cond_4

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 557
    :cond_4
    throw p1
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 1

    .line 4047
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4048
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 4049
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 4051
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 4052
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 4054
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    :cond_1
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .locals 6

    .line 1710
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1714
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

    .line 1716
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v0, v4

    cmp-long p0, v0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v3
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 3

    .line 3530
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 3535
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3538
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, p0, :cond_0

    if-eqz p5, :cond_0

    .line 3542
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result p0

    if-lt p0, p3, :cond_0

    .line 3543
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    if-lt p0, p4, :cond_0

    .line 3544
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p1

    and-int/2addr p0, p1

    .line 3545
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p1

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5

    .line 4201
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4205
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4206
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4210
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 4211
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 4212
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4213
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 4214
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 4216
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 4218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4219
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4220
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result v4

    .line 4219
    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4222
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;IZ)V
    .locals 35

    move-object/from16 v0, p0

    .line 1353
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v9

    .line 1354
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1356
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1358
    iget-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 1359
    const-string v2, "OomAdjuster"

    const-string v3, "Not killing cached processes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    add-long v2, p1, v2

    .line 1360
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_0
    const v2, 0x7fffffff

    if-eqz v10, :cond_1

    .line 1364
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v2

    :goto_0
    if-eqz v10, :cond_2

    .line 1366
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v11

    :cond_2
    move v12, v2

    .line 1374
    sget-boolean v13, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1375
    sget v2, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    float-to-double v14, v2

    if-eqz v13, :cond_3

    .line 1376
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->getFreeSwapPercent()D

    move-result-wide v2

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/16 v16, 0x0

    const/4 v5, 0x0

    move/from16 p7, v16

    move/from16 v6, p7

    move v7, v6

    move/from16 v17, v7

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_2
    if-ltz v1, :cond_13

    .line 1380
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1381
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1382
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v22

    if-nez v22, :cond_12

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v22

    if-eqz v22, :cond_12

    move/from16 v22, v1

    .line 1385
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    move-wide/from16 v23, v2

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v1, v2, :cond_4

    move-object v1, v8

    const/4 v8, 0x1

    move/from16 v2, p9

    move-object/from16 v34, v1

    move-object v1, v4

    move-object/from16 v33, v5

    move-object/from16 v27, v9

    move/from16 v20, v13

    move-wide/from16 v28, v14

    move/from16 v32, v22

    move-wide/from16 v30, v23

    const/16 v9, 0xd

    const/4 v15, 0x1

    move-wide/from16 v3, p1

    move/from16 v14, p7

    move v13, v7

    move/from16 p7, v10

    move/from16 v7, p8

    move v10, v6

    move-wide/from16 v5, p3

    .line 1386
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJIZ)Z

    goto :goto_3

    :cond_4
    move-object v1, v4

    move-object/from16 v33, v5

    move-object/from16 v34, v8

    move-object/from16 v27, v9

    move/from16 v20, v13

    move-wide/from16 v28, v14

    move/from16 v32, v22

    move-wide/from16 v30, v23

    const/16 v9, 0xd

    const/4 v15, 0x1

    move/from16 v14, p7

    move v13, v7

    move/from16 p7, v10

    move v10, v6

    .line 1390
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1394
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_b

    .line 1398
    :cond_5
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1400
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0x10

    const/16 v5, 0x11

    if-eq v3, v4, :cond_a

    if-eq v3, v5, :cond_a

    const/16 v4, 0x13

    if-eq v3, v4, :cond_6

    .line 1453
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v21, v1

    goto :goto_4

    .line 1431
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v10, v3, :cond_7

    .line 1432
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v3

    cmp-long v3, v3, p5

    if-gez v3, :cond_7

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v6

    sub-long v6, p1, v6

    const-wide/16 v21, 0x3e8

    div-long v6, v6, v21

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x4

    const/16 v26, 0x1

    .line 1433
    const-string v23, "empty for too long"

    const/16 v24, 0xd

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :goto_4
    move v6, v10

    move v7, v13

    move v8, v14

    move-object/from16 v1, v21

    goto/16 :goto_8

    :cond_7
    move-object/from16 v21, v1

    add-int/lit8 v6, v10, 0x1

    if-le v6, v11, :cond_8

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x3

    const/16 v26, 0x1

    const-string/jumbo v23, "too many empty"

    const/16 v24, 0xd

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    move-object/from16 v1, v21

    goto :goto_5

    :cond_8
    move-object/from16 v1, v21

    if-eqz v20, :cond_9

    move-object/from16 v33, v1

    :cond_9
    :goto_5
    move v7, v13

    move v8, v14

    goto :goto_8

    .line 1403
    :cond_a
    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v3, v17, 0x1

    .line 1405
    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v8

    if-eqz v8, :cond_c

    .line 1407
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v4, :cond_b

    if-ne v14, v8, :cond_b

    add-int/lit8 v19, v19, 0x1

    move v7, v13

    move v8, v14

    goto :goto_6

    .line 1414
    :cond_b
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_6

    :cond_c
    move/from16 v7, v16

    move v8, v7

    :goto_6
    sub-int v4, v3, v19

    if-le v4, v12, :cond_d

    .line 1421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cached #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x2

    const/16 v26, 0x1

    const-string/jumbo v23, "too many cached"

    const/16 v24, 0xd

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_7

    :cond_d
    if-eqz v20, :cond_e

    move-object/from16 v33, v1

    :cond_e
    :goto_7
    move/from16 v17, v3

    move v6, v10

    .line 1459
    :goto_8
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v3

    if-gtz v3, :cond_f

    .line 1460
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    .line 1468
    const-string/jumbo v2, "isolated not needed"

    invoke-virtual {v1, v2, v9, v5, v15}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_9

    .line 1470
    :cond_f
    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    if-gtz v2, :cond_10

    .line 1471
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-nez v2, :cond_10

    .line 1475
    const-string/jumbo v2, "sandbox not needed"

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v9, v3, v15}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_9

    .line 1479
    :cond_10
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1482
    :goto_9
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_11

    .line 1483
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v18, v18, 0x1

    :cond_11
    :goto_a
    move-object/from16 v5, v33

    goto :goto_c

    :cond_12
    move/from16 v32, v1

    move-wide/from16 v30, v2

    move-object/from16 v33, v5

    move-object/from16 v27, v9

    move/from16 v20, v13

    move-wide/from16 v28, v14

    const/4 v15, 0x1

    move/from16 v14, p7

    move v13, v7

    move/from16 p7, v10

    move v10, v6

    :goto_b
    move v6, v10

    move v7, v13

    move v8, v14

    goto :goto_a

    :goto_c
    add-int/lit8 v1, v32, -0x1

    move/from16 v10, p7

    move/from16 p7, v8

    move v4, v15

    move/from16 v13, v20

    move-object/from16 v9, v27

    move-wide/from16 v14, v28

    move-wide/from16 v2, v30

    goto/16 :goto_2

    :cond_13
    move-wide/from16 v30, v2

    move-object/from16 v33, v5

    move/from16 p7, v10

    move/from16 v20, v13

    move-wide/from16 v28, v14

    const/16 v9, 0xd

    move v15, v4

    move v10, v6

    .line 1502
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1503
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OomAdjuster$Injector;->batchSetOomAdj(Ljava/util/ArrayList;)V

    .line 1504
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcsToOomAdj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_14
    if-eqz v20, :cond_15

    if-eqz p7, :cond_15

    move-wide/from16 v2, v30

    cmpg-double v1, v2, v28

    if-gez v1, :cond_16

    if-eqz v33, :cond_16

    .line 1507
    iget-wide v4, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_16

    .line 1513
    const-string/jumbo v1, "swap low and too many cached"

    const/4 v4, 0x2

    move-object/from16 v5, v33

    invoke-virtual {v5, v1, v9, v4, v15}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_d

    :cond_15
    move-wide/from16 v2, v30

    .line 1519
    :cond_16
    :goto_d
    iput-wide v2, v0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1521
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 p7, p1

    move-object/from16 p3, v0

    move/from16 p5, v10

    move/from16 p4, v17

    move/from16 p6, v18

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(IIIJ)V

    return-void
.end method

.method public updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;IZI)V
    .locals 10

    .line 4132
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 4136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->getFreezePolicy(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    .line 4137
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4138
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4140
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-lt p4, v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_4

    const/16 v3, 0x3e9

    if-ne p4, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v6

    .line 4142
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeAdjSeq()I

    move-result v4

    iget v7, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v4, v7, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    .line 4143
    :goto_4
    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4144
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v7

    const/16 v8, 0x80

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    move v7, v6

    goto :goto_5

    :cond_6
    move v7, v5

    .line 4146
    :goto_5
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4147
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v9

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_7

    move v8, v6

    goto :goto_6

    :cond_7
    move v8, v5

    :goto_6
    if-eq v7, v8, :cond_8

    move v5, v6

    :cond_8
    if-nez v3, :cond_9

    if-nez v4, :cond_9

    if-eqz v5, :cond_11

    :cond_9
    const-wide/16 v3, 0x40

    .line 4151
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4154
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v6

    const-string v8, "-"

    if-eqz v6, :cond_a

    const-string v6, "F"

    goto :goto_7

    :cond_a
    move-object v6, v8

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4155
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "P"

    goto :goto_8

    :cond_b
    move-object v6, v8

    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "E"

    goto :goto_9

    :cond_c
    move-object v6, v8

    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "N"

    goto :goto_a

    :cond_d
    move-object v6, v8

    :goto_a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_e

    .line 4158
    const-string v6, "T"

    goto :goto_b

    :cond_e
    move-object v6, v8

    :goto_b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    .line 4159
    const-string v6, "I"

    goto :goto_c

    :cond_f
    move-object v6, v8

    :goto_c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    .line 4160
    const-string v6, "Z"

    goto :goto_d

    :cond_10
    move-object v6, v8

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4161
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4162
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4152
    const-string v6, "FreezeLite"

    invoke-static {v3, v4, v6, v5}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 4167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAppFreezeStateLSP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4170
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isFreezeExempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4171
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isFrozen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldNotFreeze: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldNotFreezeReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4174
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreezeReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " curAdj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldOomAdj: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " immediate: "

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " cpuCapability: "

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 4167
    const-string v2, "Freezer"

    invoke-static {v3, v4, v2, p4}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_14

    if-eqz p3, :cond_12

    .line 4184
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p2

    if-nez p2, :cond_12

    .line 4186
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncAtEarliestLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 4187
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result p2

    if-nez p2, :cond_15

    .line 4188
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    .line 4192
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p3

    if-nez p3, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_f

    :cond_15
    :goto_e
    return-void

    .line 4193
    :cond_16
    :goto_f
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4194
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p2

    .line 4193
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1527
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1528
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1532
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1539
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1541
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1542
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1544
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1546
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1549
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :cond_2
    return-void
.end method

.method public final updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 593
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 595
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 597
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 606
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateOomAdjFollowUpTargetsLocked()V
    .locals 11

    .line 933
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    .line 935
    iput-wide v2, p0, Lcom/android/server/am/OomAdjuster;->mNextFollowUpUpdateUptimeMs:J

    .line 936
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-wide v5, v2

    :goto_0
    if-ltz v4, :cond_4

    .line 937
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 938
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getFollowupUpdateUptimeMs()J

    move-result-wide v8

    .line 940
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 942
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    cmp-long v10, v8, v0

    if-gtz v10, :cond_1

    .line 945
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setFollowupUpdateUptimeMs(J)V

    .line 947
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    cmp-long v7, v8, v5

    if-gez v7, :cond_2

    move-wide v5, v8

    goto :goto_1

    :cond_2
    cmp-long v7, v8, v2

    if-nez v7, :cond_3

    .line 953
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mFollowUpUpdateSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    cmp-long v2, v5, v2

    if-eqz v2, :cond_5

    .line 959
    invoke-virtual {p0, v5, v6, v0, v1}, Lcom/android/server/am/OomAdjuster;->scheduleFollowUpOomAdjusterUpdateLocked(JJ)V

    :cond_5
    const/16 v0, 0x17

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void
.end method

.method public final updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v9, p1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez p3, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    if-eqz v4, :cond_1

    .line 1000
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p3

    :goto_1
    if-nez p4, :cond_3

    .line 1003
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 1004
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1005
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move v3, v12

    :goto_2
    if-ge v3, v1, :cond_2

    .line 1007
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    .line 1008
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p4

    .line 1012
    :goto_3
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    const-wide/16 v1, 0x40

    if-eqz p6, :cond_4

    .line 1014
    invoke-static {v9}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1016
    :cond_4
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v5

    .line 1017
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v15

    .line 1018
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v17, v5, v7

    .line 1019
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1021
    iget v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v7, v11

    iput v7, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v4, :cond_5

    .line 1023
    iput v12, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1024
    iput v12, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 1028
    :cond_5
    invoke-virtual {v0, v14}, Lcom/android/server/am/OomAdjuster;->resetUidRecordsLsp(Lcom/android/server/am/ActiveUids;)V

    if-nez v4, :cond_7

    if-eqz p5, :cond_6

    goto :goto_4

    :cond_6
    move v8, v12

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v11

    :goto_5
    add-int/lit8 v7, v3, -0x1

    move v10, v7

    :goto_6
    if-ltz v10, :cond_9

    .line 1035
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1036
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1037
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1039
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    iget v11, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v2, v11, :cond_8

    .line 1040
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v2, 0x13

    .line 1041
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v2, 0x3e9

    .line 1042
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1043
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 1044
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 1045
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    :cond_8
    add-int/lit8 v10, v10, -0x1

    const-wide/16 v1, 0x40

    const/4 v11, 0x1

    goto :goto_6

    .line 1048
    :cond_9
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    move v11, v7

    move/from16 v20, v12

    :goto_7
    if-ltz v11, :cond_b

    .line 1050
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1051
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1052
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1053
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1054
    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastOomAdjChangeReason(I)V

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v21, v2

    const/16 v2, 0x3e9

    move v12, v3

    move-object/from16 p3, v21

    const-wide/16 v21, 0x40

    move-object/from16 v3, p2

    .line 1056
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 1059
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v20, v20, v1

    .line 1061
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    goto :goto_8

    :cond_a
    move v12, v3

    const-wide/16 v21, 0x40

    :goto_8
    add-int/lit8 v11, v11, -0x1

    move/from16 v9, p1

    move v3, v12

    const/4 v12, 0x0

    goto :goto_7

    :cond_b
    move v12, v3

    const-wide/16 v21, 0x40

    .line 1065
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1066
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1067
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

    .line 1066
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    :cond_c
    if-eqz v8, :cond_12

    const/4 v1, 0x0

    :goto_9
    if-eqz v20, :cond_12

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    add-int/lit8 v11, v1, 0x1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v12, :cond_e

    .line 1081
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1082
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1083
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1084
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 1085
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v1, v12, :cond_11

    .line 1090
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1091
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1092
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    const/4 v10, 0x1

    move v3, v1

    move-object v1, v2

    const/16 v2, 0x3e9

    const/4 v4, 0x1

    const/4 v7, 0x1

    move/from16 v9, p1

    move/from16 v23, v3

    move-object/from16 v3, p2

    .line 1093
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v20, 0x1

    goto :goto_c

    :cond_f
    move/from16 v23, v1

    :cond_10
    :goto_c
    add-int/lit8 v1, v23, 0x1

    goto :goto_b

    :cond_11
    move v1, v11

    goto :goto_9

    .line 1101
    :cond_12
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1103
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    const/4 v9, 0x1

    move/from16 v1, p1

    move-wide v3, v5

    move-object v2, v14

    move-wide v5, v15

    move-wide/from16 v7, v17

    .line 1105
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    if-eqz p6, :cond_13

    .line 1108
    invoke-static/range {v21 .. v22}, Landroid/os/Trace;->traceEnd(J)V

    :cond_13
    return-void
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 628
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 632
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 634
    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 675
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 680
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return p1

    :catchall_0
    move-exception p1

    .line 679
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 680
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 681
    throw p1

    .line 665
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    return v0
.end method

.method public updateOomAdjLocked(I)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 618
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

.method public updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 659
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    .line 906
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 907
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 908
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 916
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 922
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 927
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 926
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 927
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 928
    throw v0
.end method

.method public updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1558
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1560
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1561
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1564
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_0

    .line 1565
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1567
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    if-ltz v5, :cond_1e

    .line 1568
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v7

    .line 1569
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    const/16 v9, 0x14

    if-eq v8, v9, :cond_1d

    .line 1570
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    if-ne v8, v10, :cond_1

    .line 1571
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v10

    if-ne v8, v10, :cond_1

    .line 1572
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v10

    if-ne v8, v10, :cond_1

    .line 1573
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1575
    :cond_1
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/am/OomAdjusterDebugLogger;->shouldLog(I)Z

    move-result v8

    .line 1576
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v10, :cond_2

    .line 1577
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": proc state from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", capability from "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", allowlist from "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", procAdjChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1577
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-eqz v10, :cond_a

    .line 1586
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1592
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1593
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1594
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v14

    cmp-long v10, v14, v11

    if-nez v10, :cond_7

    .line 1595
    :cond_3
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    if-eqz v8, :cond_4

    .line 1597
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/am/OomAdjusterDebugLogger;->logSetLastBackgroundTime(IJ)V

    .line 1599
    :cond_4
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v10, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v12, 0x3a

    if-nez v11, :cond_5

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 1600
    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_5
    if-eqz v8, :cond_6

    .line 1606
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v14, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v10, v11, v14, v15}, Lcom/android/server/am/OomAdjusterDebugLogger;->logScheduleUidIdle1(IJ)V

    .line 1609
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v11, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v10, v12, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1613
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1615
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v10

    if-eq v10, v9, :cond_8

    .line 1617
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v10, 0x2

    goto :goto_2

    :cond_9
    move v10, v13

    goto :goto_2

    .line 1621
    :cond_a
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1623
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1624
    invoke-virtual {v7, v13}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    const/4 v10, 0x4

    goto :goto_1

    :cond_b
    move v10, v13

    .line 1626
    :goto_1
    invoke-virtual {v7, v11, v12}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1627
    invoke-virtual {v7, v11, v12}, Lcom/android/server/am/UidRecord;->setLastIdleTime(J)V

    if-eqz v8, :cond_c

    .line 1629
    iget-object v11, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/OomAdjusterDebugLogger;->logClearLastBackgroundTime(I)V

    .line 1632
    :cond_c
    :goto_2
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v11

    const/16 v12, 0xb

    if-le v11, v12, :cond_d

    move v11, v6

    goto :goto_3

    :cond_d
    move v11, v13

    .line 1634
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v14

    if-le v14, v12, :cond_e

    move v13, v6

    :cond_e
    if-ne v11, v13, :cond_f

    .line 1637
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v11

    if-ne v11, v9, :cond_11

    :cond_f
    if-eqz v13, :cond_10

    const/16 v9, 0x8

    goto :goto_4

    :cond_10
    const/16 v9, 0x10

    :goto_4
    or-int/2addr v10, v9

    .line 1641
    :cond_11
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v11

    if-eq v9, v11, :cond_12

    or-int/lit8 v10, v10, 0x20

    .line 1644
    :cond_12
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    const/high16 v12, -0x80000000

    if-eq v9, v11, :cond_13

    or-int/2addr v10, v12

    .line 1647
    :cond_13
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v9

    if-eqz v9, :cond_14

    or-int/lit8 v10, v10, 0x40

    .line 1650
    :cond_14
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    .line 1651
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v11

    .line 1652
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1653
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1654
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1655
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1656
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    if-eqz v8, :cond_16

    .line 1658
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    if-ne v8, v9, :cond_15

    .line 1659
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v8

    if-eq v8, v11, :cond_16

    .line 1661
    :cond_15
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v19

    .line 1664
    iget-object v13, v0, Lcom/android/server/am/OomAdjuster;->mLogger:Lcom/android/server/am/OomAdjusterDebugLogger;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v14

    .line 1665
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v15

    .line 1666
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v17

    move/from16 v16, v9

    move/from16 v18, v11

    .line 1664
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/OomAdjusterDebugLogger;->logUidStateChanged(IIIIII)V

    :cond_16
    and-int v8, v10, v12

    if-nez v8, :cond_17

    and-int/lit8 v9, v10, 0x20

    if-eqz v9, :cond_18

    .line 1671
    :cond_17
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1672
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v12

    .line 1671
    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_18
    if-eqz v10, :cond_19

    .line 1675
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, -0x1

    invoke-virtual {v9, v7, v11, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_19
    if-nez v8, :cond_1a

    and-int/lit8 v9, v10, 0x20

    if-eqz v9, :cond_1b

    .line 1679
    :cond_1a
    iget-object v9, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v10

    .line 1680
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v12

    .line 1679
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessStateAndCapability(III)V

    :cond_1b
    if-eqz v8, :cond_1c

    .line 1683
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    .line 1685
    :cond_1c
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1686
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1690
    :cond_1d
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v8, v7, v2, v3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 1692
    :cond_1e
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1f

    .line 1693
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1696
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    sub-int/2addr v1, v6

    :goto_5
    if-ltz v1, :cond_20

    .line 1701
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidRecord;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_20
    return-void
.end method
