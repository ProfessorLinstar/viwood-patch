.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessStrategy2.java"


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

.field public mIsAutoBrightnessEnabled:Z

.field public mIsShortTermModelActive:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 72
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 98
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    .line 100
    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentSetting()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 101
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 102
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .locals 3

    .line 420
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 422
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result p0

    return p0
.end method

.method private updateTemporaryAutoBrightnessAdjustments()F
    .locals 2

    .line 408
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 409
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_0

    .line 413
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    return p0
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V
    .locals 12

    .line 377
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->processPendingAutoBrightnessAdjustments()Z

    .line 381
    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updateTemporaryAutoBrightnessAdjustments()F

    move-result v5

    const/4 v11, 0x0

    .line 382
    iput-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 384
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 386
    iget-boolean v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v10, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    move v4, p1

    move v3, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v1, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZ)V

    .line 395
    iput-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 398
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    :cond_0
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 304
    :goto_0
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 306
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 309
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 315
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 237
    const-string v0, "AutomaticBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldResetShortTermModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    .line 335
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public getAutoBrightnessAdjustmentReasonsFlags()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return p0
.end method

.method public getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 278
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->adjustAutomaticBrightnessStateIfValid(F)V

    return p1
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .locals 0

    .line 340
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .locals 0

    .line 345
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .locals 0

    .line 293
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public isShortTermModelActive()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()Z
    .locals 4

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 163
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 166
    :cond_0
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v1, v1, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_1

    .line 167
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return v0

    .line 170
    :cond_1
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 171
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 172
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return v0
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .locals 2

    .line 350
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    if-nez v0, :cond_0

    .line 351
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 352
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

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

    .line 362
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public setAutoBrightnessState(IZIIZFZZ)V
    .locals 3

    const/4 p8, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-ne p4, v0, :cond_0

    if-eq p1, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p8

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    if-ne p1, v2, :cond_1

    if-ne p4, v0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    const/4 v1, 0x6

    if-eq p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p8

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p1, v2, :cond_4

    if-ne p4, v0, :cond_5

    :cond_4
    if-nez p2, :cond_5

    move p8, v0

    :cond_5
    iput-boolean p8, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 127
    iget-boolean p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    if-eqz p2, :cond_6

    const/16 p2, 0xa

    if-eq p3, p2, :cond_6

    :goto_2
    move p2, p6

    goto :goto_3

    :cond_6
    if-eqz p8, :cond_7

    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    move p2, p6

    move v0, v2

    .line 133
    :goto_3
    iget-object p6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move p3, p4

    move p4, p1

    move p1, p7

    move p7, v0

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V

    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 188
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return p0
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_auto_brightness_adj"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method
