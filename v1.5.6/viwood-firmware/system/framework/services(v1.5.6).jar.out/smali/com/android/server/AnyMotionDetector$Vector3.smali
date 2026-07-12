.class public final Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 393
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 394
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 395
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    return-void
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 4

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "angleBetween: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", other = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", degrees = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 418
    const-string p1, "AnyMotionDetector"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 9

    .line 424
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v5, v3, v4

    iget v6, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v7, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v8, v6, v7

    sub-float/2addr v5, v8

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v6, p1

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v4, p0

    sub-float v4, v6, v4

    mul-float/2addr p0, v7

    mul-float/2addr v3, p1

    sub-float/2addr p0, v3

    move v3, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v0
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 3

    .line 442
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 6

    .line 454
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    sub-float/2addr v4, v5

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    sub-float v5, p0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v0
.end method

.method public norm()F
    .locals 2

    .line 399
    invoke-virtual {p0, p0}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7

    .line 403
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v0

    .line 404
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float/2addr v5, v0

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float v6, p0, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v1
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 6

    .line 450
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    add-float/2addr v4, v5

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget p1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    add-float v5, p0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v0
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 6

    .line 446
    new-instance v0, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v4, p1

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v5, p0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeMillisSinceBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | x="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
