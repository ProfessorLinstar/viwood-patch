.class public final Lcom/android/server/display/DisplayBrightnessState;
.super Ljava/lang/Object;
.source "DisplayBrightnessState.java"


# instance fields
.field public final mBrightness:F

.field public final mBrightnessAdjustmentFlag:I

.field public final mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mBrightnessMaxReason:I

.field public final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mCustomAnimationRate:F

.field public final mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public final mHdrBrightness:F

.field public final mIsSlowChange:Z

.field public final mIsUserInitiatedChange:Z

.field public final mMaxBrightness:F

.field public final mMinBrightness:F

.field public final mShouldUpdateScreenBrightnessSetting:Z

.field public final mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 59
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getHdrBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    .line 60
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getShouldUseAutoBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 63
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->isSlowChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 64
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 65
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMinBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 66
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getCustomAnimationRate()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->shouldUpdateScreenBrightnessSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 68
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 69
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessAdjustmentFlag()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 70
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->isUserInitiatedChange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 71
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessMaxReason()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;Lcom/android/server/display/DisplayBrightnessState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 209
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/DisplayBrightnessState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 213
    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayBrightnessState;

    .line 215
    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    .line 216
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 220
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 221
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->isSlowChange()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 222
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getMaxBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 223
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getMinBrightness()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 224
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getCustomAnimationRate()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 226
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 228
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 229
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getBrightness()F
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    return p0
.end method

.method public getBrightnessAdjustmentFlag()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    return p0
.end method

.method public getBrightnessEvent()Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    return-object p0
.end method

.method public getBrightnessMaxReason()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    return p0
.end method

.method public getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getCustomAnimationRate()F
    .locals 0

    .line 135
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    return p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getHdrBrightness()F
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    return p0
.end method

.method public getMaxBrightness()F
    .locals 0

    .line 121
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    return p0
.end method

.method public getMinBrightness()F
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    return p0
.end method

.method public getShouldUseAutoBrightness()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    return p0
.end method

.method public hashCode()I
    .locals 14

    .line 235
    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mHdrBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 237
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    .line 235
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSlowChange()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    return p0
.end method

.method public isUserInitiatedChange()Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    return p0
.end method

.method public shouldUpdateScreenBrightnessSetting()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayBrightnessState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v1, "\n    brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n    hdrBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n    brightnessReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n    shouldUseAutoBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState;->getShouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n    isSlowChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "\n    maxBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "\n    minBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\n    customAnimationRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n    shouldUpdateScreenBrightnessSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n    mBrightnessEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const-string/jumbo v2, "null"

    .line 192
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\n    mBrightnessAdjustmentFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "\n    mIsUserInitiatedChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "\n    mBrightnessMaxReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    .line 196
    invoke-static {p0}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
