.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# static fields
.field public static final PLOG:Lcom/android/server/display/utils/Plog;


# instance fields
.field public mLoggingEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 13

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screen_brightness_for_als"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v3, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    move-object v2, v1

    move-object v5, v2

    move-object v6, v5

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1, p2, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object v2

    .line 121
    invoke-virtual {p1, p2, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object v3

    move-object v5, v2

    move-object v6, v3

    move-object v2, v1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v3

    move-object v6, v1

    move-object v5, v3

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsNits()[F

    move-result-object v2

    .line 108
    invoke-virtual {p1, p2, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    move-result-object v3

    .line 110
    invoke-virtual {p1, p2, v10}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    move-result-object v4

    move-object v5, v3

    move-object v6, v4

    .line 126
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1130000

    invoke-virtual {v3, v4, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v8, p0

    move-object v3, v6

    .line 133
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v6

    .line 134
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object p0

    .line 136
    invoke-static {v6, p0}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    invoke-static {v5, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    new-instance p1, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {p1, v5, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 140
    invoke-virtual {p1, v8, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    const v0, 0x3f19999a    # 0.6f

    .line 141
    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 142
    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 143
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v5

    move v9, p2

    move-object/from16 v11, p3

    move v8, v7

    move-object v7, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFIILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V

    return-object v4

    .line 145
    :cond_3
    invoke-static {v5, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 146
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v12, 0x0

    move-object v6, v3

    move v11, v10

    move v10, p2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[FFJIILcom/android/server/display/BrightnessMappingStrategy-IA;)V

    return-object v4

    :cond_4
    return-object v1
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 169
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 170
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .locals 3

    .line 155
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 156
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 157
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isValidMapping([F[F)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 179
    array-length v1, p0

    if-eqz v1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 182
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    .line 185
    :cond_1
    array-length v1, p0

    .line 186
    aget v2, p0, v0

    .line 187
    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_7

    .line 188
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_6

    .line 192
    aget v6, p0, v5

    cmpl-float v2, v2, v6

    if-gez v2, :cond_5

    aget v2, p1, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    goto :goto_1

    .line 195
    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5

    aget v2, p1, v5

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 198
    :cond_4
    aget v2, p0, v5

    .line 199
    aget v3, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToAdjustedNits(F)F
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;F)V
.end method

.method public final findInsertionPoint([FF)I
    .locals 1

    const/4 p0, 0x0

    .line 470
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    .line 471
    aget v0, p1, p0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    array-length p0, p1

    return p0
.end method

.method public getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 6

    .line 559
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 560
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 561
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v2, "unadjusted curve"

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 563
    invoke-static {p5, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    neg-float p5, p5

    .line 564
    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 565
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v4, :cond_1

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdjustedCurve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {p6, p5}, Landroid/util/MathUtils;->pow(FF)F

    move-result p5

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, " == "

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 566
    const-string p6, "BrightnessMappingStrategy"

    invoke-static {p6, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpl-float p5, v3, v2

    if-eqz p5, :cond_2

    const/4 p5, 0x0

    .line 570
    :goto_0
    array-length p6, v0

    if-ge p5, p6, :cond_2

    .line 571
    aget p6, v0, p5

    invoke-static {p6, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p6

    aput p6, v0, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 574
    :cond_2
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_3

    .line 575
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string p6, "gamma adjusted curve"

    invoke-virtual {p5, p6, p1, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_3
    cmpl-float p5, p3, v1

    if-eqz p5, :cond_5

    .line 578
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p5

    .line 580
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, [F

    .line 581
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, [F

    .line 582
    iget-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p5, :cond_4

    .line 583
    sget-object p5, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v1, "gamma and user adjusted curve"

    invoke-virtual {p5, v1, p6, v0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 585
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object p0

    .line 586
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [F

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [F

    const-string/jumbo p2, "user adjusted curve"

    invoke-virtual {p5, p2, p1, p0}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_4
    move-object p1, p6

    .line 589
    :cond_5
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 287
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessFromNits(F)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getMode()I
.end method

.method public abstract getPreset()I
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract getUserBrightness()F
.end method

.method public abstract getUserLux()F
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public inferAutoBrightnessAdjustment(FFF)F
    .locals 6

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p3, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-lez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    cmpl-float v0, p2, v2

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 542
    :cond_2
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    div-float v3, v0, v3

    .line 544
    invoke-static {v3}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    neg-float v0, v0

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float/2addr v0, v4

    goto :goto_1

    :cond_3
    :goto_0
    sub-float v0, p2, p3

    .line 546
    :goto_1
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 547
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_4

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inferAutoBrightnessAdjustment: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {p1, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " == "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 548
    const-string v4, "BrightnessMappingStrategy"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {p3, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 550
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method public final insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 3

    .line 438
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 441
    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 442
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 443
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 444
    aput p3, p1, v0

    .line 445
    aput p4, p2, v0

    goto :goto_0

    .line 446
    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 447
    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 448
    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 449
    aput p4, p2, v0

    goto :goto_0

    .line 451
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 452
    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    aput p3, v1, v0

    .line 454
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 455
    array-length p2, p2

    sub-int/2addr p2, v0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    aput p4, p1, v0

    move-object p2, p1

    move-object p1, v1

    .line 459
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 460
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public final permissibleRatio(FF)F
    .locals 0

    const/high16 p0, 0x3e800000    # 0.25f

    add-float/2addr p1, p0

    add-float/2addr p2, p0

    div-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 522
    invoke-static {p1, p0}, Landroid/util/MathUtils;->pow(FF)F

    move-result p0

    return p0
.end method

.method public abstract recalculateSplines(Z[F)V
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 242
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const/4 p0, 0x1

    return p0
.end method

.method public shouldResetShortTermModel(FF)Z
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 415
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v1

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    mul-float/2addr v1, p2

    sub-float v1, p2, v1

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    cmpg-float v0, v1, p1

    .line 423
    const-string v2, "BrightnessMappingStrategy"

    if-gez v0, :cond_4

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_4

    .line 424
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_3

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 430
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final smoothCurve([F[FI)V
    .locals 6

    .line 479
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 482
    :cond_0
    aget v0, p1, p3

    .line 483
    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 485
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 486
    aget v3, p1, v2

    .line 487
    aget v4, p2, v2

    .line 489
    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    const v5, 0x3b83126f    # 0.004f

    add-float/2addr v5, v1

    .line 488
    invoke-static {v0, v5}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .line 491
    invoke-static {v4, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    cmpl-float v0, v1, v4

    if-nez v0, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    aput v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 501
    :cond_2
    :goto_1
    aget v0, p1, p3

    .line 502
    aget v1, p2, p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_4

    .line 504
    aget v2, p1, p3

    .line 505
    aget v3, p2, p3

    .line 506
    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v0

    mul-float/2addr v0, v1

    .line 507
    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    cmpl-float v0, v1, v3

    if-nez v0, :cond_3

    goto :goto_3

    .line 514
    :cond_3
    aput v1, p2, p3

    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_2

    .line 516
    :cond_4
    :goto_3
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_5

    .line 517
    sget-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo p3, "smoothed curve"

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_5
    return-void
.end method
