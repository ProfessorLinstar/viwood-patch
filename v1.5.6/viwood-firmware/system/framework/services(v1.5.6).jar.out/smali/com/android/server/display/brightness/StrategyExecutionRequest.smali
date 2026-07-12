.class public final Lcom/android/server/display/brightness/StrategyExecutionRequest;
.super Ljava/lang/Object;
.source "StrategyExecutionRequest.java"


# instance fields
.field public final mCurrentScreenBrightness:F

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mIsStylusBeingUsed:Z

.field public mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 41
    iput p2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 42
    iput-boolean p3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 43
    iput-boolean p4, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 69
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 70
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isUserSetBrightnessChanged()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    .line 71
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isStylusBeingUsed()Z

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getCurrentScreenBrightness()F
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    return p0
.end method

.method public getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isStylusBeingUsed()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public isUserSetBrightnessChanged()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    return p0
.end method
