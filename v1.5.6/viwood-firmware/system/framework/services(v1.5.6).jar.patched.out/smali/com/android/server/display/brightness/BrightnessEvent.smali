.class public final Lcom/android/server/display/brightness/BrightnessEvent;
.super Ljava/lang/Object;
.source "BrightnessEvent.java"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mAdjustmentFlags:I

.field public mAutoBrightnessMode:I

.field public mAutomaticBrightnessEnabled:Z

.field public mBrightness:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mDisplayId:I

.field public mDisplayPolicy:I

.field public mDisplayState:I

.field public mDisplayStateReason:I

.field public mFlags:I

.field public mHbmMax:F

.field public mHbmMode:I

.field public mInitialBrightness:F

.field public mLux:F

.field public mNits:F

.field public mPercent:F

.field public mPhysicalDisplayId:Ljava/lang/String;

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public mPowerFactor:F

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mRampSpeed:F

.field public mRbcStrength:I

.field public mReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mRecommendedBrightness:F

.field public mSlowChange:Z

.field public mThermalMax:F

.field public mTime:J

.field public mUnclampedBrightness:F

.field public mWasShortTermModelActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 89
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 101
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPhysicalDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    .line 103
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 104
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 105
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 106
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 108
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getLux()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 109
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPreThresholdLux()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 110
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getNits()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 111
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPercent()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    .line 113
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getInitialBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 114
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 115
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getUnclampedBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 116
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRecommendedBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 117
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPreThresholdBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 119
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 120
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getHbmMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 121
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getRbcStrength()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 122
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getThermalMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 123
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getPowerFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 124
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->wasShortTermModelActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 125
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 126
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getAdjustmentFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 128
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->isAutomaticBrightnessEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 129
    invoke-virtual {p1}, Lcom/android/server/display/brightness/BrightnessEvent;->getDisplayBrightnessStrategyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 130
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 131
    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    .line 132
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 192
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 193
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 194
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 195
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    .line 196
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 197
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 198
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 199
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 200
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 201
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 202
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 203
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 204
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 206
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 208
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 209
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 211
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public flagsToString()Ljava/lang/String;
    .locals 3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_set "

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "rbc "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "invalid_lux "

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const-string v1, "doze_scale "

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    const-string/jumbo v1, "low_power_mode "

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5

    const-string v2, "even_dimmer "

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdjustmentFlags()I
    .locals 0

    .line 461
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    return p0
.end method

.method public getAutoBrightnessMode()I
    .locals 0

    .line 486
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    return p0
.end method

.method public getBrightness()F
    .locals 0

    .line 344
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return p0
.end method

.method public getDisplayBrightnessStrategyName()Ljava/lang/String;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    .line 453
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    return p0
.end method

.method public getHbmMax()F
    .locals 0

    .line 399
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    return p0
.end method

.method public getHbmMode()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    return p0
.end method

.method public getInitialBrightness()F
    .locals 0

    .line 336
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    return p0
.end method

.method public getLux()F
    .locals 0

    .line 320
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    return p0
.end method

.method public getNits()F
    .locals 0

    .line 371
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    return p0
.end method

.method public getPercent()F
    .locals 0

    .line 363
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    return p0
.end method

.method public getPhysicalDisplayId()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhysicalDisplayName()Ljava/lang/String;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerFactor()F
    .locals 0

    .line 427
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    return p0
.end method

.method public getPreThresholdBrightness()F
    .locals 0

    .line 383
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    return p0
.end method

.method public getPreThresholdLux()F
    .locals 0

    .line 328
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    return p0
.end method

.method public getRbcStrength()I
    .locals 0

    .line 407
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    return p0
.end method

.method public getReason()Lcom/android/server/display/brightness/BrightnessReason;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-object p0
.end method

.method public getRecommendedBrightness()F
    .locals 0

    .line 375
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    return p0
.end method

.method public getThermalMax()F
    .locals 0

    .line 419
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    return p0
.end method

.method public getTime()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    return-wide v0
.end method

.method public getUnclampedBrightness()F
    .locals 0

    .line 352
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    return p0
.end method

.method public isAutomaticBrightnessEnabled()Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    return p0
.end method

.method public isLowPowerModeSet()Z
    .locals 0

    .line 435
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRbcEnabled()Z
    .locals 1

    .line 415
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 4

    .line 139
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 143
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 144
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 145
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 147
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    const/4 v3, 0x0

    .line 148
    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 149
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    .line 150
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 152
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 153
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 154
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    .line 155
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 156
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 158
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 159
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 160
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 161
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 162
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 163
    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 164
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 165
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    const/4 v2, 0x1

    .line 167
    iput-boolean v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 168
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 169
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 170
    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    .line 171
    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public setAdjustmentFlags(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    return-void
.end method

.method public setAutoBrightnessMode(I)V
    .locals 0

    .line 491
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    return-void
.end method

.method public setAutomaticBrightnessEnabled(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return-void
.end method

.method public setDisplayBrightnessStrategyName(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayPolicy(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    return-void
.end method

.method public setDisplayState(I)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    return-void
.end method

.method public setDisplayStateReason(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    return-void
.end method

.method public setHbmMax(F)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    return-void
.end method

.method public setHbmMode(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    return-void
.end method

.method public setInitialBrightness(F)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    return-void
.end method

.method public setLux(F)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    return-void
.end method

.method public setNits(F)V
    .locals 0

    .line 367
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    return-void
.end method

.method public setPhysicalDisplayId(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    return-void
.end method

.method public setPhysicalDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setPowerFactor(F)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    return-void
.end method

.method public setPreThresholdBrightness(F)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    return-void
.end method

.method public setPreThresholdLux(F)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    return-void
.end method

.method public setRampSpeed(F)V
    .locals 0

    .line 499
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public setRbcStrength(I)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    return-void
.end method

.method public setReason(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-void
.end method

.method public setRecommendedBrightness(F)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    return-void
.end method

.method public setSlowChange(Z)V
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    return-void
.end method

.method public setUnclampedBrightness(F)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    return-void
.end method

.method public setWasShortTermModelActive(Z)Z
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 6

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: brt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 229
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const-string v1, "(user_set)"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%), nits= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 233
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 235
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    .line 236
    invoke-static {v1}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 237
    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rcmdBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", preBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", preLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 246
    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), unclampedBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 250
    invoke-static {p1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thrmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rbcStrength="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", powerFactor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", physDisp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), logicalId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slowChange="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rampSpeed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wasShortTermModelActive()Z
    .locals 0

    .line 449
    iget-boolean p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    return p0
.end method
