.class public Lcom/android/server/input/TouchpadHardwareProperties;
.super Ljava/lang/Object;
.source "TouchpadHardwareProperties.java"


# instance fields
.field public mBottom:F

.field public mIsButtonPad:Z

.field public mIsHapticPad:Z

.field public mLeft:F

.field public mMaxFingerCount:S

.field public mOrientationMaximum:F

.field public mOrientationMinimum:F

.field public mReportsPressure:Z

.field public mResX:F

.field public mResY:F

.field public mRight:F

.field public mTop:F


# direct methods
.method public constructor <init>(FFFFFFFFSZZZ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    .line 151
    iput p2, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    .line 152
    iput p3, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    .line 153
    iput p4, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    .line 154
    iput p5, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    .line 155
    iput p6, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    .line 156
    iput p7, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    .line 157
    iput p8, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    .line 158
    iput-short p9, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    .line 159
    iput-boolean p10, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    .line 160
    iput-boolean p11, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    .line 161
    iput-boolean p12, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public getBottom()F
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    return p0
.end method

.method public getLeft()F
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    return p0
.end method

.method public getMaxFingerCount()S
    .locals 0

    .line 238
    iget-short p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    return p0
.end method

.method public getOrientationMaximum()F
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    return p0
.end method

.method public getOrientationMinimum()F
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    return p0
.end method

.method public getResX()F
    .locals 0

    .line 204
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    return p0
.end method

.method public getResY()F
    .locals 0

    .line 213
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    return p0
.end method

.method public getRight()F
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    return p0
.end method

.method public getTop()F
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    return p0
.end method

.method public isIsButtonPad()Z
    .locals 0

    .line 248
    iget-boolean p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    return p0
.end method

.method public isIsHapticPad()Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    return p0
.end method

.method public isReportsPressure()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HardwareProperties{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mResY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mOrientationMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxFingerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mMaxFingerCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isButtonPad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsButtonPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHapticPad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mIsHapticPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reportsPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/input/TouchpadHardwareProperties;->mReportsPressure:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
