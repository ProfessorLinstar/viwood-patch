.class public final Lcom/android/server/am/AppStartInfoTracker;
.super Ljava/lang/Object;
.source "AppStartInfoTracker.java"


# static fields
.field static final APP_START_INFO_FILE:Ljava/lang/String; = "procstartinfo"

.field static final APP_START_INFO_HISTORY_LENGTH_MS:J

.field static final APP_START_INFO_HISTORY_LIST_SIZE:I = 0x10

.field public static final APP_START_INFO_PERSIST_INTERVAL:J

.field static final APP_START_STORE_DIR:Ljava/lang/String; = "procstartstore"

.field static final MAX_IN_PROGRESS_RECORDS:I = 0x5


# instance fields
.field mAppStartInfoHistoryListSize:I

.field mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppStartInfoPersistTask:Ljava/lang/Runnable;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field mEnabled:Z

.field public mHandler:Landroid/os/Handler;

.field final mInProgressRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAppStartInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field mProcStartInfoFile:Ljava/io/File;

.field mProcStartStoreDir:Ljava/io/File;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mTemporaryInProgressIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpStartInfoList:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$KV3NBYR4Jya7P9QoojzvC9rr4KE(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NYsQh-8lM7FDsO3bJCG0ECUX12o(Lcom/android/server/am/AppStartInfoTracker;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OAAONl-88gSRJWsYfe-6xUhxybY(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2

    .line 886
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 887
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 888
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 892
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VdR_UMu5lcdcEkpdcV9tz9DCksE(Lcom/android/server/am/AppStartInfoTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e8bB6slpx0Xgy9r3R5ue8hao6m0(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 13

    const-wide v2, 0x20b00000002L

    .line 1083
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v2, 0x10900000001L

    move-object/from16 v0, p4

    .line 1084
    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1085
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_0

    move-object/from16 v12, p5

    .line 1088
    :try_start_0
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    const-wide v2, 0x20b00000002L

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write app start info into persistentstorage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 1097
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_0
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1102
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$q83gRHliZ6lknI1uFyqnNAujwE8(ILjava/util/ArrayList;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 0

    .line 722
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-eqz p0, :cond_0

    .line 724
    invoke-static {p0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fgetmInfos(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p0, 0x0

    .line 726
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u6qs2IdvBWItgRWSSXIvHozrGxQ(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 596
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 597
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v1}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->disableAppMonitoringMode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w9zNHkWKHXjwRe_q1c5gg2-70ps(Landroid/app/ApplicationStartInfo;Landroid/app/ApplicationStartInfo;)I
    .locals 2

    .line 731
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v0

    .line 732
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide p0

    .line 731
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCompletenessAndCallback(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/ApplicationStartInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 143
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 200
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    return-void
.end method


# virtual methods
.method public final addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 569
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    .line 570
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setPid(I)V

    .line 571
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setRealUid(I)V

    .line 572
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setPackageUid(I)V

    if-lez p0, :cond_2

    goto :goto_1

    .line 573
    :cond_2
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setDefiningUid(I)V

    .line 574
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 575
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 580
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->wasForceStopped()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p0, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->wasForceStopped()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 580
    :cond_4
    invoke-virtual {p1, v0}, Landroid/app/ApplicationStartInfo;->setForceStopped(Z)V

    return-void
.end method

.method public addStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 785
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    move-object v1, v2

    .line 792
    :cond_1
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;-><init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    const-string p0, "ActivityManager"

    const-string p1, "Skipping saving the start info due to ongoing loading from storage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 649
    :cond_0
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/app/ApplicationStartInfo;)V

    .line 650
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    .line 655
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez v1, :cond_2

    .line 661
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 662
    invoke-static {v1, v2}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;I)V

    .line 663
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)V

    const/4 p1, 0x0

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    return-object v0
.end method

.method public addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V
    .locals 7

    .line 620
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Ljava/lang/String;IJI)V

    return-void
.end method

.method public addTimestampToStart(Ljava/lang/String;IJI)V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez p0, :cond_1

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addTimestampToStartLocked(IJ)V

    .line 638
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V
    .locals 5

    .line 678
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 682
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 684
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 686
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 688
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 689
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 694
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearHistoryProcessStartInfo(Ljava/lang/String;I)V
    .locals 4

    .line 1170
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1173
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    .line 1177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x20000

    .line 1180
    invoke-virtual {v0, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1182
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1183
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1184
    :try_start_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 1185
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1187
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 1185
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public clearProcessStartInfo(Z)V
    .locals 3

    .line 1149
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 1151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1154
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1155
    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    :cond_1
    if-eqz p1, :cond_2

    .line 1157
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 1158
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1160
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1161
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 1162
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public configureDetailedMonitoring(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 592
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 595
    :cond_0
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 602
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    const-string p0, "ActivityManager AppStartInfo detailed monitoring disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 607
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 608
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v2, p3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->enableAppMonitoringModeForUser(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ActivityManager AppStartInfo detailed monitoring enabled for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 613
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpHistoryProcessStartInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8

    .line 1195
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1198
    :cond_0
    const-string v0, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity start-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    new-instance v6, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v6}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    .line 1200
    iget-object v7, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1201
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1202
    invoke-virtual {v6, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    new-instance p2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, v6}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1211
    const-string v3, "  "

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 1214
    :cond_2
    :goto_0
    monitor-exit v7

    return-void

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .locals 3

    .line 1221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_0

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Historical Process Start for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 836
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 837
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 838
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 845
    :cond_0
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    return v4

    .line 840
    :cond_2
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getMonotonicTimeMs()J
    .locals 2

    .line 1234
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 4

    .line 699
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/16 p4, 0x10

    .line 705
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 708
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 711
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-eqz p0, :cond_5

    .line 713
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getStartInfoLocked(IILjava/util/ArrayList;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 717
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 718
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 720
    new-instance p3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 729
    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p4, :cond_3

    .line 735
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_4

    .line 738
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 740
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 742
    :cond_5
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 742
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    throw p0
.end method

.method public handleProcessBackupStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/BackupRecord;Z)V
    .locals 3

    .line 539
    iget-object p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 540
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 541
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 543
    :cond_0
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 544
    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 545
    invoke-virtual {v0, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 546
    invoke-virtual {v0, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    if-eqz p5, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 548
    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x5

    .line 553
    invoke-virtual {v0, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 557
    monitor-exit p4

    return-void

    :goto_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 494
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 495
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 496
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 497
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 499
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    if-eqz p5, :cond_1

    .line 501
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 503
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 505
    :goto_0
    invoke-virtual {v1, p4}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x2

    .line 508
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 512
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 519
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 522
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 523
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 524
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 526
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 p1, 0x4

    .line 527
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x3

    .line 530
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 533
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 534
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleProcessServiceStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 462
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 464
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 465
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 466
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 467
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 469
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 p1, 0x4

    .line 472
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 477
    iget-object p1, p4, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 476
    :goto_0
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 480
    iget-object p1, p4, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz p1, :cond_2

    .line 481
    invoke-virtual {p1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 483
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 484
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .line 204
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 206
    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 v0, 0xa

    const/4 v1, 0x1

    const-string v2, "ActivityManager:handler"

    invoke-direct {p1, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 208
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "procstartstore"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 212
    invoke-static {p1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    const-string/jumbo v1, "procstartinfo"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    const/16 p1, 0x10

    .line 218
    iput p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    return-void
.end method

.method public final synthetic lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .locals 6

    .line 1205
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    const/4 p0, 0x0

    .line 1206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 271
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onSystemReady$0()V
    .locals 0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->loadExistingProcessStartInfo()V

    return-void
.end method

.method public loadExistingProcessStartInfo()V
    .locals 7

    .line 971
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 976
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 982
    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 983
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 984
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 985
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide v3, 0x10300000003L

    .line 999
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    .line 1000
    new-instance v5, Lcom/android/internal/os/MonotonicClock;

    sget-object v6, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v5, v3, v4, v6}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    int-to-long v3, v3

    .line 996
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppStartInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_1

    .line 990
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v4, 0x10300000001L

    .line 992
    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 993
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 987
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 993
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    .line 1010
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 1006
    :goto_3
    :try_start_6
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app start info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1015
    :catch_1
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_5
    if-eqz v0, :cond_7

    .line 1010
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1014
    :catch_2
    :cond_7
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 10

    .line 1020
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 1021
    const-string v0, ""

    .line 1028
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    move-object v6, v0

    :goto_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    move-object v3, p1

    goto :goto_1

    .line 1036
    :cond_0
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    const-wide v4, 0x20b00000002L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    .line 1038
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result p1

    .line 1047
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1051
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v6, p1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1053
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    move-object v3, p1

    const-wide v0, 0x10900000001L

    .line 1033
    invoke-virtual {v3, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 1030
    :goto_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    move-object p1, v3

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 1057
    invoke-virtual {v3, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public final maybeTrimInProgressRecordsLocked()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v2, v0

    .line 265
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 281
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 294
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onActivityIntentFailed(J)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_2

    .line 343
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 344
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 346
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 347
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 348
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onActivityIntentStarted(Landroid/content/Intent;J)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 304
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 306
    :cond_0
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 308
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 309
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 310
    invoke-virtual {v1, v2, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 v2, 0x1

    .line 313
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 319
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 321
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 323
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->maybeTrimInProgressRecordsLocked()V

    .line 325
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onActivityLaunchCancelled(J)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 389
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 393
    monitor-exit v0

    return-void

    .line 395
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_2

    .line 397
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 398
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 400
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 401
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 402
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 0

    .line 411
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 412
    :try_start_0
    iget-boolean p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez p4, :cond_0

    .line 413
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 417
    monitor-exit p3

    return-void

    .line 419
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_2

    .line 421
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 422
    monitor-exit p3

    return-void

    .line 424
    :cond_2
    invoke-virtual {p2, p6}, Landroid/app/ApplicationStartInfo;->setLaunchMode(I)V

    .line 429
    monitor-exit p3

    return-void

    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 356
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 358
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 362
    monitor-exit p3

    return-void

    .line 364
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-eqz p2, :cond_4

    if-nez p6, :cond_2

    goto :goto_1

    :cond_2
    long-to-int p4, p4

    .line 369
    invoke-virtual {p2, p4}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 370
    invoke-virtual {p0, p2, p6}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 371
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    move-result-object p2

    if-nez p2, :cond_3

    .line 375
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_0
    monitor-exit p3

    return-void

    .line 366
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 367
    monitor-exit p3

    return-void

    .line 379
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 440
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 444
    monitor-exit v0

    return-object v2

    .line 446
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_2

    .line 448
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 449
    monitor-exit v0

    return-object v2

    :cond_2
    const/4 v1, 0x5

    .line 451
    invoke-virtual {p2, v1, p3, p4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 453
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 454
    monitor-exit v0

    return-object p2

    .line 455
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 2

    .line 909
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 914
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 915
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    goto :goto_0

    .line 920
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 916
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    const/4 p1, 0x1

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 922
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForUserRemoval()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForPackageRemoval()V

    .line 229
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    sget-object v1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    :cond_0
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 900
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    const/4 p1, 0x1

    .line 903
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 904
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public persistProcessStartInfo()V
    .locals 10

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1066
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1071
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1072
    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10300000001L

    .line 1073
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1080
    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1081
    :try_start_2
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5, v3, v3, v3}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;-><init>(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1105
    iput-wide v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1107
    :cond_1
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1108
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v1

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz v7, :cond_2

    .line 1110
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1111
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    .line 1113
    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1107
    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v1

    move-object v4, v3

    .line 1116
    :goto_2
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app start info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1119
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_6
    iput-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1121
    monitor-exit v0

    :goto_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final registerForPackageRemoval()V
    .locals 4

    .line 944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$2;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .locals 4

    .line 927
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 928
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 881
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    .line 884
    :cond_0
    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    return-void
.end method

.method public final removePackageLocked(Ljava/lang/String;IZI)V
    .locals 1

    .line 858
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 859
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 864
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 866
    :cond_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_3

    .line 867
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_2

    .line 868
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 872
    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_4

    .line 873
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V
    .locals 6

    .line 799
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 801
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 805
    monitor-exit v0

    return-void

    .line 807
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 810
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    .line 811
    invoke-static {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->-$$Nest$fgetmCallback(Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    if-eqz p3, :cond_3

    .line 813
    invoke-virtual {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->unlinkToDeath()V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v3, v2, :cond_4

    .line 819
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 821
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 822
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 824
    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public schedulePersistProcessStartInfo(Z)V
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mEnabled:Z

    if-nez v1, :cond_0

    .line 1131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    .line 1135
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1137
    :cond_2
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1138
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1141
    :cond_3
    sget-wide v2, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 1139
    :goto_0
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
