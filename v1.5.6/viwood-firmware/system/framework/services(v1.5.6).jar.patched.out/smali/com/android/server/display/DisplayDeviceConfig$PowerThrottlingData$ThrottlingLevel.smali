.class public Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# instance fields
.field public powerQuotaMilliWatts:F

.field public thermalStatus:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 3095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3096
    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 3097
    iput p2, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 3107
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3110
    :cond_0
    check-cast p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 3112
    iget v0, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 3119
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 3120
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
