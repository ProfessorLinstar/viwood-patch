.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
.super Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.source "AutomaticBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mAppliedAutoBrightness:Z

.field public mAppliedTemporaryAutoBrightnessAdjustment:Z

.field public mAutoBrightnessAdjustment:F

.field public mAutoBrightnessAdjustmentChanged:Z

.field public mAutoBrightnessAdjustmentReasonsFlags:I

.field public mAutoBrightnessDisabledDueToDisplayOff:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsConfigured:Z

.field public mIsShortTermModelActive:Z

.field public mIsSlowChange:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 75
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 116
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 117
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentSetting()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 118
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 119
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 120
    iput-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-nez p3, :cond_0

    .line 121
    new-instance p3, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;

    invoke-direct {p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V
    .locals 12

    .line 484
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->processPendingAutoBrightnessAdjustments()Z

    .line 488
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->updateTemporaryAutoBrightnessAdjustments()F

    move-result v5

    const/4 v11, 0x0

    .line 489
    iput-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 491
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 493
    iget-boolean v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v10, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    move v4, p1

    move v3, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v1, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZ)V

    .line 503
    iput-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 506
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    :cond_0
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 411
    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 413
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 416
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 422
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 325
    const-string v0, "AutomaticBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldResetShortTermModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    .line 442
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public final getAutoBrightnessAdjustmentSetting()F
    .locals 3

    .line 558
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 560
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result p0

    return p0
.end method

.method public getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_0
    if-nez p2, :cond_1

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->adjustAutomaticBrightnessStateIfValid(F)V

    :cond_1
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 318
    const-string p0, "AutomaticBrightnessStrategy"

    return-object p0
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    .line 447
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    .line 452
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public isAutoBrightnessValid()Z
    .locals 4

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F

    move-result v0

    .line 185
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->hasAppliedAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessApplied(Z)V

    return v0
.end method

.method public isShortTermModelActive()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()Z
    .locals 4

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 220
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 223
    :cond_0
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v1, v1, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_1

    .line 224
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return v0

    .line 227
    :cond_1
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 228
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 229
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return v0
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    .line 457
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    if-nez v0, :cond_0

    .line 458
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 459
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_0
    return-void
.end method

.method public setAutoBrightnessApplied(Z)V
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public setAutoBrightnessState(IZIIZFZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p4

    move v2, p5

    move v4, p8

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->switchMode(IZIZZ)V

    move p4, v1

    const/4 p1, 0x0

    const/4 p8, 0x1

    if-eqz p2, :cond_0

    if-ne v3, p8, :cond_0

    if-eq p4, p8, :cond_0

    move p2, p8

    goto :goto_0

    :cond_0
    move p2, p1

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    if-ne p4, v1, :cond_1

    if-ne v3, p8, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x6

    if-eq p3, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    move v0, p8

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p4, v1, :cond_4

    if-ne v3, p8, :cond_5

    :cond_4
    if-nez p2, :cond_5

    move p1, p8

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 156
    iget-boolean p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    if-eqz p2, :cond_6

    const/16 p2, 0xa

    if-eq p3, p2, :cond_6

    move p2, p6

    move v1, p8

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    const/4 v1, 0x3

    :cond_7
    move p2, p6

    .line 162
    :goto_2
    iget-object p6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move p1, p7

    move p7, v1

    move p3, v3

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V

    .line 165
    iput-boolean p8, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 245
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 10

    .line 345
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getTargetDisplayState()I

    move-result v2

    .line 347
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v3

    .line 348
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getSelectedDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getReason()I

    move-result v4

    .line 350
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 351
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v6, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 353
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getLastUserSetScreenBrightness()F

    move-result v7

    .line 354
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isUserSetBrightnessChanged()Z

    move-result v8

    .line 355
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isBedtimeModeWearEnabled()Z

    move-result v9

    move-object v1, p0

    .line 346
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZ)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const/4 p0, 0x0

    .line 357
    iput-boolean p0, v1, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public final switchMode(IZIZZ)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 514
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 519
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 522
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    return-void

    .line 528
    :cond_1
    iget-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    if-nez p2, :cond_2

    if-eq p3, p4, :cond_5

    .line 530
    :cond_2
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p4, v0

    goto :goto_0

    .line 531
    :cond_4
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p4

    :cond_5
    :goto_0
    if-eqz p4, :cond_6

    .line 533
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    return-void

    .line 537
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 5

    .line 293
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/4 v1, 0x4

    .line 294
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 295
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-interface {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;->getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v1

    const/4 v2, 0x1

    .line 300
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F

    move-result v3

    .line 302
    new-instance v4, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 303
    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v4

    .line 304
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 306
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result v1

    cmpl-float v1, v3, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 309
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result p0

    if-nez p0, :cond_2

    .line 312
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isUserSetBrightnessChanged()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 311
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_auto_brightness_adj"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 279
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method

.method public final updateTemporaryAutoBrightnessAdjustments()F
    .locals 2

    .line 546
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 547
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_0

    .line 551
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method
