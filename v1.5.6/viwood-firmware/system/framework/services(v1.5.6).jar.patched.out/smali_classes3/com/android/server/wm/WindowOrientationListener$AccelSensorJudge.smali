.class public final Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# instance fields
.field public mAccelerating:Z

.field public mAccelerationTimestampNanos:J

.field public mFlat:Z

.field public mFlatTimestampNanos:J

.field public mLastFilteredTimestampNanos:J

.field public mLastFilteredX:F

.field public mLastFilteredY:F

.field public mLastFilteredZ:F

.field public mOverhead:Z

.field public mPredictedRotation:I

.field public mPredictedRotationTimestampNanos:J

.field public mProposedRotation:I

.field public mSwingTimestampNanos:J

.field public mSwinging:Z

.field public mTiltHistory:[F

.field public mTiltHistoryIndex:I

.field public mTiltHistoryTimestampNanos:[J

.field public final mTiltToleranceConfig:[[I

.field public mTouchEndedTimestampNanos:J

.field public mTouched:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V
    .locals 6

    .line 623
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    const/16 p1, 0x46

    const/16 v0, -0x19

    .line 578
    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/16 v1, 0x41

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/16 v3, 0x3c

    filled-new-array {v0, v3}, [I

    move-result-object v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    filled-new-array {p1, v2, v3, v0}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    const-wide/high16 v0, -0x8000000000000000L

    .line 611
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    const/16 p1, 0xc8

    .line 619
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 620
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 625
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 627
    array-length p2, p1

    const/16 v0, 0x8

    const-string v1, "WindowOrientationListener"

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 629
    aget v3, p1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 630
    aget v2, p1, v2

    const/16 v5, -0x5a

    if-lt v3, v5, :cond_0

    if-gt v3, v2, :cond_0

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_0

    .line 632
    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v5, v5, v0

    aput v3, v5, p2

    .line 633
    aput v2, v5, v4

    goto :goto_1

    .line 635
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 640
    :cond_2
    const-string p0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addTiltHistoryEntryLocked(JF)V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1033
    iget-object p3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, p3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1034
    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 p0, -0x8000000000000000L

    .line 1035
    aput-wide p0, p3, v1

    return-void
.end method

.method public final clearPredictedRotationLocked()V
    .locals 2

    const/4 v0, -0x1

    .line 1010
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 1011
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    return-void
.end method

.method public final clearTiltHistoryLocked()V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    .line 1028
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms ago)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSwinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAccelerating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOverhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTiltToleranceConfig=["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x4

    .line 668
    const-string v2, "]"

    if-ge v0, v1, :cond_1

    .line 669
    const-string v1, ", "

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    :cond_0
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 674
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 676
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getLastTiltLocked()F
    .locals 1

    .line 1070
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1071
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget p0, p0, v0

    return p0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public getProposedRotationLocked()I
    .locals 0

    .line 646
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return p0
.end method

.method public final isAcceleratingLocked(F)Z
    .locals 0

    .line 0
    const p0, 0x40b9d014

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_1

    const p0, 0x415ce80a

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isFlatLocked(J)Z
    .locals 5

    .line 1039
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isOrientationAngleAcceptableLocked(II)Z
    .locals 3

    .line 929
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {p0}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result p0

    if-ltz p0, :cond_5

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 935
    rem-int/lit8 v1, v1, 0x4

    if-ne p1, v1, :cond_2

    :cond_0
    mul-int/lit8 v1, p1, 0x5a

    add-int/lit8 v2, v1, -0x17

    if-nez p1, :cond_1

    const/16 v2, 0x13b

    if-lt p2, v2, :cond_2

    add-int/lit16 v1, v1, 0x151

    if-ge p2, v1, :cond_2

    return v0

    :cond_1
    if-ge p2, v2, :cond_2

    return v0

    :cond_2
    if-eq p1, p0, :cond_3

    add-int/lit8 p0, p0, 0x3

    .line 954
    rem-int/lit8 p0, p0, 0x4

    if-ne p1, p0, :cond_5

    :cond_3
    mul-int/lit8 p0, p1, 0x5a

    add-int/lit8 p0, p0, 0x17

    if-nez p1, :cond_4

    const/16 p1, 0x2d

    if-gt p2, p1, :cond_5

    if-le p2, p0, :cond_5

    return v0

    :cond_4
    if-le p2, p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final isPredictedRotationAcceptableLocked(J)Z
    .locals 8

    .line 978
    iget-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 983
    :cond_0
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    return v1

    .line 989
    :cond_1
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    return v1

    .line 994
    :cond_2
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    return v1

    .line 1000
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long p0, p1, v2

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public final isSwingingLocked(JF)Z
    .locals 5

    .line 1052
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    goto :goto_0

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTiltAngleAcceptableLocked(II)Z
    .locals 1

    .line 915
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget v0, p0, p1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    if-gt p2, p0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public final nextTiltHistoryIndexLocked(I)I
    .locals 4

    if-nez p1, :cond_0

    const/16 p1, 0xc8

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1066
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, p0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 690
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v2}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmLock(Lcom/android/server/wm/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 694
    :try_start_0
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    .line 695
    aget v7, v3, v6

    const/4 v8, 0x2

    .line 696
    aget v3, v3, v8

    .line 698
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 699
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v5, v5

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 701
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 699
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 708
    :cond_0
    :goto_0
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 709
    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long v12, v8, v10

    long-to-float v1, v12

    const v12, 0x358637bd    # 1.0E-6f

    mul-float/2addr v1, v12

    cmp-long v13, v8, v10

    if-ltz v13, :cond_3

    const-wide/32 v13, 0x3b9aca00

    add-long/2addr v10, v13

    cmp-long v10, v8, v10

    if-gtz v10, :cond_3

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-nez v11, :cond_1

    cmpl-float v11, v7, v10

    if-nez v11, :cond_1

    cmpl-float v10, v3, v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v10, 0x43480000    # 200.0f

    add-float/2addr v10, v1

    div-float v10, v1, v10

    .line 722
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float/2addr v5, v11

    mul-float/2addr v5, v10

    add-float/2addr v5, v11

    .line 723
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float/2addr v7, v11

    mul-float/2addr v7, v10

    add-float/2addr v7, v11

    .line 724
    iget v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float/2addr v3, v11

    mul-float/2addr v10, v3

    add-float v3, v10, v11

    .line 725
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 726
    const-string v10, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Filtered acceleration vector: x="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", y="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", z="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", magnitude="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v13, v5, v5

    mul-float v14, v7, v7

    add-float/2addr v13, v14

    mul-float v14, v3, v3

    add-float/2addr v13, v14

    float-to-double v13, v13

    .line 728
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 726
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v10, v4

    goto :goto_2

    .line 715
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 716
    const-string v10, "WindowOrientationListener"

    const-string v11, "Resetting orientation listener."

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_4
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    move v10, v6

    .line 732
    :goto_2
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 733
    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 734
    iput v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 735
    iput v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    if-nez v10, :cond_15

    mul-float v10, v5, v5

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 742
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_6

    .line 744
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 745
    const-string v3, "WindowOrientationListener"

    const-string v5, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto/16 :goto_a

    .line 751
    :cond_6
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 753
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    move v11, v6

    goto :goto_3

    :cond_7
    move v11, v4

    :goto_3
    div-float/2addr v3, v10

    float-to-double v13, v3

    .line 763
    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v13, v15

    .line 762
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v3, v13

    int-to-float v10, v3

    .line 764
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 767
    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 769
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    move v13, v6

    goto :goto_4

    :cond_8
    move v13, v4

    .line 771
    :goto_4
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 773
    iput-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    move v10, v6

    goto :goto_5

    :cond_9
    move v10, v4

    :goto_5
    const/16 v14, -0x28

    if-gt v3, v14, :cond_a

    .line 779
    iput-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_6

    :cond_a
    const/16 v6, -0xf

    if-lt v3, v6, :cond_b

    .line 781
    iput-boolean v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 783
    :cond_b
    :goto_6
    iget-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v6, :cond_d

    .line 784
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 785
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    :goto_7
    move v14, v13

    goto/16 :goto_9

    .line 789
    :cond_d
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v14, 0x50

    if-le v6, v14, :cond_f

    .line 790
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 791
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto :goto_7

    :cond_f
    neg-float v5, v5

    float-to-double v5, v5

    move/from16 p1, v12

    move v14, v13

    float-to-double v12, v7

    .line 800
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    mul-double/2addr v5, v15

    .line 799
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    if-gez v5, :cond_10

    add-int/lit16 v5, v5, 0x168

    :cond_10
    add-int/lit8 v6, v5, 0x2d

    .line 807
    div-int/lit8 v6, v6, 0x5a

    const/4 v7, 0x4

    if-ne v6, v7, :cond_11

    goto :goto_8

    :cond_11
    move v4, v6

    .line 813
    :goto_8
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 814
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 816
    invoke-virtual {v0, v8, v9, v4}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 817
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 818
    const-string v4, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Predicted: tiltAngle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", orientationAngle="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotation="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotationAgeMS="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v12, v8, v12

    long-to-float v3, v12

    mul-float v3, v3, p1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 827
    :cond_12
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 828
    const-string v4, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", orientationAngle="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    :cond_14
    :goto_9
    move v4, v14

    goto :goto_b

    :cond_15
    :goto_a
    move v10, v4

    move v11, v10

    .line 837
    :goto_b
    iput-boolean v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 838
    iput-boolean v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 839
    iput-boolean v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 842
    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 843
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v5, :cond_16

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 844
    :cond_16
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 846
    :cond_17
    iget v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 849
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 850
    const-string v6, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Result: currentRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v12}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$fgetmCurrentRotation(Lcom/android/server/wm/WindowOrientationListener;)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", proposedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", predictedRotation="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeDeltaMS="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isAccelerating="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlat="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSwinging="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOverhead="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouched="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSettledMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v12, 0x2625a00

    add-long/2addr v10, v12

    .line 859
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v12, 0x1dcd6500

    add-long/2addr v10, v12

    .line 861
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v10, v12

    .line 863
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v14, 0x11e1a300

    add-long/2addr v10, v14

    .line 865
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v10, v12

    .line 867
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v3, :cond_1a

    if-ltz v5, :cond_1a

    .line 874
    invoke-static {}, Lcom/android/server/wm/WindowOrientationListener;->-$$Nest$sfgetLOG()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 875
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldProposedRotation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_19
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_1a
    return-void

    .line 870
    :goto_c
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .locals 1

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 890
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    return-void
.end method

.method public final remainingMS(JJ)F
    .locals 0

    .line 0
    cmp-long p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-long/2addr p3, p1

    long-to-float p0, p3

    const p1, 0x358637bd    # 1.0E-6f

    mul-float/2addr p0, p1

    return p0
.end method

.method public resetLocked(Z)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 895
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 897
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 899
    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const/4 p1, 0x0

    .line 900
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 901
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 902
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 903
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 904
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 905
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 906
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 907
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    return-void
.end method

.method public final updatePredictedRotationLocked(JI)V
    .locals 1

    .line 1015
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 1016
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1017
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :cond_0
    return-void
.end method
