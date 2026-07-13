.class public Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# instance fields
.field public mCachedScore:I

.field public mCachedScoreExpirationTimeElapsed:J

.field public mScoreBucketIndex:I

.field public final mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 236
    new-array v0, v0, [Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/FlexibilityController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public addScore(IJ)V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    aget-object v0, v0, v1

    const-wide/32 v2, 0x5265c00

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;-><init>(Lcom/android/server/job/controllers/FlexibilityController-IA;)V

    .line 245
    iput-wide p2, v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 246
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    iget v4, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    aput-object v0, v1, v4

    .line 249
    iget-wide v4, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    add-long/2addr p2, v2

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    goto :goto_0

    .line 251
    :cond_0
    iget-wide v4, v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    sub-long v2, p2, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 253
    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->-$$Nest$mreset(Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;)V

    .line 254
    iput-wide p2, v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    .line 257
    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x36ee80

    sub-long v2, p2, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 261
    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void

    .line 266
    :cond_2
    :goto_0
    iget p2, v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    add-int/2addr p2, p1

    iput p2, v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    .line 267
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 9

    .line 291
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 295
    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    array-length v5, v2

    rem-int/2addr v3, v5

    .line 296
    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 297
    iget-wide v5, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 301
    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-wide v5, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    invoke-static {v5, v6, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 304
    const-string v1, "="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget v1, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    move v1, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_3
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getScore(J)I
    .locals 12

    .line 271
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 272
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    return p0

    :cond_0
    const-wide/32 v0, 0x5265c00

    sub-long/2addr p1, v0

    .line 277
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    array-length v3, v2

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-wide v6, v5

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v8, v2, v4

    if-eqz v8, :cond_1

    .line 278
    iget-wide v9, v8, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    cmp-long v11, v9, p1

    if-ltz v11, :cond_1

    .line 279
    iget v8, v8, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    add-int/2addr v5, v8

    cmp-long v8, v6, v9

    if-lez v8, :cond_1

    move-wide v6, v9

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_2
    iput v5, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    add-long/2addr v6, v0

    .line 286
    iput-wide v6, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    return v5
.end method
