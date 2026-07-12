.class public final Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public mForecastHeadroom:F

.field public mForecastSeconds:I

.field public mHeadroom:F

.field public mHeadroomThresholds:[F


# direct methods
.method public static bridge synthetic -$$Nest$misSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->isSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(FFI[F)V
    .locals 0

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1842
    iput p1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    .line 1843
    iput p2, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    .line 1844
    iput p3, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    .line 1845
    iput-object p4, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    return-void
.end method


# virtual methods
.method public final isSignificantDifferentFrom(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1852
    :cond_0
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    if-eq v1, v2, :cond_1

    return v0

    .line 1853
    :cond_1
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3cf5c28f    # 0.03f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    return v0

    .line 1855
    :cond_2
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iget v3, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .line 1857
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 1858
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    iget-object v4, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eq v3, v4, :cond_4

    return v0

    .line 1862
    :cond_4
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v3, v3, v2

    iget-object v4, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadroomCallbackData[mHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mForecastHeadroom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mForecastSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeadroomThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    .line 1874
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
