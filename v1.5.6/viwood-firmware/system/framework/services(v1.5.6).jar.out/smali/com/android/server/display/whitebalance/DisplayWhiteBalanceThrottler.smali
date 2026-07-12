.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceThrottler.java"


# instance fields
.field public mBaseThresholds:[F

.field public mDecreaseDebounce:I

.field public mDecreaseThreshold:F

.field public mDecreaseThresholds:[F

.field public mIncreaseDebounce:I

.field public mIncreaseThreshold:F

.field public mIncreaseThresholds:[F

.field public mLastTime:J

.field public mLastValue:F

.field public mLoggingEnabled:Z


# direct methods
.method public constructor <init>(II[F[F[F)V
    .locals 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v1, p1

    int-to-float v2, p2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->validateArguments(FF[F[F[F)V

    const/4 p0, 0x0

    .line 74
    iput-boolean p0, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    .line 75
    iput p1, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    .line 76
    iput p2, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    .line 77
    iput-object v3, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    .line 78
    iput-object v4, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    .line 79
    iput-object v5, v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    .line 80
    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->clear()V

    return-void
.end method

.method public static isValidMapping([F[F)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 166
    array-length v1, p0

    if-eqz v1, :cond_4

    array-length v1, p1

    if-eqz v1, :cond_4

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    move v2, v0

    .line 170
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 171
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    aget v3, p0, v2

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 105
    iput-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 106
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    .line 107
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    .line 108
    iput v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    return-void
.end method

.method public final computeThresholds(F)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->getHighestIndexBefore(F[F)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    aget v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    .line 215
    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    aget v0, v1, v0

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 134
    const-string v0, "  DisplayWhiteBalanceThrottler"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mBaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIncreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDecreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getHighestIndexBefore(F[F)I
    .locals 1

    const/4 p0, 0x0

    .line 219
    :goto_0
    array-length v0, p2

    if-ge p0, v0, :cond_1

    .line 220
    aget v0, p2, p0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public throttle(F)Z
    .locals 4

    .line 92
    iget-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->tooSoon(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->tooClose(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->computeThresholds(F)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    .line 97
    iput p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    const/4 p0, 0x0

    return p0
.end method

.method public final tooClose(F)Z
    .locals 4

    .line 198
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseThreshold:F

    cmpg-float v3, p1, v0

    if-gez v3, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseThreshold:F

    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-eqz p0, :cond_4

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_2

    const-string/jumbo v2, "too close: "

    goto :goto_2

    :cond_2
    const-string v2, "far enough: "

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 207
    const-string p1, " > "

    goto :goto_3

    :cond_3
    const-string p1, " < "

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 206
    const-string p1, "DisplayWhiteBalanceThrottler"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public final tooSoon(F)Z
    .locals 6

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    iget v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastValue:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    .line 183
    iget-wide v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    iget p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mIncreaseDebounce:I

    :goto_0
    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_1

    .line 185
    :cond_0
    iget-wide v2, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLastTime:J

    iget p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mDecreaseDebounce:I

    goto :goto_0

    :goto_1
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 188
    :goto_2
    iget-boolean p0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->mLoggingEnabled:Z

    if-eqz p0, :cond_4

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string/jumbo v4, "too soon: "

    goto :goto_3

    :cond_2
    const-string/jumbo v4, "late enough: "

    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 190
    const-string v0, " < "

    goto :goto_4

    :cond_3
    const-string v0, " > "

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    const-string v0, "DisplayWhiteBalanceThrottler"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method public final validateArguments(FF[F[F[F)V
    .locals 0

    .line 149
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    cmpg-float p1, p1, p0

    if-ltz p1, :cond_3

    .line 152
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_2

    .line 155
    invoke-static {p3, p4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->isValidMapping([F[F)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 159
    invoke-static {p3, p5}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;->isValidMapping([F[F)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseThresholds to decreaseThresholds is not a valid mapping."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseThresholds to increaseThresholds is not a valid mapping."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "decreaseDebounce must be a non-negative number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "increaseDebounce must be a non-negative number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
