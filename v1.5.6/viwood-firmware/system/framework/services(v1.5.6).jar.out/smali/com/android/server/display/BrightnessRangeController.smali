.class public Lcom/android/server/display/BrightnessRangeController;
.super Ljava/lang/Object;
.source "BrightnessRangeController.java"


# instance fields
.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

.field public final mModeChangeCallback:Ljava/lang/Runnable;

.field public final mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

.field public final mUseHdrClamper:Z


# direct methods
.method public static synthetic $r8$lambda$GUV7m5sl0wmyNlkXREpePSULFgA(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$loadFromConfig$2(Lcom/android/server/display/DisplayDeviceConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U0nZjfPV0TdCJdzfZtXNehso7Pg(Lcom/android/server/display/BrightnessRangeController;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$onAmbientLuxChange$1(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKtp9_j8KRcoYxWMg8d00hzlVN0(Lcom/android/server/display/BrightnessRangeController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$setAutoBrightnessEnabled$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbB59hbTRiQQALN7imDybrZ2ZcM(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessRangeController;->lambda$loadFromConfig$3(Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1Nigl72IgjP0-A2CBQzXT9CNbM(Lcom/android/server/display/BrightnessRangeController;F)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$onAmbientLuxChange$0(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zpmKQQW2rDvBS46nbBqX3mXvWvI(Lcom/android/server/display/BrightnessRangeController;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$setAutoBrightnessEnabled$4(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 9

    .line 46
    new-instance v4, Lcom/android/server/display/NormalBrightnessModeController;

    invoke-direct {v4}, Lcom/android/server/display/NormalBrightnessModeController;-><init>()V

    new-instance v5, Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v0, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 46
    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 59
    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    .line 60
    iput-object p5, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 61
    iput-object p4, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 62
    invoke-virtual {p6}, Lcom/android/server/display/feature/DisplayManagerFlags;->useNewHdrBrightnessModifier()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    .line 64
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getLuxThrottlingData()Ljava/util/Map;

    move-result-object p2

    .line 63
    invoke-virtual {p4, p2}, Lcom/android/server/display/NormalBrightnessModeController;->resetNbmData(Ljava/util/Map;)Z

    .line 65
    invoke-virtual {p6}, Lcom/android/server/display/feature/DisplayManagerFlags;->useNewHdrBrightnessModifier()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->disableHdrBoost()V

    .line 69
    :cond_0
    invoke-virtual {p0, p8, p7, p3}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V
    .locals 0

    .line 171
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    .line 172
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_0

    .line 176
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 73
    const-string v0, "BrightnessRangeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseHdrClamper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    return p0

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 140
    invoke-virtual {p0}, Lcom/android/server/display/NormalBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 139
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getCurrentBrightnessMin()F
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result p0

    return p0
.end method

.method public getHdrBrightnessValue()F
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v0

    .line 151
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->clamp(F)F

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getHdrTransitionRate()F
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->getTransitionRate()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getHighBrightnessMode()I
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result p0

    return p0
.end method

.method public getNormalBrightnessMax()F
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result p0

    return p0
.end method

.method public getTransitionPoint()F
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result p0

    return p0
.end method

.method public final synthetic lambda$loadFromConfig$2(Lcom/android/server/display/DisplayDeviceConfig;)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 98
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getLuxThrottlingData()Ljava/util/Map;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->resetNbmData(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$loadFromConfig$3(Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 102
    invoke-virtual {p4}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v6

    .line 103
    new-instance v7, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda7;

    invoke-direct {v7, p4}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    move-object v4, p3

    .line 101
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method

.method public final synthetic lambda$onAmbientLuxChange$0(F)Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->onAmbientLuxChange(F)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onAmbientLuxChange$1(F)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->onAmbientLuxChange(F)V

    return-void
.end method

.method public final synthetic lambda$setAutoBrightnessEnabled$4(I)Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->setAutoBrightnessState(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setAutoBrightnessEnabled$5(I)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setAutoBrightnessEnabled(I)V

    return-void
.end method

.method public loadFromConfig(Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 7

    .line 96
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public onAmbientLuxChange(F)V
    .locals 2

    .line 81
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->onAmbientLuxChange(F)V

    :cond_0
    return-void
.end method

.method public onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 125
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onHdrBoostApplied(Z)V

    .line 126
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 127
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result p3

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .locals 2

    .line 115
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->setAutoBrightnessState(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->stop()V

    .line 111
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->stop()V

    return-void
.end method

.method public final updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 7

    .line 160
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    move v5, v0

    goto :goto_1

    .line 164
    :cond_0
    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    goto :goto_0

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v2

    iget v3, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v4, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/brightness/clamper/HdrClamper;->resetHdrConfig(Lcom/android/server/display/config/HdrBrightnessData;IIFLandroid/os/IBinder;)V

    :cond_1
    return-void
.end method
