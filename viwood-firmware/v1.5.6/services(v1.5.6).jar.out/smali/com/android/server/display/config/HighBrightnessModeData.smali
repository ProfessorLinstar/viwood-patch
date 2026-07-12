.class public Lcom/android/server/display/config/HighBrightnessModeData;
.super Ljava/lang/Object;
.source "HighBrightnessModeData.java"


# instance fields
.field public final allowInLowPowerMode:Z

.field public final isHighBrightnessModeEnabled:Z

.field public final minimumHdrPercentOfScreen:F

.field public final minimumLux:F

.field public final refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

.field public final sdrToHdrRatioSpline:Landroid/util/Spline;

.field public final timeMaxMillis:J

.field public final timeMinMillis:J

.field public final timeWindowMillis:J

.field public final transitionPoint:F


# direct methods
.method public constructor <init>(FFJJJZFLandroid/util/Spline;Landroid/view/SurfaceControl$RefreshRateRange;Z)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    .line 73
    iput p2, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    .line 74
    iput-wide p3, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    .line 75
    iput-wide p5, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    .line 76
    iput-wide p7, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    .line 77
    iput-boolean p9, p0, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 78
    iput p10, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 79
    iput-object p11, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 80
    iput-object p12, p0, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 81
    iput-boolean p13, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    return-void
.end method

.method public static loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HighBrightnessModeData;
    .locals 23

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move-object/from16 v5, p1

    .line 119
    invoke-interface {v5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 120
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 122
    invoke-virtual {v6}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v11

    mul-long/2addr v11, v9

    .line 123
    invoke-virtual {v6}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    mul-long/2addr v13, v9

    .line 124
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v6

    .line 125
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 127
    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v9, v10

    if-gtz v10, :cond_1

    cmpg-float v1, v9, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid minimum HDR percent of screen: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "HighBrightnessModeData"

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/server/display/config/HighBrightnessModeData;->loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 138
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 139
    invoke-virtual {v9}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->floatValue()F

    move-result v10

    invoke-virtual {v9}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->floatValue()F

    move-result v9

    invoke-direct {v3, v10, v9}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 141
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v0

    move/from16 v22, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move v10, v4

    move/from16 v18, v6

    move-wide/from16 v16, v13

    move-wide v14, v11

    move v11, v5

    move-wide v12, v7

    :goto_2
    move/from16 v19, v2

    goto :goto_3

    :cond_4
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    move v10, v1

    move v11, v10

    move-object/from16 v20, v3

    move-object/from16 v21, v20

    move/from16 v18, v6

    move/from16 v22, v18

    move-wide v12, v7

    move-wide v14, v12

    move-wide/from16 v16, v14

    goto :goto_2

    .line 143
    :goto_3
    new-instance v9, Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-direct/range {v9 .. v22}, Lcom/android/server/display/config/HighBrightnessModeData;-><init>(FFJJJZFLandroid/util/Spline;Landroid/view/SurfaceControl$RefreshRateRange;Z)V

    return-object v9
.end method

.method public static loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM{minLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSdrToHdrRatioSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHighBrightnessModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
