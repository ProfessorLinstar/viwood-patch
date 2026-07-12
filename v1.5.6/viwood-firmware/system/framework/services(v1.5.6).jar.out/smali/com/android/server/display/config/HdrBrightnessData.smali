.class public Lcom/android/server/display/config/HdrBrightnessData;
.super Ljava/lang/Object;
.source "HdrBrightnessData.java"


# instance fields
.field public final allowInLowPowerMode:Z

.field public final brightnessDecreaseDebounceMillis:J

.field public final brightnessIncreaseDebounceMillis:J

.field public final hbmTransitionPoint:F

.field public final highestHdrSdrRatio:F

.field public final maxBrightnessLimits:Ljava/util/Map;

.field public final minimumHdrPercentOfScreenForHbm:F

.field public final minimumHdrPercentOfScreenForNbm:F

.field public final screenBrightnessRampDecrease:F

.field public final screenBrightnessRampIncrease:F

.field public final sdrToHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;JFJFFFFZ",
            "Landroid/util/Spline;",
            "F)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    .line 140
    iput-wide p2, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 141
    iput p4, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    .line 142
    iput-wide p5, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 143
    iput p7, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    .line 144
    iput p8, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    .line 145
    iput p9, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    .line 146
    iput p10, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    .line 147
    iput-boolean p11, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    .line 148
    iput-object p12, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 149
    iput p13, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    return-void
.end method

.method public static getFallbackData(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v9

    .line 227
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v12

    .line 228
    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 231
    invoke-static {p0, p1}, Lcom/android/server/display/config/HdrBrightnessData;->getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F

    move-result v8

    const/4 v11, 0x0

    .line 233
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v13

    const-wide/16 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    move v10, v9

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    return-object v0
.end method

.method public static getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public static getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result p0

    return p0
.end method

.method public static getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 259
    :cond_1
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

.method public static getHighestSdrHdrRatio(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)F
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 267
    invoke-static {p1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHighestSdrHdrRatio(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result p0

    return p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result p0

    return p0
.end method

.method public static getSdrHdrRatioSpline(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 247
    invoke-static {p1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackSdrHdrRatioSpline(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/config/HdrBrightnessData$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public static getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F
    .locals 0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 216
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 18

    move-object/from16 v0, p1

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHdrBrightnessConfig()Lcom/android/server/display/config/HdrBrightnessConfig;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    invoke-static {v1, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackData(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v3

    .line 182
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 184
    invoke-virtual {v4}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 188
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    :goto_1
    move v14, v3

    goto :goto_2

    .line 189
    :cond_2
    invoke-static {v1}, Lcom/android/server/display/config/HdrBrightnessData;->getFallbackHdrPercent(Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v3

    goto :goto_1

    .line 191
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    move v13, v3

    goto :goto_3

    :cond_3
    move v13, v14

    :goto_3
    cmpl-float v3, v13, v14

    if-gtz v3, :cond_4

    .line 199
    new-instance v4, Lcom/android/server/display/config/HdrBrightnessData;

    .line 200
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessIncreaseDebounceMillis()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 201
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getScreenBrightnessRampIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    .line 202
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getBrightnessDecreaseDebounceMillis()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    .line 203
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getScreenBrightnessRampDecrease()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    .line 204
    invoke-static {v1, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getTransitionPoint(Lcom/android/server/display/config/HighBrightnessMode;Ljava/util/function/Function;)F

    move-result v12

    .line 205
    invoke-virtual {v2}, Lcom/android/server/display/config/HdrBrightnessConfig;->getAllowInLowPowerMode()Z

    move-result v15

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getSdrHdrRatioSpline(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v16

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/display/config/HdrBrightnessData;->getHighestSdrHdrRatio(Lcom/android/server/display/config/HdrBrightnessConfig;Lcom/android/server/display/config/HighBrightnessMode;)F

    move-result v17

    invoke-direct/range {v4 .. v17}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJFFFFZLandroid/util/Spline;F)V

    return-object v4

    .line 195
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minHdrPercentForHbm should be >= minHdrPercentForNbm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HdrBrightnessData {mMaxBrightnessLimits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessIncreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampIncrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDecreaseDebounceMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenBrightnessRampDecrease: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transitionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForNbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minimumHdrPercentOfScreenForHbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdrToHdrRatioSpline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highestHdrSdrRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->highestHdrSdrRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
