.class public Lcom/android/server/display/color/CctEvaluator;
.super Ljava/lang/Object;
.source "CctEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final mIndexOffset:I

.field final mSteppedCctsAtOffsetCcts:[I

.field final mStepsAtOffsetCcts:[I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 8

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 55
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    .line 56
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 57
    iput p1, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 59
    array-length p1, p3

    .line 60
    array-length v0, p3

    array-length v1, p4

    const-string v2, "CctEvaluator"

    if-eq v0, v1, :cond_0

    .line 61
    const-string p1, "Parallel arrays cctRangeMinimums and steps are different lengths; setting step of 1"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/android/server/display/color/CctEvaluator;->setStepOfOne()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 66
    const-string p1, "No cctRangeMinimums or steps are set; setting step of 1"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/server/display/color/CctEvaluator;->setStepOfOne()V

    return-void

    :cond_1
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_5

    .line 73
    iget v4, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    add-int/2addr v4, v1

    add-int/lit8 v5, v2, 0x1

    :goto_1
    if-ge v5, p1, :cond_2

    .line 75
    aget v6, p3, v5

    if-lt v4, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_1

    .line 80
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    aget v6, p4, v2

    aput v6, v5, v1

    if-eq v3, v0, :cond_3

    sub-int v5, v3, v4

    .line 82
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v6, p4, v2

    if-lt v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 93
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 94
    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    sub-int p2, p1, p2

    if-ltz p2, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    array-length p3, p0

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    aget p0, p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "steppedCctValueAt: returning same since invalid requested index="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CctEvaluator"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/color/CctEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setStepOfOne()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 105
    iget v2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    add-int/2addr v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
