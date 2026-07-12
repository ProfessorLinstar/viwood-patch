.class public Lcom/android/server/display/NormalBrightnessModeController;
.super Ljava/lang/Object;
.source "NormalBrightnessModeController.java"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public mMaxBrightness:F

.field public mMaxBrightnessLimits:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 34
    iput v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 65
    const-string v0, "NormalBrightnessModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightnessLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    return p0
.end method

.method public onAmbientLuxChange(F)Z
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 42
    invoke-virtual {p0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result p0

    return p0
.end method

.method public final recalculateMaxBrightness()Z
    .locals 6

    .line 78
    iget-boolean v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 92
    iget v5, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v4

    goto :goto_1

    .line 99
    :cond_3
    iget v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 100
    iput v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public resetNbmData(Ljava/util/Map;)Z
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result p0

    return p0
.end method

.method public setAutoBrightnessState(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 47
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eq v1, p1, :cond_1

    .line 48
    iput-boolean v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
