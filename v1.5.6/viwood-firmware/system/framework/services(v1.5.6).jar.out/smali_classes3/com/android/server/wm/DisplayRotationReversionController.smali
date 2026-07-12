.class public final Lcom/android/server/wm/DisplayRotationReversionController;
.super Ljava/lang/Object;
.source "DisplayRotationReversionController.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSlots:[Z

.field public mUserRotationOverridden:I


# direct methods
.method public static synthetic $r8$lambda$04Xwpe7cEnpHVvU4iW5V-c1GVtU(Lcom/android/server/wm/Task;)Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public beforeOverrideApplied(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->maybeSaveUserRotation()V

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method public getSlotsCopy()[Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isRotationReversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnyOverrideActive()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isOverrideActive(I)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isRotationReversionEnabled()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->hasDisplayRotationCompatPolicy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 65
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isTopFullscreenActivityNoSensor()Z
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;-><init>()V

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final maybeSaveUserRotation()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isAnyOverrideActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    :cond_0
    return-void
.end method

.method public revertOverride(I)Z
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 109
    :cond_0
    aput-boolean v2, v0, p1

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isAnyOverrideActive()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 111
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x3ba112cfb9fbc912L    # -2.2819742391242918E21

    const/4 p1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    return v2

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    .line 117
    iget v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 119
    iget v1, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    const-string v2, "DisplayRotationReversionController#revertOverride"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    .line 121
    iput v3, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mUserRotationOverridden:I

    return v0

    :cond_3
    return v2
.end method

.method public updateForNoSensorOverride()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isTopFullscreenActivityNoSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x6070f7c12293c0ccL

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationReversionController;->isTopFullscreenActivityNoSensor()Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x1c981d3924f8c0d6L    # -7.211543063252226E170

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 93
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    :cond_3
    return-void
.end method
