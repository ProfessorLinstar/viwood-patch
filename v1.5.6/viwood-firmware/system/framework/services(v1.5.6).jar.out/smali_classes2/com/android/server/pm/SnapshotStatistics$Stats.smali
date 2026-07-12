.class public Lcom/android/server/pm/SnapshotStatistics$Stats;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# instance fields
.field public mBigBuilds:I

.field public mMaxBuildTimeUs:I

.field public mMaxUsedCount:I

.field public mShortLived:I

.field public mStartTimeUs:J

.field public mStopTimeUs:J

.field public final mTimes:[I

.field public mTotalBuilds:I

.field public mTotalTimeUs:J

.field public mTotalUsed:I

.field public final mUsed:[I

.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public static bridge synthetic -$$Nest$mcomplete(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;->complete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogSnapshotStatistics(Lcom/android/server/pm/SnapshotStatistics$Stats;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->logSnapshotStatistics(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->rebuild(IIIIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;J)V
    .locals 3

    .line 314
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    .line 247
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 252
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 258
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 263
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 270
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 275
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 280
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 315
    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 316
    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 317
    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .locals 2

    .line 324
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 223
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 229
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 p1, 0x0

    .line 247
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 252
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 258
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 263
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 270
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 275
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 280
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 325
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 326
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    .line 327
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 328
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 329
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 330
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 331
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 332
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 333
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 334
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 335
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    return-void
.end method


# virtual methods
.method public final complete(J)V
    .locals 0

    .line 343
    iput-wide p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 1

    .line 454
    const-string/jumbo v0, "stats"

    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    .line 456
    :cond_0
    const-string/jumbo v0, "times"

    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    .line 458
    :cond_1
    const-string/jumbo v0, "usage"

    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    return-void

    .line 461
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unrecognized choice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 374
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%-23s"

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p0, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 376
    :cond_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide p5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    sub-long p5, p3, p5

    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    const-string p6, "%11s"

    invoke-virtual {p1, p2, p6, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 377
    iget-wide p5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const-string v1, " %11s"

    if-eqz v0, :cond_1

    sub-long/2addr p3, p5

    .line 378
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    .line 380
    :cond_1
    const-string/jumbo p0, "now"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, v1, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public final dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 8

    .line 395
    const-string v6, "Summary stats"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    if-eqz v5, :cond_0

    .line 397
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "TotTime"

    const-string v7, "MaxTime"

    const-string v2, "TotBlds"

    const-string v3, "TotUsed"

    const-string v4, "BigBlds"

    const-string v5, "ShortLvd"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "  %10s  %10s  %10s  %10s  %10s  %10s"

    invoke-virtual {v1, p0, p2, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 401
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 401
    const-string p2, "  %10d  %10d  %10d  %10d  %10d  %10d"

    invoke-virtual {v1, p0, p2, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 406
    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 7

    .line 413
    const-string v6, "Build times"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz v5, :cond_1

    .line 415
    iget-object p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object p1

    .line 416
    :goto_0
    array-length p2, p1

    const-string p3, "  %10s"

    if-ge p0, p2, :cond_0

    .line 417
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p4, p1, p0

    .line 418
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "<= %dms"

    invoke-static {p5, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    .line 417
    invoke-virtual {v1, p2, p3, p4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "> %dms"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 420
    invoke-virtual {v1, p0, p3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 423
    :cond_1
    :goto_1
    iget-object p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length p2, p1

    if-ge p0, p2, :cond_2

    .line 424
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "  %10d"

    invoke-virtual {v1, p2, p3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 7

    .line 434
    const-string v6, "Use counters"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 p0, 0x0

    if-eqz v5, :cond_1

    .line 436
    iget-object p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object p1

    .line 437
    :goto_0
    array-length p2, p1

    const-string p3, "  %10s"

    if-ge p0, p2, :cond_0

    .line 438
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p4, p1, p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "<= %d"

    invoke-static {p5, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "> %d"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 440
    invoke-virtual {v1, p0, p3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 443
    :cond_1
    :goto_1
    iget-object p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length p2, p1

    if-ge p0, p2, :cond_2

    .line 444
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p1, p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "  %10d"

    invoke-virtual {v1, p2, p3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 447
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final durationToString(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 351
    div-long/2addr p1, v0

    long-to-int p0, p1

    .line 352
    div-int/lit8 p1, p0, 0x3c

    .line 353
    rem-int/lit8 p0, p0, 0x3c

    .line 354
    div-int/lit8 p2, p1, 0x3c

    .line 355
    rem-int/lit8 p1, p1, 0x3c

    .line 356
    div-int/lit8 v0, p2, 0x18

    .line 357
    rem-int/lit8 p2, p2, 0x18

    if-eqz v0, :cond_0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2d:%02d:%02d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    const-string v0, ""

    if-eqz p2, :cond_1

    .line 361
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2s %02d:%02d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2s %2s %2d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final logSnapshotStatistics(I)V
    .locals 13

    .line 469
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    move v11, v0

    goto :goto_3

    .line 470
    :cond_1
    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    div-int v0, v1, v0

    goto :goto_2

    .line 471
    :goto_3
    iget-object v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    iget-object v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    int-to-long v6, v0

    iget v8, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    const/16 v3, 0x220

    move v12, p1

    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[IJIJII)V

    return-void
.end method

.method public final rebuild(IIIIZZ)V
    .locals 2

    .line 290
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p3

    if-ltz p2, :cond_0

    .line 294
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 295
    iget-object p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    aget v0, p3, p4

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, p4

    .line 298
    :cond_0
    iget-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v0, p1

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    if-eqz p5, :cond_1

    .line 301
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    :cond_1
    if-eqz p6, :cond_2

    .line 304
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 306
    :cond_2
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    if-ge p3, p1, :cond_3

    .line 307
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 309
    :cond_3
    iget p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    if-ge p1, p2, :cond_4

    .line 310
    iput p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    :cond_4
    return-void
.end method
