.class public Lcom/android/server/AnyMotionDetector$RunningSignalStats;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# instance fields
.field public currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public energy:F

.field public previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field public runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

.field public sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    return-void
.end method


# virtual methods
.method public accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    .line 493
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 494
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 495
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p1, v0}, Lcom/android/server/AnyMotionDetector$Vector3;->minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object p1

    .line 498
    iget v0, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    .line 499
    iget p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    :cond_1
    :goto_0
    return-void
.end method

.method public getEnergy()F
    .locals 0

    .line 516
    iget p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    return p0
.end method

.method public getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 2

    .line 509
    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    if-lez v0, :cond_0

    .line 510
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/AnyMotionDetector$Vector3;->times(F)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSampleCount()I
    .locals 0

    .line 520
    iget p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return p0
.end method

.method public reset()V
    .locals 7

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 478
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 479
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->runningSum:Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->currentVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const-string/jumbo v1, "null"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->previousVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v2, :cond_1

    goto :goto_1

    .line 529
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "previousVector = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentVector = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sampleCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->sampleCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", energy = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->energy:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
