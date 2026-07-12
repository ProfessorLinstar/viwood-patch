.class public Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
.super Lcom/android/server/display/utils/AmbientFilter;
.source "AmbientFilter.java"


# instance fields
.field public final mIntercept:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/utils/AmbientFilter;-><init>(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p0, p3}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->validateArguments(F)V

    .line 181
    iput p3, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    return-void
.end method


# virtual methods
.method public final antiderivative(F)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 249
    iget p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public final calculateIntegral(FF)F
    .locals 0

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result p2

    invoke-virtual {p0, p1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->antiderivative(F)F

    move-result p0

    sub-float/2addr p2, p0

    return p2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public filter(JLcom/android/server/display/utils/RollingBuffer;)F
    .locals 4

    .line 200
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    move v0, p1

    move v1, v0

    .line 209
    :goto_0
    array-length v2, p0

    if-ge p2, v2, :cond_1

    .line 210
    invoke-virtual {p3, p2}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result v2

    .line 211
    aget v3, p0, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v0, p1

    if-nez p0, :cond_2

    .line 216
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Lcom/android/server/display/utils/RollingBuffer;->getValue(I)F

    move-result p0

    return p0

    :cond_2
    div-float/2addr v1, v0

    return v1
.end method

.method public final getWeights(JLcom/android/server/display/utils/RollingBuffer;)[F
    .locals 10

    .line 228
    invoke-virtual {p3}, Lcom/android/server/display/utils/RollingBuffer;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 229
    invoke-virtual {p3, v2}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/high16 v7, 0x447a0000    # 1000.0f

    if-ge v6, v0, :cond_0

    .line 232
    invoke-virtual {p3, v6}, Lcom/android/server/display/utils/RollingBuffer;->getTime(I)J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-float v8, v8

    div-float v7, v8, v7

    .line 233
    invoke-virtual {p0, v4, v7}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result v4

    add-int/lit8 v8, v6, -0x1

    .line 234
    aput v4, v1, v8

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x64

    add-long/2addr p1, v8

    sub-long/2addr p1, v2

    long-to-float p1, p1

    div-float/2addr p1, v7

    .line 238
    invoke-virtual {p0, v4, p1}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->calculateIntegral(FF)F

    move-result p0

    sub-int/2addr v0, v5

    .line 239
    aput p0, v1, v0

    return-object v1
.end method

.method public final validateArguments(F)V
    .locals 0

    .line 222
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intercept must be a non-negative number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
