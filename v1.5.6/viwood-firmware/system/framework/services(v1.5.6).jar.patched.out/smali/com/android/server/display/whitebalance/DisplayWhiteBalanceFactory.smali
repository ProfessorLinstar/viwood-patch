.class public abstract Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceFactory.java"


# direct methods
.method public static create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .locals 23

    move-object/from16 v0, p2

    .line 62
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    move-result-object v1

    .line 63
    const-string v2, "AmbientBrightnessFilter"

    .line 64
    invoke-static {v2, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v2

    .line 66
    invoke-static/range {p0 .. p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    move-result-object v3

    .line 67
    const-string v4, "AmbientColorTemperatureFilter"

    .line 68
    invoke-static {v4, v0}, Lcom/android/server/display/utils/AmbientFilterFactory;->createColorTemperatureFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    .line 69
    invoke-static {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    move-result-object v5

    const v6, 0x1070064

    .line 70
    invoke-static {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    const v7, 0x1070065

    .line 73
    invoke-static {v0, v7}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v7

    const v8, 0x1070062

    .line 76
    invoke-static {v0, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v8

    const v9, 0x1070063

    .line 79
    invoke-static {v0, v9}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v9

    const v10, 0x10500e7

    .line 82
    invoke-static {v0, v10}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v10

    const v11, 0x10500e8

    .line 85
    invoke-static {v0, v11}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v11

    const v12, 0x107005f

    .line 88
    invoke-static {v0, v12}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v12

    const v13, 0x1070060

    .line 91
    invoke-static {v0, v13}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v13

    const v14, 0x107005d

    .line 94
    invoke-static {v0, v14}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v14

    const v15, 0x107005e

    .line 97
    invoke-static {v0, v15}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v15

    move-object/from16 v16, v1

    const v1, 0x10500e5

    .line 100
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    move/from16 p0, v1

    const v1, 0x10500e6

    .line 103
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result v17

    const v1, 0x1070055

    .line 106
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v18

    const v1, 0x1070058

    .line 108
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v19

    const v1, 0x1070066

    .line 110
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v20

    const v1, 0x1070067

    .line 113
    invoke-static {v0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v21

    const v1, 0x111014b

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 118
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-object/from16 v1, v16

    move/from16 v16, p0

    invoke-direct/range {v0 .. v22}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;Lcom/android/server/display/utils/AmbientFilter;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;[F[F[F[FFF[F[F[F[FFF[F[F[F[FZ)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z

    .line 133
    invoke-virtual {v3, v0}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z

    return-object v0
.end method

.method public static createBrightnessSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    .locals 1

    const v0, 0x10e0077

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 148
    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    return-object v0
.end method

.method public static createColorTemperatureSensor(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
    .locals 2

    const v0, 0x104026b

    .line 157
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10e007c

    .line 160
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 163
    new-instance v1, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;-><init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static createThrottler(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;
    .locals 7

    const v0, 0x10e007d

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v0, 0x10e007f

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v0, 0x1070056

    .line 171
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v4

    const v0, 0x1070061

    .line 173
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v5

    const v0, 0x1070057

    .line 175
    invoke-static {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v6

    .line 177
    new-instance v1, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceThrottler;-><init>(II[F[F[F)V

    return-object v1
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .locals 2

    .line 182
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 184
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 4

    .line 191
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 199
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    throw p1
.end method
