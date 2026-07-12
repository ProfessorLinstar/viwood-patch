.class public final Lcom/android/server/display/brightness/StrategySelectionRequest;
.super Ljava/lang/Object;
.source "StrategySelectionRequest.java"


# instance fields
.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mIsStylusBeingUsed:Z

.field public mIsWearBedtimeModeEnabled:Z

.field public mLastUserSetScreenBrightness:F

.field public mTargetDisplayState:I

.field public mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IFZLandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;ZZ)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 54
    iput p2, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 55
    iput p3, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 56
    iput-boolean p4, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 57
    iput-object p5, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 58
    iput-boolean p6, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    .line 59
    iput-boolean p7, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 93
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    .line 97
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    .line 98
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 99
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getLastUserSetScreenBrightness()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    .line 100
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isUserSetBrightnessChanged()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 101
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    .line 102
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isStylusBeingUsed()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    .line 103
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isWearBedtimeModeEnabled()Z

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getDisplayOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-object p0
.end method

.method public getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p0
.end method

.method public getLastUserSetScreenBrightness()F
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    return p0
.end method

.method public getTargetDisplayState()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    return p0
.end method

.method public hashCode()I
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    .line 109
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 108
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isStylusBeingUsed()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public isUserSetBrightnessChanged()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    return p0
.end method

.method public isWearBedtimeModeEnabled()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    return p0
.end method
