.class public Lcom/android/server/display/config/EvenDimmerBrightnessData;
.super Ljava/lang/Object;
.source "EvenDimmerBrightnessData.java"


# instance fields
.field public final backlight:[F

.field public final backlightToBrightness:Landroid/util/Spline;

.field public final backlightToNits:Landroid/util/Spline;

.field public final brightness:[F

.field public final brightnessToBacklight:Landroid/util/Spline;

.field public final minLuxToNits:Landroid/util/Spline;

.field public final nits:[F

.field public final nitsToBacklight:Landroid/util/Spline;

.field public final transitionPoint:F


# direct methods
.method public constructor <init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    .line 85
    iput-object p2, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    .line 86
    iput-object p3, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    .line 87
    iput-object p4, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    .line 88
    iput-object p5, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    .line 89
    iput-object p6, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    .line 90
    iput-object p7, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    .line 91
    iput-object p8, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    .line 92
    iput-object p9, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;
    .locals 13

    .line 115
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getEvenDimmer()Lcom/android/server/display/config/EvenDimmerMode;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/EvenDimmerMode;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/config/EvenDimmerMode;->getBrightnessMapping()Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 130
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->getBrightnessPoint()Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 135
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [F

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [F

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [F

    const/4 v2, 0x0

    move v3, v2

    .line 139
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/BrightnessPoint;

    .line 141
    invoke-virtual {v4}, Lcom/android/server/display/config/BrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v5, v3

    .line 142
    invoke-virtual {v4}, Lcom/android/server/display/config/BrightnessPoint;->getBacklight()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v6, v3

    .line 143
    invoke-virtual {v4}, Lcom/android/server/display/config/BrightnessPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/config/EvenDimmerMode;->getTransitionPoint()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/config/EvenDimmerMode;->getLuxToMinimumNitsMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p0

    .line 148
    const-string v1, "EvenDimmerBrightnessData"

    if-nez p0, :cond_5

    .line 149
    const-string p0, "Invalid min lux to nits mapping"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    new-array v3, v0, [F

    .line 156
    new-array v0, v0, [F

    .line 159
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/config/Point;

    .line 160
    invoke-virtual {v8}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    aput v9, v3, v2

    .line 161
    invoke-virtual {v8}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v0, v2

    if-lez v2, :cond_7

    .line 163
    aget v8, v3, v2

    add-int/lit8 v9, v2, -0x1

    aget v10, v3, v9

    cmpg-float v8, v8, v10

    const-string v10, " < "

    if-gez v8, :cond_6

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v3, v2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v3, v9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_6
    aget v8, v0, v2

    aget v11, v0, v9

    cmpg-float v8, v8, v11

    if-gez v8, :cond_7

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "minLuxToNitsSpline must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v0, v2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_8
    new-instance p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;

    new-instance v8, Landroid/util/Spline$LinearSpline;

    invoke-direct {v8, v6, v5}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v9, Landroid/util/Spline$LinearSpline;

    invoke-direct {v9, v5, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v10, Landroid/util/Spline$LinearSpline;

    invoke-direct {v10, v7, v6}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    new-instance v11, Landroid/util/Spline$LinearSpline;

    invoke-direct {v11, v6, v7}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    .line 180
    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v12

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/config/EvenDimmerBrightnessData;-><init>(F[F[F[FLandroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;Landroid/util/Spline;)V

    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EvenDimmerBrightnessData {transitionPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", nits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    .line 100
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nitsToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessToBacklight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backlightToBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLuxToNits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
