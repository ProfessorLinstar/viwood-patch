.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final BASIC_PII_FILTERS:Landroid/util/ArrayMap;

.field public static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field public static final DEBUG:Z

.field public static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static sMessageDigest:Ljava/security/MessageDigest;

.field public static final sNamespaceHashCache:Landroid/util/ArrayMap;


# instance fields
.field public appHasDozeExemption:Z

.field public final batteryName:Ljava/lang/String;

.field public final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;

.field public changedUris:Landroid/util/ArraySet;

.field public contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;

.field public final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field public final latestRunTimeElapsedMillis:J

.field public final mCanApplyTransportAffinities:Z

.field public mConstraintChangeHistoryIndex:I

.field public final mConstraintStatusHistory:[I

.field public final mConstraintUpdatedTimesElapsed:[J

.field public mCumulativeExecutionTimeMs:J

.field public mDynamicConstraints:I

.field public mExpeditedQuotaApproved:Z

.field public mFilteredDebugTags:[Ljava/lang/String;

.field public mFilteredTraceTag:Ljava/lang/String;

.field public mFirstForceBatchedTimeElapsed:J

.field public final mHasExemptedMediaUrisOnly:Z

.field public mHasMediaBackupExemption:Z

.field public mInternalFlags:I

.field public mIsAbandoned:Z

.field public mIsDowngradedDueToBuggyApp:Z

.field public final mIsProxyJob:Z

.field public mIsUserBgRestricted:Z

.field public mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field public mLastFailedRunTime:J

.field public mLastSuccessfulRunTime:J

.field public mLoggedBucketMismatch:Z

.field public final mLoggingJobId:J

.field public mMinimumNetworkChunkBytes:J

.field public final mNamespace:Ljava/lang/String;

.field public final mNamespaceHash:Ljava/lang/String;

.field public final mNumAbandonedFailures:I

.field public mNumAppliedFlexibleConstraints:I

.field public mNumDroppedFlexibleConstraints:I

.field public final mNumSystemStops:I

.field public mOriginalLatestRunTimeElapsedMillis:J

.field public final mPendingJobReasonsHistory:Ljava/util/List;

.field public mPersistedUtcTimes:Landroid/util/Pair;

.field public mReadyDeadlineSatisfied:Z

.field public mReadyDynamicSatisfied:Z

.field public mReadyNotDozing:Z

.field public mReadyNotRestrictedInBg:Z

.field public mReadyWithinQuota:Z

.field public mReasonReadyToUnready:I

.field public final mRequiredConstraintsOfInterest:I

.field public mSatisfiedConstraintsOfInterest:I

.field public mSystemTraceTag:Ljava/lang/String;

.field public mTotalNetworkDownloadBytes:J

.field public mTotalNetworkUploadBytes:J

.field public mTransportAffinitiesSatisfied:Z

.field public mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

.field public mWakelockTag:Ljava/lang/String;

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field public final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;

.field public prepared:Z

.field public final requiredConstraints:I

.field public satisfiedConstraints:I

.field public serviceProcessName:Ljava/lang/String;

.field public final sourcePackageName:Ljava/lang/String;

.field public final sourceTag:Ljava/lang/String;

.field public final sourceUid:I

.field public final sourceUserId:I

.field public standbyBucket:I

.field public startedAsExpeditedJob:Z

.field public startedAsUserInitiatedJob:Z

.field public startedWithForegroundFlag:Z

.field public startedWithImmediacyPrivilege:Z

.field public trackingControllers:I

.field public uidActive:Z

.field public unpreparedPoint:Ljava/lang/Throwable;

.field public uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field public whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    .line 211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    .line 214
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string v2, "[EMAIL]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string v2, "[PHONE]"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p10

    move-wide/from16 v8, p11

    move-wide/from16 v10, p13

    .line 632
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    .line 290
    iput-object v12, v0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v13, 0x0

    .line 353
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 354
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 359
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 463
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 468
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 475
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    .line 477
    iput-boolean v13, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    const/4 v14, 0x1

    .line 485
    iput v14, v0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 488
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 524
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v15, 0xa

    move/from16 v16, v14

    .line 525
    new-array v14, v15, [J

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    .line 526
    new-array v14, v15, [I

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    .line 528
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    const-wide/16 v14, -0x1

    .line 538
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 539
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 540
    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 587
    iput v13, v0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 633
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 634
    iput v4, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 635
    iput-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 636
    invoke-static {v5}, Lcom/android/server/job/controllers/JobStatus;->generateNamespaceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v14

    invoke-virtual {v0, v5, v14}, Lcom/android/server/job/controllers/JobStatus;->generateLoggingId(Ljava/lang/String;I)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const-wide/16 v14, 0x0

    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    if-eqz v2, :cond_0

    .line 642
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    invoke-interface {v12, v2, v14, v15, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v12, v13

    :goto_0
    if-ne v12, v13, :cond_1

    .line 649
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 650
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 652
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_1

    .line 654
    :cond_1
    iput v12, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 655
    iput v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 656
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 657
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 661
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 665
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 666
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    new-instance v2, Landroid/util/Range;

    iget v12, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 667
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 668
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 666
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/app/job/JobInfo$Builder;->build(ZZZZ)Landroid/app/job/JobInfo;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    move-object v1, v2

    .line 674
    :goto_2
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_3

    .line 684
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_3
    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 687
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 689
    :cond_4
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 693
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 694
    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    .line 696
    iput-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 697
    iput-wide v10, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 698
    iput-wide v10, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 699
    iput v6, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    move/from16 v2, p9

    .line 700
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    .line 701
    iput v7, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 703
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v2

    .line 704
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    :cond_5
    cmp-long v3, v8, v14

    if-eqz v3, :cond_6

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_6
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v10, v8

    if-eqz v3, :cond_7

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    .line 713
    :cond_7
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    .line 717
    :cond_8
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_9

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    .line 720
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v5, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_b

    aget-object v9, v3, v8

    .line 721
    sget-object v10, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    move v3, v2

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    move v3, v2

    move/from16 v2, v16

    .line 727
    :goto_5
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 729
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 730
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_c

    move/from16 v2, v16

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    not-int v5, v3

    and-int/lit8 v5, v5, 0x7

    if-nez v5, :cond_e

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v2, v16

    .line 738
    :goto_8
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-nez v1, :cond_f

    add-int v1, v6, v7

    move/from16 v5, v16

    if-eq v1, v5, :cond_f

    if-eqz v2, :cond_f

    const/high16 v1, 0x200000

    or-int/2addr v3, v1

    .line 744
    :cond_f
    iput v3, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v1, -0x6b5ffff1

    and-int/2addr v1, v3

    .line 745
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v1, p22

    .line 746
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 747
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v1, 0x5

    if-ne v4, v1, :cond_10

    const v1, 0x10000007

    .line 749
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    const/4 v2, 0x0

    :goto_9
    move-wide/from16 v3, p19

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    .line 751
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_9

    .line 754
    :goto_a
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move-wide/from16 v3, p15

    .line 756
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v3, p17

    .line 757
    iput-wide v3, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v1, p21

    .line 759
    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 761
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 763
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    .line 765
    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;JJJJJLandroid/util/Pair;II)V
    .locals 24

    move-object/from16 v0, p18

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    move/from16 v22, p19

    move/from16 v23, p20

    .line 809
    invoke-direct/range {v1 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    .line 821
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 823
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 23

    move-object/from16 v0, p1

    .line 771
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 772
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 773
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 774
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    .line 775
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumAbandonedFailures()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNumSystemStops()I

    move-result v10

    .line 776
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v13

    .line 777
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v15

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v17

    .line 778
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v19

    .line 779
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v21

    move-object/from16 v22, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move-object/from16 v0, v22

    move/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, p0

    .line 771
    invoke-direct/range {v0 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    move-object/from16 v1, p1

    .line 780
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 781
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v2, :cond_0

    .line 782
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 783
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobScheduler.JobStatus"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    :cond_0
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 787
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 789
    :cond_1
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 790
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V
    .locals 23

    move-object/from16 v0, p1

    .line 836
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 837
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 838
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 839
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    .line 844
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v21

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v15, p9

    move-wide/from16 v17, p11

    move-wide/from16 v19, p13

    move/from16 v22, v0

    move-object/from16 v0, p0

    .line 836
    invoke-direct/range {v0 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-void
.end method

.method public static applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1432
    sget-object v0, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1433
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->BASIC_PII_FILTERS:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static bucketName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2842
    :pswitch_0
    const-string p0, "EXEMPTED"

    return-object p0

    .line 2841
    :pswitch_1
    const-string p0, "RESTRICTED"

    return-object p0

    .line 2840
    :pswitch_2
    const-string p0, "NEVER"

    return-object p0

    .line 2839
    :pswitch_3
    const-string p0, "RARE"

    return-object p0

    .line 2838
    :pswitch_4
    const-string p0, "FREQUENT"

    return-object p0

    .line 2837
    :pswitch_5
    const-string p0, "WORKING_SET"

    return-object p0

    .line 2836
    :pswitch_6
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 29

    .line 858
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 862
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 867
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v4, v2

    :goto_0
    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    goto :goto_2

    .line 869
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 871
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v2, p2

    :goto_3
    move/from16 v10, p3

    goto :goto_4

    .line 874
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 876
    :goto_4
    invoke-static {v2, v10, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 878
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v6 .. v28}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    return-object v6
.end method

.method public static dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2678
    const-string v0, " CHARGING"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2681
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 2684
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 2687
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 2690
    const-string v0, " DEADLINE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    .line 2693
    const-string v0, " IDLE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    .line 2696
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 2699
    const-string v0, " FLEXIBILITY"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x4000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 2702
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    .line 2705
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    if-eqz v0, :cond_a

    .line 2708
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    .line 2711
    const-string v0, " PREFETCH"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    .line 2714
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 2717
    const-string v0, " [0x"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2718
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static formatTime(J)Ljava/lang/CharSequence;
    .locals 1

    .line 3165
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static generateNamespaceHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 903
    :cond_1
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 904
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 906
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 908
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :try_start_1
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    if-nez v1, :cond_3

    .line 915
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    .line 917
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/server/job/controllers/JobStatus;->sMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 920
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-byte v5, v1, v4

    .line 921
    const-string v6, "%02X"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 923
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 925
    :goto_2
    const-string v2, "JobScheduler.JobStatus"

    const-string v3, "Couldn\'t hash input"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-nez v0, :cond_5

    .line 930
    const-string p0, "failed_namespace_hash"

    return-object p0

    .line 932
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 933
    sget-object v2, Lcom/android/server/job/controllers/JobStatus;->sNamespaceHashCache:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 934
    :try_start_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v3, 0x80

    if-lt v1, v3, :cond_6

    .line 937
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 939
    :cond_6
    :goto_4
    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    monitor-exit v2

    return-object v0

    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 908
    :goto_6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getProtoConstraint(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x7

    return p0

    :sswitch_2
    const/16 p0, 0x8

    return p0

    :sswitch_3
    const/16 p0, 0x9

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0xe

    return p0

    :sswitch_6
    const/16 p0, 0xb

    return p0

    :sswitch_7
    const/16 p0, 0xf

    return p0

    :sswitch_8
    const/4 p0, 0x3

    return p0

    :sswitch_9
    const/4 p0, 0x6

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x4 -> :sswitch_9
        0x8 -> :sswitch_8
        0x200000 -> :sswitch_7
        0x400000 -> :sswitch_6
        0x800000 -> :sswitch_5
        0x1000000 -> :sswitch_4
        0x2000000 -> :sswitch_3
        0x4000000 -> :sswitch_2
        0x10000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .locals 1

    .line 990
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_0
    return-void
.end method

.method public static ungrantWorkList(Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1017
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1019
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDynamicConstraints(I)V
    .locals 2

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2352
    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "Tried to set quota as a dynamic constraint"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x1000001

    and-int/2addr p1, v0

    .line 2359
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 2362
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, -0x4000001

    and-int/2addr p1, v0

    .line 2366
    :cond_2
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_3

    .line 2367
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public addInternalFlags(I)V
    .locals 1

    .line 1536
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public areTransportAffinitiesSatisfied()Z
    .locals 0

    .line 1740
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    return p0
.end method

.method public canApplyTransportAffinities()Z
    .locals 0

    .line 1749
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    return p0
.end method

.method public canRunInBatterySaver()Z
    .locals 2

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public canRunInDoze()Z
    .locals 2

    .line 1850
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public clearPersistedUtcTimes()V
    .locals 1

    const/4 v0, 0x0

    .line 1794
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-void
.end method

.method public clearTrackingController(I)Z
    .locals 2

    .line 2313
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2314
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public completeWorkLocked(I)Z
    .locals 5

    .line 1000
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1001
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1003
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 1004
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1005
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1006
    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public computeSystemTraceTag()Ljava/lang/String;
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTagInner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSystemTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public final computeSystemTraceTagInner()Ljava/lang/String;
    .locals 3

    .line 1131
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1133
    const-string v2, "*job*<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1135
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_2
    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final constraintToStopReason(I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/16 v0, 0x8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    if-eq p1, v0, :cond_7

    const/high16 v0, 0x200000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_4

    const/high16 p0, 0x800000

    if-eq p1, p0, :cond_3

    const/high16 p0, 0x1000000

    if-eq p1, p0, :cond_2

    const/high16 p0, 0x2000000

    if-eq p1, p0, :cond_1

    const/high16 p0, 0x10000000

    if-eq p1, p0, :cond_0

    .line 2120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported constraint ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") --stop reason mapping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.JobStatus"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    return v2

    :cond_2
    const/16 p0, 0xa

    return p0

    :cond_3
    const/16 p0, 0xf

    return p0

    .line 2097
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p0, :cond_5

    const/16 p0, 0xb

    return p0

    :cond_5
    return v2

    :cond_6
    return v1

    :cond_7
    const/16 p0, 0x9

    return p0

    .line 2078
    :cond_8
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    return v1

    .line 2058
    :cond_a
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x5

    return p0

    :cond_b
    return v1

    .line 2067
    :cond_c
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x6

    return p0

    :cond_d
    return v1
.end method

.method public constraintsToPendingJobReasons(I)Ljava/util/ArrayList;
    .locals 4

    .line 2127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    const/16 v2, 0xc

    .line 2140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2137
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 2138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 2140
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/high16 v1, 0x2000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 2144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2145
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 2150
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 2153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 2157
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    .line 2161
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 2164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 2168
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_8

    .line 2174
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    .line 2177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 2181
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 2182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x6

    .line 2188
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_9
    const/high16 p0, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_a

    const/4 p0, 0x7

    .line 2191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_a
    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/16 p0, 0xd

    .line 2194
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_b
    const/high16 p0, 0x800000

    and-int/2addr p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0xa

    .line 2197
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_c
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_d

    const/16 p0, 0xb

    .line 2200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_d
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x9

    .line 2203
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_e
    const/high16 p0, 0x1000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    const/16 p0, 0xe

    .line 2206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_f
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_10

    const/16 p0, 0x10

    .line 2210
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 961
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 964
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 966
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public disallowRunInBatterySaverAndDoze()V
    .locals 1

    const/high16 v0, 0x2400000

    .line 2340
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-wide v6, p3

    .line 2851
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2852
    const-string v0, " tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const-string v0, "Source: uid="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2855
    const-string v0, " user="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2856
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_19

    .line 2858
    const-string v3, "JobInfo:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2861
    const-string v3, "Service: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2864
    const-string v3, "PERIODIC: interval="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2865
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2866
    const-string v3, " flex="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2867
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2869
    :cond_0
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2870
    const-string v3, "PERSISTED"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBias()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2873
    const-string v3, "Bias: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBias()I

    move-result v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    :cond_2
    const-string v3, "Priority: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v3}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2878
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v3

    .line 2879
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 2880
    const-string v4, " effective="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    invoke-static {v3}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2883
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2884
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2885
    const-string v3, "Flags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2886
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2889
    const-string v3, "Internal flags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 2893
    const-string v3, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2895
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2897
    :cond_6
    const-string v3, "Requires: charging="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2898
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v3, " batteryNotLow="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2899
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v3, " deviceIdle="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2900
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2901
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2902
    const-string v3, "Trigger content URIs:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 2904
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 2905
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    aget-object v4, v4, v3

    .line 2906
    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2907
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2909
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2910
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_8

    .line 2911
    const-string v3, "Trigger update delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2912
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2913
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2915
    :cond_8
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_9

    .line 2916
    const-string v3, "Trigger max delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2917
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2918
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2920
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Has media backup exemption"

    invoke-virtual {p1, v4, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2922
    :cond_a
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2923
    const-string v3, "Extras: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2924
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    :cond_b
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2927
    const-string v3, "Transient extras: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2928
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    :cond_c
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2931
    const-string v3, "Clip data: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2932
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2933
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2936
    :cond_d
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v3, :cond_e

    .line 2937
    const-string v3, "Granted URI permissions:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v3, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2940
    :cond_e
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2941
    const-string v3, "Network type: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2942
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2944
    :cond_f
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v10, -0x1

    cmp-long v3, v3, v10

    if-eqz v3, :cond_10

    .line 2945
    const-string v3, "Network download bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2946
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2948
    :cond_10
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_11

    .line 2949
    const-string v3, "Network upload bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2950
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2952
    :cond_11
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_12

    .line 2953
    const-string v3, "Minimum network chunk bytes: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2954
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2956
    :cond_12
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_13

    .line 2957
    const-string v3, "Minimum latency: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2958
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2959
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2961
    :cond_13
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_14

    .line 2962
    const-string v3, "Max execution delay: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2963
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2964
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2966
    :cond_14
    const-string v3, "Backoff: policy="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2967
    const-string v3, " initial="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2968
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2969
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2970
    const-string v3, "Has early constraint"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    :cond_15
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2973
    const-string v3, "Has late constraint"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    :cond_16
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2977
    const-string v3, "Trace tag: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2978
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    :cond_17
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 2981
    const-string v3, "Debug tags: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2982
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getDebugTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2985
    :cond_18
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2988
    :cond_19
    const-string v3, "Required constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2989
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2990
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2991
    const-string v3, "Dynamic constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2992
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2993
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_1f

    .line 2995
    const-string v3, "Satisfied constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2996
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2997
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2998
    const-string v3, "Unsatisfied constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, v4

    and-int/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3002
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3003
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3004
    const-string v3, "Num Required Flexible constraints: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3006
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3007
    const-string v3, "Num Dropped Flexible constraints: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3009
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3012
    :cond_1a
    const-string v3, "Constraint history:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_1c

    .line 3015
    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v5, v3

    rem-int/2addr v5, v4

    .line 3016
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v10, v4, v5

    cmp-long v4, v10, v8

    if-nez v4, :cond_1b

    goto :goto_2

    .line 3019
    :cond_1b
    invoke-static {v10, v11, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3021
    const-string v4, " ="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3022
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v4, v4, v5

    invoke-static {p1, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 3023
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3025
    :cond_1c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3027
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz v3, :cond_1d

    .line 3028
    const-string v3, "Doze whitelisted: true"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v3, :cond_1e

    .line 3031
    const-string v3, "Uid: active"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    :cond_1e
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3034
    const-string v3, "Is exempted from app standby"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    :cond_1f
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v3, :cond_27

    .line 3038
    const-string v3, "Tracking:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3039
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_20

    const-string v3, " BATTERY"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3040
    :cond_20
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    const-string v3, " CONNECTIVITY"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3041
    :cond_21
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_22

    const-string v3, " CONTENT"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3042
    :cond_22
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_23

    const-string v3, " IDLE"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3043
    :cond_23
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_24

    const-string v3, " STORAGE"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3044
    :cond_24
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_25

    const-string v3, " TIME"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3045
    :cond_25
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_26

    const-string v3, " QUOTA"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3046
    :cond_26
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3049
    :cond_27
    const-string v3, "Implicit constraints:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3051
    const-string/jumbo v3, "readyNotDozing: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3052
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3053
    const-string/jumbo v3, "readyNotRestrictedInBg: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3055
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 3056
    const-string/jumbo v3, "readyDeadlineSatisfied: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3057
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3059
    :cond_28
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v3, :cond_29

    .line 3060
    const-string/jumbo v3, "readyDynamicSatisfied: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3061
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3063
    :cond_29
    const-string/jumbo v3, "readyComponentEnabled: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3064
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz v3, :cond_2a

    goto :goto_3

    :cond_2a
    move v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3065
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    const-string v3, ")"

    if-eqz v2, :cond_2b

    .line 3066
    const-string v2, "expeditedQuotaApproved: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3068
    const-string v2, " (started as EJ: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3069
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3070
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2c

    .line 3073
    const-string/jumbo v0, "userInitiatedApproved: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3074
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3075
    const-string v0, " (started as UIJ: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3076
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3077
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    :cond_2c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3081
    const-string v0, "Started with foreground flag: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3082
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3083
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz v0, :cond_2d

    .line 3084
    const-string v0, "User BG restricted"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    :cond_2d
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_2f

    .line 3088
    const-string v0, "Changed authorities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    .line 3090
    :goto_4
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 3091
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3093
    :cond_2e
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3095
    :cond_2f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_31

    .line 3096
    const-string v0, "Changed URIs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    .line 3098
    :goto_5
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 3099
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3101
    :cond_30
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3103
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_32

    .line 3104
    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3106
    :cond_32
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 3107
    const-string v0, "Pending work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 3108
    :goto_6
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 3109
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3112
    :cond_33
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 3113
    const-string v0, "Executing work:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    :goto_7
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 3115
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3118
    :cond_34
    const-string v0, "Standby bucket: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3121
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_35

    .line 3122
    const-string v0, "Deferred since: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3126
    :cond_35
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_36

    .line 3127
    const-string v0, "Time since first force batch attempt: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3128
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3131
    :cond_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3133
    const-string v0, "Enqueue time: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3136
    const-string v0, "Run time: earliest="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3137
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3138
    const-string v2, ", latest="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3140
    const-string v2, ", original latest="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 3142
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3143
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_37

    .line 3144
    const-string v2, "Cumulative execution time="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3145
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3146
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3148
    :cond_37
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v2, :cond_38

    .line 3149
    const-string v2, "Num failures: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3151
    :cond_38
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz v2, :cond_39

    .line 3152
    const-string v2, "Num system stops: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3154
    :cond_39
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3a

    .line 3155
    const-string v2, "Last successful run: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3156
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3158
    :cond_3a
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3b

    .line 3159
    const-string v2, "Last failed run: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3160
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3169
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3171
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3172
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v4

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10500000003L

    .line 3173
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000004L

    .line 3174
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10900000005L

    .line 3175
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    const/4 v4, 0x0

    const-wide/16 p2, 0x0

    if-eqz p4, :cond_a

    const-wide v13, 0x10b00000006L

    .line 3178
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3180
    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    const-wide v7, 0x10b00000001L

    invoke-virtual {v15, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3182
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v7

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3183
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3184
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3186
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v7

    const-wide v11, 0x10800000005L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3187
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBias()I

    move-result v7

    const-wide v11, 0x11100000006L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3188
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v7

    const-wide v11, 0x10500000007L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000018L

    .line 3189
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3192
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v7

    const-wide v11, 0x10800000008L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3193
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v7

    const-wide v11, 0x10800000009L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3194
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3196
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    if-eqz v7, :cond_3

    move v7, v4

    .line 3197
    :goto_0
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_1

    const-wide v11, 0x20b0000000bL

    .line 3198
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 3199
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    aget-object v8, v8, v7

    .line 3201
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v15

    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3202
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3204
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide v5, 0x10900000002L

    .line 3207
    :goto_1
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x10500000001L

    goto :goto_0

    .line 3209
    :cond_1
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-ltz v5, :cond_2

    .line 3210
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3211
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    const-wide v7, 0x1030000000cL

    .line 3210
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3213
    :cond_2
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-ltz v5, :cond_3

    .line 3214
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3215
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    const-wide v7, 0x1030000000dL

    .line 3214
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3218
    :cond_3
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3219
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    const-wide v6, 0x10b0000000eL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3221
    :cond_4
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3222
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    const-wide v6, 0x10b0000000fL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3224
    :cond_5
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3225
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    const-wide v6, 0x10b00000010L

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3227
    :cond_6
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_7

    const-wide v6, 0x10b00000011L

    .line 3228
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3230
    :cond_7
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v11, v5, v7

    if-eqz v11, :cond_8

    const-wide v11, 0x10300000019L

    .line 3231
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3234
    :cond_8
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_9

    const-wide v7, 0x1030000001aL

    .line 3235
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3238
    :cond_9
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v5

    const-wide v7, 0x10300000014L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3239
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    const-wide v7, 0x10300000015L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10b00000016L

    .line 3241
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3242
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v7

    const-wide v11, 0x10e00000001L

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3243
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3244
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v7

    const-wide v11, 0x10300000002L

    .line 3243
    invoke-virtual {v1, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3245
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3247
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v5

    const-wide v6, 0x10800000017L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3248
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v5

    const-wide v6, 0x10800000018L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3250
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_a
    const-wide v5, 0x20e00000007L

    .line 3253
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v5, 0x20e0000001fL

    .line 3254
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p4, :cond_b

    const-wide v5, 0x20e00000008L

    .line 3256
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3257
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v6, v6

    and-int/2addr v5, v6

    const-wide v6, 0x20e00000009L

    invoke-virtual {v0, v1, v6, v7, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3259
    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000001aL

    .line 3260
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3261
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 3262
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v5

    const-wide v6, 0x1080000001bL

    .line 3261
    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3266
    :cond_b
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const-wide v7, 0x20e0000000bL

    if-eqz v5, :cond_c

    .line 3267
    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3270
    :cond_c
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v5, v9

    if-eqz v5, :cond_d

    .line 3271
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3274
    :cond_d
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    .line 3275
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3278
    :cond_e
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_f

    const/4 v5, 0x3

    .line 3279
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3282
    :cond_f
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_10

    .line 3283
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3286
    :cond_10
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_11

    const/4 v5, 0x5

    .line 3287
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3290
    :cond_11
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_12

    const/4 v5, 0x6

    .line 3291
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_12
    const-wide v5, 0x10b00000019L    # 5.665728762E-312

    .line 3296
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10800000001L

    .line 3297
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3298
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000003L

    .line 3302
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3304
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3306
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v5, :cond_13

    move v5, v4

    .line 3307
    :goto_2
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 3308
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x2090000000cL

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3311
    :cond_13
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v5, :cond_14

    move v5, v4

    .line 3312
    :goto_3
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 3313
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const-wide v7, 0x2090000000dL

    .line 3314
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3318
    :cond_14
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_15

    move v5, v4

    .line 3319
    :goto_4
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_15

    .line 3320
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobWorkItem;

    const-wide v7, 0x20b0000000fL

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3323
    :cond_15
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_16

    move v5, v4

    .line 3324
    :goto_5
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    .line 3325
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobWorkItem;

    const-wide v7, 0x20b00000010L

    invoke-virtual {v0, v1, v7, v8, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_16
    const-wide v5, 0x10e00000011L

    .line 3329
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3330
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v5, p5, v5

    const-wide v7, 0x10300000012L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3332
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v7, v5, p2

    if-nez v7, :cond_17

    move-wide/from16 v5, p2

    goto :goto_6

    :cond_17
    sub-long v5, p5, v5

    :goto_6
    const-wide v7, 0x1030000001cL

    .line 3331
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3334
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v7, v5, p2

    if-nez v7, :cond_18

    move-wide/from16 v5, p2

    goto :goto_7

    :cond_18
    sub-long v5, p5, v5

    :goto_7
    const-wide v7, 0x1030000001dL

    .line 3333
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3336
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v7, v5, p2

    const-wide v8, 0x11200000013L

    if-nez v7, :cond_19

    .line 3337
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    :cond_19
    sub-long v5, v5, p5

    .line 3339
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3342
    :goto_8
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    const-wide v8, 0x11200000014L

    if-nez v7, :cond_1a

    .line 3343
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    :cond_1a
    sub-long v5, v5, p5

    .line 3345
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_9
    const-wide v4, 0x1040000001eL

    .line 3348
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3351
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v4, v5

    const-wide v5, 0x10500000015L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000016L

    .line 3352
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000017L

    .line 3353
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3355
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 0

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2760
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 2763
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    and-int/lit8 p0, p4, 0x8

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    .line 2766
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const/high16 p0, -0x80000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    .line 2769
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p4

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    .line 2772
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    .line 2775
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const/high16 p0, 0x10000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_6

    const/4 p0, 0x7

    .line 2778
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6
    const/high16 p0, 0x4000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    .line 2781
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    const/high16 p0, 0x2000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_8

    const/16 p0, 0x9

    .line 2784
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    const/high16 p0, 0x1000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_9

    const/16 p0, 0xa

    .line 2787
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    const/high16 p0, 0x400000

    and-int/2addr p0, p4

    if-eqz p0, :cond_a

    const/16 p0, 0xb

    .line 2790
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .locals 0

    .line 2795
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2796
    const-string p0, "#"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, ": #"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2797
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2798
    const-string/jumbo p0, "x "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2799
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2800
    const-string p0, "URI grants:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2802
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2803
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2805
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 2

    .line 2809
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2811
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 2812
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2813
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2814
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-wide v0, 0x10b00000003L

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2816
    :cond_0
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2818
    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2821
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .locals 5

    .line 945
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 948
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 949
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 950
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 953
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 952
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public final formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .locals 0

    cmp-long p0, p2, p4

    if-nez p0, :cond_0

    .line 2617
    const-string/jumbo p0, "none"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p2, p6

    .line 2619
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    return-void
.end method

.method public final formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .locals 0

    cmp-long p0, p2, p4

    if-nez p0, :cond_0

    .line 2625
    const-string/jumbo p0, "none"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    sub-long/2addr p2, p6

    .line 2627
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    return-void
.end method

.method public final generateLoggingId(Ljava/lang/String;I)J
    .locals 2

    if-nez p1, :cond_0

    int-to-long p0, p2

    return-wide p0

    .line 891
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x1f

    shl-long/2addr p0, v0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public getAppTraceTag()Ljava/lang/String;
    .locals 0

    .line 1104
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 0

    .line 1426
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object p0
.end method

.method public getBias()I
    .locals 0

    .line 1485
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBias()I

    move-result p0

    return p0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 0

    .line 2828
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {p0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .locals 0

    .line 1200
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCumulativeExecutionTimeMs()J
    .locals 2

    .line 1716
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    return-wide v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    .line 1724
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectivePriority()I
    .locals 4

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/16 v2, 0x190

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1496
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1505
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1506
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-ge v3, v1, :cond_2

    goto :goto_2

    .line 1509
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    return v0

    .line 1514
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 1519
    :cond_4
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    div-int/2addr p0, v1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    const/16 p0, 0x64

    return p0

    :cond_5
    const/16 p0, 0xc8

    .line 1522
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_6
    const/16 p0, 0x12c

    .line 1521
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getEffectiveStandbyBucket()I
    .locals 5

    .line 1273
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_0

    .line 1274
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->isAppConsideredBuggy(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    goto :goto_0

    .line 1289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1291
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exempted app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " considered buggy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 1295
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 1302
    iget-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz v2, :cond_5

    .line 1307
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5
    if-eqz v0, :cond_7

    if-ge v1, v3, :cond_7

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    if-nez v0, :cond_6

    .line 1318
    const-string v0, "job_scheduler.value_job_quota_reduced_due_to_buggy_uid"

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUid()I

    move-result v1

    .line 1318
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 1321
    iput-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mIsDowngradedDueToBuggyApp:Z

    :cond_6
    return v3

    :cond_7
    return v1

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 1611
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 1615
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFilteredDebugTags()[Ljava/lang/String;
    .locals 4

    .line 1443
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1448
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredDebugTags:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1449
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getFilteredTraceTag()Ljava/lang/String;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1466
    :cond_1
    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->applyBasicPiiFilters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFilteredTraceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .locals 2

    .line 1372
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 0

    .line 1528
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    return p0
.end method

.method public getFractionRunTime()F
    .locals 12

    .line 1769
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1770
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v6, :cond_0

    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_0

    return v9

    :cond_0
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1774
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    return v9

    :cond_1
    return v5

    .line 1775
    :cond_2
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v10, v7

    if-nez p0, :cond_4

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3

    return v9

    :cond_3
    return v5

    :cond_4
    cmp-long p0, v0, v2

    if-gtz p0, :cond_5

    return v5

    :cond_5
    cmp-long p0, v0, v10

    if-ltz p0, :cond_6

    return v9

    :cond_6
    sub-long/2addr v0, v2

    long-to-float p0, v0

    sub-long/2addr v10, v2

    long-to-float v0, v10

    div-float/2addr p0, v0

    return p0
.end method

.method public getInternalFlags()I
    .locals 0

    .line 1532
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return p0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object p0
.end method

.method public getJobId()I
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getLastFailedRunTime()J
    .locals 2

    .line 2388
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .locals 2

    .line 2384
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    .line 1728
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getLoggingJobId()J
    .locals 2

    .line 1098
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    return-wide v0
.end method

.method public getMinimumNetworkChunkBytes()J
    .locals 2

    .line 1619
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 1403
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceHash()Ljava/lang/String;
    .locals 0

    .line 1408
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    return-object p0
.end method

.method public getNumAbandonedFailures()I
    .locals 0

    .line 1178
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    return p0
.end method

.method public getNumAppliedFlexibleConstraints()I
    .locals 0

    .line 1671
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    return p0
.end method

.method public getNumDroppedFlexibleConstraints()I
    .locals 0

    .line 1684
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    return p0
.end method

.method public getNumFailures()I
    .locals 0

    .line 1171
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return p0
.end method

.method public getNumPreviousAttempts()I
    .locals 1

    .line 1191
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getNumRequiredFlexibleConstraints()I
    .locals 1

    .line 1676
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getNumSystemStops()I
    .locals 0

    .line 1186
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    return p0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .locals 2

    .line 1732
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPendingJobReasons(Lcom/android/server/job/restrictions/JobRestriction;)[I
    .locals 3

    .line 2222
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v0, v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v1, v2

    const/high16 v2, 0x3600000

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 2224
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2229
    invoke-virtual {p1}, Lcom/android/server/job/restrictions/JobRestriction;->getPendingReason()I

    move-result p1

    .line 2230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    .line 2235
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2236
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 2237
    const-string p0, "JobScheduler.JobStatus"

    const-string p1, "App in NEVER bucket querying pending job reason"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xf

    .line 2239
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2240
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 2241
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2243
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_1
    if-ge v1, p0, :cond_4

    .line 2249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getPendingJobReasonsHistory()Ljava/util/List;
    .locals 4

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2292
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    add-int/lit8 v2, v1, -0xa

    const/4 v3, 0x0

    .line 2296
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2295
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 2294
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .locals 0

    .line 1790
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object p0
.end method

.method public getSatisfiedConstraintFlags()I
    .locals 0

    .line 1544
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return p0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 0

    .line 1418
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceUid()I
    .locals 0

    .line 1209
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0
.end method

.method public getSourceUserId()I
    .locals 0

    .line 1213
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0
.end method

.method public getStandbyBucket()I
    .locals 0

    .line 1330
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return p0
.end method

.method public getStopReason()I
    .locals 0

    .line 1754
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    return p0
.end method

.method public getTimeoutBlamePackageName()Ljava/lang/String;
    .locals 1

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeoutBlameUid()I
    .locals 1

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0

    .line 1255
    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return p0
.end method

.method public getTimeoutBlameUserId()I
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldBlameSourceForTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0

    .line 1265
    :cond_0
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    .line 1704
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 1708
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    .line 1696
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1f4

    .line 1700
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 1422
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 1217
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getUserVisibleJobSummary()Landroid/app/job/UserVisibleJobSummary;
    .locals 8

    .line 1829
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    if-nez v0, :cond_0

    .line 1830
    new-instance v1, Landroid/app/job/UserVisibleJobSummary;

    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1832
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Landroid/app/job/UserVisibleJobSummary;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    .line 1835
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mUserVisibleJobSummary:Landroid/app/job/UserVisibleJobSummary;

    return-object p0
.end method

.method public getWakelockTag()Ljava/lang/String;
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1474
    const-string v0, "*job*"

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    const-string v1, "e"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "u"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "r"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    .line 1481
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mWakelockTag:Ljava/lang/String;

    return-object p0
.end method

.method public getWhenStandbyDeferred()J
    .locals 2

    .line 1359
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public getWorkCount()I
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .locals 1

    const/4 v0, 0x2

    .line 1634
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasChargingConstraint()Z
    .locals 1

    const/4 v0, 0x1

    .line 1630
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasConnectivityConstraint()Z
    .locals 1

    .line 1626
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasConstraint(I)Z
    .locals 1

    .line 1692
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr p0, p1

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

.method public hasContentTriggerConstraint()Z
    .locals 1

    .line 1661
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasDeadlineConstraint()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1651
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasExecutingWorkLocked()Z
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasFlexibilityConstraint()Z
    .locals 1

    .line 1666
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    const/4 v0, 0x4

    .line 1655
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasPowerConstraint()Z
    .locals 1

    const/4 v0, 0x3

    .line 1639
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasStorageNotLowConstraint()Z
    .locals 1

    const/16 v0, 0x8

    .line 1643
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 1647
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public incrementCumulativeExecutionTime(J)V
    .locals 2

    .line 1720
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    return-void
.end method

.method public isAbandoned()Z
    .locals 0

    .line 1109
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return p0
.end method

.method public isConstraintSatisfied(I)Z
    .locals 0

    .line 2305
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConstraintsSatisfied()Z
    .locals 1

    .line 2512
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    return p0
.end method

.method public final isConstraintsSatisfied(I)Z
    .locals 3

    .line 2516
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2524
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v1, -0x7f5ffff1

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2527
    :cond_1
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isExpeditedQuotaApproved()Z
    .locals 0

    .line 2309
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    return p0
.end method

.method public isPersisted()Z
    .locals 0

    .line 1712
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    return p0
.end method

.method public isPreparedLocked()Z
    .locals 0

    .line 1085
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return p0
.end method

.method public isProxyJob()Z
    .locals 0

    .line 1151
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    return p0
.end method

.method public isReady()Z
    .locals 1

    .line 2395
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public final isReady(I)Z
    .locals 3

    .line 2477
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_0

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    return v1

    .line 2487
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_3

    .line 2488
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public isRequestedExpeditedJob()Z
    .locals 0

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserBgRestricted()Z
    .locals 0

    .line 1868
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    return p0
.end method

.method public isUserVisibleJob()Z
    .locals 1

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

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

.method public matches(ILjava/lang/String;I)Z
    .locals 1

    .line 2534
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p3, :cond_0

    iget p3, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 2535
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1553
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1557
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public maybeLogBucketMismatch()V
    .locals 2

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_0

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1353
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    :cond_0
    return-void
.end method

.method public final populatePendingJobReasonsHistoryMap(ZJI)V
    .locals 4

    .line 2257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v0, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2262
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p3, Landroid/app/job/PendingJobReasonsInfo;

    .line 2265
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 2267
    :cond_0
    filled-new-array {p2}, [I

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    .line 2262
    invoke-interface {p1, p3}, Ljava/util/List;->addLast(Ljava/lang/Object;)V

    return-void

    .line 2271
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 2272
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p4, p3, [I

    :goto_0
    if-ge p2, p3, :cond_3

    .line 2279
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2281
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    new-instance p1, Landroid/app/job/PendingJobReasonsInfo;

    invoke-direct {p1, v0, v1, p4}, Landroid/app/job/PendingJobReasonsInfo;-><init>(J[I)V

    invoke-interface {p0, p1}, Ljava/util/List;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareLocked()V
    .locals 7

    .line 1051
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_0

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1055
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    const/4 v0, 0x0

    .line 1057
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 1059
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1061
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1062
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 1061
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_1
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1157
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    :goto_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1162
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public readinessStatusWithConstraint(IZ)Z
    .locals 8

    .line 2409
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x2000000

    const/high16 v4, 0x1000000

    const/high16 v5, 0x400000

    const/4 v6, 0x0

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_0

    or-int p2, v0, p1

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_0
    not-int p2, p1

    and-int/2addr p2, v0

    goto :goto_0

    .line 2433
    :goto_1
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_1

    and-int v7, v0, p2

    if-ne p2, v7, :cond_1

    move p2, v1

    goto :goto_2

    :cond_1
    move p2, v6

    :goto_2
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    move v7, v6

    goto :goto_3

    .line 2416
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 2417
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_3

    .line 2420
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 2421
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_3

    .line 2424
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 2425
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_3

    .line 2412
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 2413
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    :goto_3
    const/high16 p2, 0x200000

    if-eq p1, p2, :cond_6

    or-int/2addr v0, p2

    .line 2448
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p2

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    .line 2464
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v6

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return p2

    .line 2455
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return p2

    .line 2458
    :cond_9
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p2

    .line 2461
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    return p2

    .line 2452
    :cond_b
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    return p2
.end method

.method public final removeDynamicConstraints(I)V
    .locals 1

    .line 2378
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_0

    .line 2379
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public removeInternalFlags(I)V
    .locals 1

    .line 1540
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public setAbandoned(Z)V
    .locals 0

    .line 1114
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    return-void
.end method

.method public setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z
    .locals 0

    .line 1936
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    const/high16 p4, 0x400000

    .line 1937
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1939
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setBatteryNotLowConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x2

    .line 1878
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setChargingConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x1

    .line 1873
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConnectivityConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x10000000

    .line 1913
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConstraintSatisfied(IJZ)Z
    .locals 6

    .line 2001
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p4, :cond_1

    return v2

    .line 2005
    :cond_1
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraint "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    .line 2007
    const-string v3, "NOT "

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "satisfied for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2006
    const-string v3, "JobScheduler.JobStatus"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p4, :cond_4

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 2011
    :goto_2
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p4, :cond_5

    move v4, p1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v4, -0x6b5ffff1

    and-int/2addr v4, v3

    .line 2012
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 2013
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_6

    and-int v5, v3, v4

    if-ne v4, v5, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 2028
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    aput-wide p2, v4, v5

    .line 2029
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v3, v4, v5

    add-int/2addr v5, v1

    .line 2030
    rem-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 2034
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p4

    if-eqz v0, :cond_7

    if-nez p4, :cond_7

    .line 2036
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintToStopReason(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-eqz p4, :cond_8

    .line 2038
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 2041
    :cond_8
    :goto_5
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int p1, p1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, v3

    const/high16 v3, 0x3600000

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    .line 2043
    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/job/controllers/JobStatus;->populatePendingJobReasonsHistoryMap(ZJI)V

    .line 2044
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x19

    if-lt p1, p2, :cond_9

    .line 2047
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    add-int/lit8 p1, p1, -0xa

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 2048
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_9
    return v1
.end method

.method public setContentTriggerConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x4000000

    .line 1918
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setDeadlineConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1898
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1900
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return v0

    :cond_1
    return p2
.end method

.method public setDeviceNotDozingConstraintSatisfied(JZZ)Z
    .locals 0

    .line 1924
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/high16 p4, 0x2000000

    .line 1925
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    move p2, p1

    :cond_1
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p1

    :cond_2
    return p2
.end method

.method public setExpeditedJobQuotaApproved(JZ)Z
    .locals 1

    .line 1967
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/4 p2, 0x0

    if-ne p1, p3, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    if-nez p3, :cond_1

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 1971
    :goto_0
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p3

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    const/16 p2, 0xa

    .line 1975
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 1977
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_3
    :goto_1
    return p1
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .locals 0

    .line 1376
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-void
.end method

.method public setFlexibilityConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x200000

    .line 1957
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setIdleConstraintSatisfied(JZ)Z
    .locals 1

    const/4 v0, 0x4

    .line 1908
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setNumAppliedFlexibleConstraints(I)V
    .locals 0

    .line 2326
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    return-void
.end method

.method public setNumDroppedFlexibleConstraints(I)V
    .locals 1

    .line 2331
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 2332
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 2331
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    return-void
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .locals 0

    .line 1736
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-void
.end method

.method public setPrefetchConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x800000

    .line 1888
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setQuotaConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, 0x1000000

    .line 1947
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1949
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setStandbyBucket(I)V
    .locals 3

    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1336
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_0

    .line 1337
    :cond_0
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_1

    .line 1339
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    .line 1342
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 p1, 0x0

    .line 1343
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    return-void
.end method

.method public setStorageNotLowConstraintSatisfied(JZ)Z
    .locals 1

    const/16 v0, 0x8

    .line 1883
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTimingDelayConstraintSatisfied(JZ)Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 1893
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTrackingController(I)V
    .locals 1

    .line 2321
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    return-void
.end method

.method public setTransportAffinitiesSatisfied(Z)V
    .locals 0

    .line 1744
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    return-void
.end method

.method public setUidActive(Z)Z
    .locals 1

    .line 1992
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_0

    .line 1993
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWhenStandbyDeferred(J)V
    .locals 0

    .line 1364
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-void
.end method

.method public final shouldBlameSourceForTimeout()Z
    .locals 0

    .line 1235
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    return p0
.end method

.method public shouldTreatAsExpeditedJob()Z
    .locals 1

    .line 1807
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldTreatAsUserInitiatedJob()Z
    .locals 1

    .line 1819
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1028
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1031
    :cond_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1032
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1034
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1036
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1037
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 1038
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 1039
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    goto :goto_1

    .line 1042
    :cond_3
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 1043
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 1044
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 1045
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 1047
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2637
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2639
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    :cond_0
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2643
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 2645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2646
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2656
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 2657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2658
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2541
    const-string v0, "JobStatus{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    const-string v8, ":"

    if-eqz v0, :cond_0

    .line 2544
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2548
    :cond_0
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    :goto_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2551
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 2553
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2554
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    const-string v0, " u="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2557
    const-string v0, " s="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2559
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_2

    .line 2561
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 2562
    const-string v0, " TIME="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 2564
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2565
    iget-wide v2, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 2567
    :goto_2
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2568
    const-string p0, " NET"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    :cond_3
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2571
    const-string p0, " CHARGING"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    :cond_4
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2574
    const-string p0, " BATNOTLOW"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :cond_5
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 2577
    const-string p0, " STORENOTLOW"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    :cond_6
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2580
    const-string p0, " IDLE"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    :cond_7
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 2583
    const-string p0, " PERIODIC"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    :cond_8
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2586
    const-string p0, " PERSISTED"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    :cond_9
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr p0, v2

    if-nez p0, :cond_a

    .line 2589
    const-string p0, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2591
    :cond_a
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2592
    const-string p0, " URIS="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    iget-object p0, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    :cond_b
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz p0, :cond_c

    .line 2596
    const-string p0, " failures="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2599
    :cond_c
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    if-eqz p0, :cond_d

    .line 2600
    const-string p0, " system stops="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2603
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 2604
    const-string p0, " READY"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2606
    :cond_e
    const-string p0, " satisfied:0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    iget p0, v0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    const/high16 v2, 0x3600000

    or-int/2addr p0, v2

    .line 2608
    const-string v2, " unsatisfied:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    :goto_3
    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unprepareLocked()V
    .locals 2

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    .line 1070
    const-string v0, "Was already unprepared at "

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1074
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 1076
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 1078
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    const/4 v0, 0x0

    .line 1080
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_1
    return-void
.end method

.method public final updateExpeditedDependencies()V
    .locals 1

    const/high16 v0, 0x2000000

    .line 1987
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return-void
.end method

.method public updateMediaBackupExemptionStatus()Z
    .locals 5

    .line 1385
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v0, :cond_0

    .line 1386
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    .line 1388
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1389
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1390
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 1393
    invoke-interface {v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 1392
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1394
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-ne v3, v0, :cond_2

    return v1

    .line 1397
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    return v2
.end method

.method public final updateNetworkBytesLocked()V
    .locals 10

    .line 1562
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, -0x1

    if-gez v0, :cond_0

    .line 1565
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1570
    iput-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 1576
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1577
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1578
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    cmp-long v1, v6, v2

    if-lez v1, :cond_3

    .line 1583
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_2

    add-long/2addr v8, v6

    .line 1584
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    goto :goto_1

    .line 1586
    :cond_2
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1589
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_5

    cmp-long v1, v6, v2

    if-lez v1, :cond_5

    .line 1594
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_4

    add-long/2addr v8, v6

    .line 1595
    iput-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    goto :goto_2

    .line 1597
    :cond_4
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1600
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    .line 1601
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_6

    .line 1602
    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    goto :goto_3

    :cond_6
    cmp-long v1, v6, v4

    if-eqz v1, :cond_7

    .line 1604
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public wouldBeReadyWithConstraint(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2403
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p0

    return p0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 2667
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 2669
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2670
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    .line 2671
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2673
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
