.class public Lcom/android/server/am/ForegroundServiceTypeLoggerModule;
.super Ljava/lang/Object;
.source "ForegroundServiceTypeLoggerModule.java"


# instance fields
.field public final mUids:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final convertFgsTypeToApiTypes(I)Landroid/util/IntArray;
    .locals 4

    .line 444
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 447
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    .line 451
    invoke-virtual {p0, v3}, Landroid/util/IntArray;->add(I)V

    .line 452
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->add(I)V

    const/16 v0, 0x9

    .line 453
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 457
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x4

    if-ne v0, v3, :cond_3

    const/4 v0, 0x5

    .line 461
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    .line 462
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_3
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    .line 466
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_4
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5

    const/4 p1, 0x7

    .line 470
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_5
    return-object p0
.end method

.method public final hasValidActiveFgs(II)Z
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-eqz p0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V
    .locals 49

    move-object/from16 v0, p1

    move/from16 v1, p4

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 492
    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v3, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    .line 497
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v7, p5

    move-wide/from16 v37, v7

    goto :goto_0

    :cond_1
    move-wide/from16 v37, v5

    .line 499
    :goto_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, p5, v3

    :cond_2
    move-wide/from16 v39, v5

    .line 503
    filled-new-array {v1}, [I

    move-result-object v31

    const/4 v1, 0x1

    .line 505
    new-array v1, v1, [J

    aput-wide p5, v1, v2

    .line 506
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 511
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v13

    .line 512
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v14

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 516
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    .line 517
    iget v4, v4, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    move/from16 v18, v4

    goto :goto_1

    :cond_3
    move/from16 v18, v5

    :goto_1
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v6, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget v7, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iget-boolean v12, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 527
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v5, v5, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    :cond_4
    move/from16 v28, v5

    if-eqz v2, :cond_5

    .line 528
    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v2, v2, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v29, v2

    goto :goto_2

    :cond_5
    const/16 v29, 0x0

    .line 529
    :goto_2
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    move-object/from16 v32, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    move/from16 v43, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    move/from16 v44, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v25, v9

    const/16 v9, 0x3c

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v33, -0x1

    const/16 v34, 0x0

    const/16 v35, -0x1

    const/16 v36, 0x0

    move/from16 v30, p3

    move/from16 v46, v0

    move/from16 v45, v1

    move/from16 v41, v2

    move/from16 v16, v3

    move/from16 v19, v4

    move/from16 v42, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v24, v8

    move/from16 v27, v12

    move/from16 v12, p2

    .line 506
    invoke-static/range {v9 .. v48}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    return-void
.end method

.method public logFgsApiEventWithNoFgs(IIIJ)V
    .locals 42

    move/from16 v0, p3

    move-object/from16 v1, p0

    .line 559
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v1, :cond_0

    return-void

    .line 563
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p4, v1

    :goto_0
    move-wide/from16 v32, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 567
    :goto_1
    filled-new-array {v0}, [I

    move-result-object v24

    const/4 v0, 0x1

    .line 569
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v2, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v9, p1

    move/from16 v23, p2

    move-object/from16 v25, v0

    .line 570
    invoke-static/range {v2 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    return-void
.end method

.method public logForegroundServiceApiEventBegin(IIILjava/lang/String;)J
    .locals 11

    .line 288
    new-instance v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v5, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    move-object v7, v1

    .line 290
    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule-IA;)V

    .line 293
    iget-object v3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_4

    .line 301
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 302
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 305
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 307
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 311
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 312
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 313
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 318
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    iget-wide v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v0

    .line 326
    :cond_4
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5

    .line 329
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 332
    :cond_5
    iget-object v3, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 333
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    iget-object v3, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 338
    iget-wide v8, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    .line 339
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 340
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    const/4 v2, 0x4

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move-wide v5, v8

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_0

    .line 348
    :cond_6
    iget-wide v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v0
.end method

.method public logForegroundServiceApiEventEnd(III)J
    .locals 8

    .line 362
    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v7, :cond_0

    .line 364
    const-string v0, "ForegroundServiceTypeLoggerModule"

    const-string v1, "API event end called before start!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 367
    :cond_0
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 370
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 374
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 373
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 378
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x3

    move-object v0, p0

    move v3, p1

    move v1, p2

    .line 384
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEventWithNoFgs(IIIJ)V

    .line 387
    iget-object v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-wide v4

    .line 395
    :cond_2
    iget-object v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 397
    iget-object v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    :cond_3
    iget-object v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 403
    iget-object v1, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 405
    :cond_4
    iget-object v1, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 406
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 413
    :cond_5
    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    const-string v3, ""

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v4, p1

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    .line 415
    iget-object v1, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    iget-wide v0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v0
.end method

.method public logForegroundServiceApiStateChanged(IIII)V
    .locals 7

    .line 424
    iget-object p3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 425
    iget-object p3, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 434
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    const/4 v2, 0x4

    move-object v0, p0

    move v4, p1

    move v3, p4

    .line 435
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public logForegroundServiceStart(IILcom/android/server/am/ServiceRecord;)V
    .locals 11

    .line 138
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 140
    const-string v0, "foregroundService"

    iget v1, p3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, p2, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 144
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez p2, :cond_1

    .line 146
    new-instance p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule-IA;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_1
    iget v0, p3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground service start for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have any types"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ForegroundServiceTypeLoggerModule"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 159
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    .line 160
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    .line 161
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 162
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    .line 164
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    .line 166
    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    :cond_3
    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 169
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 170
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 180
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    invoke-virtual {p1, v5}, Landroid/util/IntArray;->add(I)V

    .line 183
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 184
    iget-wide v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-virtual {v1, v7, v8}, Landroid/util/LongArray;->add(J)V

    const/4 v7, 0x1

    .line 186
    iput-boolean v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mIsAssociatedWithFgs:Z

    .line 187
    iput-object p3, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mAssociatedFgsRecord:Lcom/android/server/am/ServiceRecord;

    .line 191
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p2

    if-eqz p2, :cond_6

    .line 196
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p2

    :goto_1
    if-ge v3, p2, :cond_6

    .line 200
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 201
    invoke-virtual {v1, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v9

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object v4, p0

    move-object v5, p3

    .line 197
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 214
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x40

    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 216
    invoke-static {v4, v5, v3, v6}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 219
    :cond_0
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v3

    .line 220
    iget-object v4, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 221
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    const-string v6, "ForegroundServiceTypeLoggerModule"

    if-nez v5, :cond_1

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FGS stop call for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has no types!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    const-string v5, " in package "

    if-nez v4, :cond_2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FGS stop call being logged with no start call for UID for UID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_7

    .line 233
    invoke-virtual {v3, v11}, Landroid/util/IntArray;->get(I)I

    move-result v12

    .line 236
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_3

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find appropriate running FGS for FGS stop for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 247
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 249
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :cond_4
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_5

    .line 254
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Logger should be tracking FGS types correctly for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_5
    iget-object v14, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    if-eqz v14, :cond_6

    .line 263
    iget-object v15, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 264
    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-nez v13, :cond_6

    .line 265
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-wide v13, v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 273
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_8

    .line 276
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object/from16 v1, p2

    .line 274
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto :goto_2

    :cond_8
    return-void
.end method
