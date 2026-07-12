.class public final Lcom/android/server/am/compaction/SingleCompactionStats;
.super Ljava/lang/Object;
.source "SingleCompactionStats.java"


# static fields
.field public static final mRandom:Ljava/util/Random;


# instance fields
.field public mAnonMemFreedKBs:J

.field public mCpuTimeMillis:F

.field public mDeltaAnonRssKBs:J

.field public mOomAdj:I

.field public mOomAdjReason:I

.field public mOrigAnonRss:J

.field public mProcState:I

.field public mProcessName:Ljava/lang/String;

.field public final mRssAfterCompaction:[J

.field public mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final mUid:I

.field public mZramConsumedKBs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    .line 52
    iput-object p2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 53
    iput-object p3, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    move/from16 p1, p17

    .line 54
    iput p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mUid:I

    .line 55
    iput-wide p4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    .line 56
    iput-wide p6, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    .line 57
    iput-wide p8, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-float p1, p12

    .line 58
    iput p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    .line 59
    iput-wide p10, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    .line 60
    iput p14, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    .line 61
    iput p15, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    move/from16 p1, p16

    .line 62
    iput p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getSwapEfficiency()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getCompactEfficiency()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/compaction/SingleCompactionStats;->getCompactCost()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    .line 84
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCompactCost()D
    .locals 4

    .line 71
    iget v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCompactEfficiency()D
    .locals 4

    .line 65
    iget-wide v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getRssAfterCompaction()[J
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    return-object p0
.end method

.method public getSwapEfficiency()D
    .locals 4

    .line 67
    iget-wide v0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public sendStat()V
    .locals 13

    .line 88
    sget-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 89
    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mUid:I

    iget v3, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    iget v4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    iget-wide v5, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    iget-wide v7, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    iget v9, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    iget-wide v10, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    iget v12, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    const/16 v1, 0x1eb

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJFJI)V

    :cond_0
    return-void
.end method
