.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsSqlRegistry.java"


# static fields
.field public static final DB_WRITE_INTERVAL:J

.field public static final EXPIRED_ENTRY_DELETION_INTERVAL:J


# instance fields
.field public mChainIdOffset:J

.field public final mContext:Landroid/content/Context;

.field public final mDatabaseFile:Ljava/io/File;

.field public final mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

.field public final mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

.field public final mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDB_WRITE_INTERVAL()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    const-wide/16 v0, 0x6

    .line 60
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 70
    new-instance v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    const/16 v1, 0x200

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    .line 83
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "DiscreteOpsSqlRegistry"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 85
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    .line 87
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    .line 88
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsDbHelper;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    .line 90
    sget-wide p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x2

    .line 91
    sget-wide p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v2, p6

    move-object/from16 v1, p9

    move-object/from16 v15, p12

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 178
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v3, v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAppOpEvents(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    :goto_0
    const/16 v16, 0x0

    if-eqz v15, :cond_1

    const/4 v1, 0x1

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    move/from16 v17, v16

    .line 183
    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v3, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    move-wide/from16 v7, p2

    .line 183
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 185
    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, -0x1

    move-wide/from16 v10, p4

    move/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move/from16 v7, p11

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v17, :cond_2

    .line 191
    invoke-virtual {v0, v1, v15}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 194
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, v16

    :goto_3
    if-ge v4, v3, :cond_4

    .line 196
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    if-eqz v17, :cond_3

    .line 198
    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 199
    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    if-eqz v6, :cond_3

    .line 200
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    invoke-static {v6, v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->-$$Nest$misStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    if-eqz v6, :cond_3

    .line 204
    new-instance v7, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v8

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v7

    goto :goto_4

    :cond_3
    move-object/from16 v29, v2

    .line 208
    :goto_4
    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v19

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v20

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v22

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUidState(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v23

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v24

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v25

    invoke-static {v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v27

    move-object/from16 v18, p1

    invoke-virtual/range {v18 .. v29}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear()V

    .line 132
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v0, "DELETE FROM app_op_accesses"

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public clearHistory(ILjava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->clear(ILjava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 138
    const-string p2, "DELETE FROM app_op_accesses WHERE uid = ? AND package_name = ?"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createAttributionChains(Ljava/util/List;Ljava/util/Set;)Landroid/util/LongSparseArray;
    .locals 7

    .line 257
    new-instance p0, Landroid/util/LongSparseArray;

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 262
    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    if-nez v3, :cond_1

    .line 268
    new-instance v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;

    invoke-direct {v3, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    .line 269
    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 271
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->addEvent(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteDatabase()V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 751
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 221
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    .line 222
    new-instance v10, Landroid/util/IntArray;

    invoke-direct {v10}, Landroid/util/IntArray;-><init>()V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 224
    invoke-virtual {v10, v2}, Landroid/util/IntArray;->add(I)V

    .line 226
    :cond_0
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v17, "access_time"

    const/16 v18, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    move/from16 v16, p10

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, p9

    .line 230
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    const-string v3, "Largest chain id: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 233
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 234
    const-string v0, "UID|PACKAGE_NAME|DEVICE_ID|OP_NAME|ATTRIBUTION_TAG|UID_STATE|OP_FLAGS|ATTR_FLAGS|CHAIN_ID|ACCESS_TIME|DURATION"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 238
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 239
    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v5

    move-object/from16 v7, p8

    invoke-virtual {v7, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUid(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDeviceId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v8

    .line 241
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionTag(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmUidState(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v8

    .line 242
    invoke-static {v8}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v8

    .line 243
    invoke-static {v8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmChainId(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getAllDiscreteOps()Ljava/util/List;
    .locals 2

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v1, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;
    .locals 2

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_1

    .line 152
    new-instance p0, Landroid/util/IntArray;

    array-length p1, p2

    invoke-direct {p0, p1}, Landroid/util/IntArray;-><init>(I)V

    const/4 p1, 0x0

    .line 153
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 156
    :try_start_0
    aget-object v0, p2, p1

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    .line 158
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` is not recognized."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscreteOpsSqlRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public offsetHistory(J)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->offsetTimestamp(J)V

    .line 145
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 145
    const-string p2, "UPDATE app_op_accesses SET access_time = ACCESS_TIME - ?"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p4

    move/from16 v7, p6

    move/from16 v1, p13

    .line 100
    invoke-static {v6, v7}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    int-to-long v2, v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 106
    iget-wide v4, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    add-long/2addr v2, v4

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    .line 110
    iput-wide v2, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    :cond_1
    move-wide v10, v2

    .line 113
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v4, p5

    move/from16 v9, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v8, p12

    invoke-direct/range {v1 .. v15}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 115
    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;->removeAllPendingMessages()V

    .line 121
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictAllAppOpEvents()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->insertDiscreteOps(Ljava/util/List;)V

    return-void
.end method

.method public writeAndClearOldAccessHistory()V
    .locals 0

    .line 0
    return-void
.end method
