.class public Lcom/android/server/display/DisplayBrightnessState$Builder;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# instance fields
.field public mBrightness:F

.field public mBrightnessAdjustmentFlag:I

.field public mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mBrightnessMaxReason:I

.field public mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mCustomAnimationRate:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mHdrBrightness:F

.field public mIsSlowChange:Z

.field public mIsUserInitiatedChange:Z

.field public mMaxBrightness:F

.field public mMinBrightness:F

.field public mShouldUpdateScreenBrightnessSetting:Z

.field public mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 254
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    .line 255
    new-instance v1, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 259
    iput v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    .line 261
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    .line 266
    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    return-void
.end method

.method public static from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 2

    .line 276
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 281
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 285
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 288
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 290
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 475
    new-instance v0, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V

    return-object v0
.end method

.method public getBrightness()F
    .locals 0

    .line 299
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    return p0
.end method

.method public getBrightnessAdjustmentFlag()I
    .locals 0

    .line 498
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    return p0
.end method

.method public getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    return-object p0
.end method

.method public getBrightnessMaxReason()I
    .locals 0

    .line 529
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    return p0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getCustomAnimationRate()F
    .locals 0

    .line 452
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    return p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getHdrBrightness()F
    .locals 0

    .line 317
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    return p0
.end method

.method public getMaxBrightness()F
    .locals 0

    .line 422
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    return p0
.end method

.method public getMinBrightness()F
    .locals 0

    .line 437
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    return p0
.end method

.method public getShouldUseAutoBrightness()Z
    .locals 0

    .line 392
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    return p0
.end method

.method public isSlowChange()Z
    .locals 0

    .line 407
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    return p0
.end method

.method public isUserInitiatedChange()Z
    .locals 0

    .line 514
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    return p0
.end method

.method public setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 309
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    return-object p0
.end method

.method public setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 506
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    return-object p0
.end method

.method public setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    return-object p0
.end method

.method public setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 537
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    return-object p0
.end method

.method public setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 444
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    return-object p0
.end method

.method public setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 327
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mHdrBrightness:F

    return-object p0
.end method

.method public setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 399
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    return-object p0
.end method

.method public setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    return-object p0
.end method

.method public setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 414
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    return-object p0
.end method

.method public setMinBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 429
    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    return-object p0
.end method

.method public setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    return-object p0
.end method

.method public setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    return-object p0
.end method

.method public shouldUpdateScreenBrightnessSetting()Z
    .locals 0

    .line 459
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    return p0
.end method
