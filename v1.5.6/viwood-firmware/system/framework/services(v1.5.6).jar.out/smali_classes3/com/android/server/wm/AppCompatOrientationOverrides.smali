.class public Lcom/android/server/wm/AppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "AppCompatOrientationOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

.field public final mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;


# direct methods
.method public static synthetic $r8$lambda$Wa-GLtYJmEGTkRKIFl9k0PzylQs(Lcom/android/server/wm/AppCompatOrientationOverrides;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatCameraOverrides;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 77
    iput-object p4, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 78
    new-instance p4, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p4, p1, v0}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/LongSupplier;)V

    iput-object p4, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 80
    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    .line 82
    const-string p2, "android.window.PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 85
    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 88
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 90
    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatOrientationOverrides;)V

    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public getIsRelaunchingAfterRequestedOrientationChanged()Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->-$$Nest$fgetmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)Z

    move-result p0

    return p0
.end method

.method public getSetOrientationRequestCounter()I
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->-$$Nest$fgetmSetOrientationRequestCounter(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)I

    move-result p0

    return p0
.end method

.method public isAllowOrientationOverrideOptOut()Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    return p0
.end method

.method public final isCompatChangeEnabled(J)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    return p0
.end method

.method public isOverrideRespectRequestedOrientationEnabled()Z
    .locals 2

    .line 107
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xe1566d4

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$new$0()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRelaunchingAfterRequestedOrientationChanged(Z)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->-$$Nest$fputmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;Z)V

    return-void
.end method

.method public shouldEnableIgnoreOrientationRequest()Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-wide/32 v1, 0xf2d5f32

    .line 103
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/AppCompatOrientationOverrides;->isCompatChangeEnabled(J)Z

    move-result p0

    .line 102
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOverrideAndProperty(Z)Z

    move-result p0

    return p0
.end method

.method public shouldIgnoreOrientationRequestLoop()Z
    .locals 2

    const-wide/32 v0, 0x104d6bf7

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides;->isCompatChangeEnabled(J)Z

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->updateOrientationRequestLoopState()V

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->shouldIgnoreRequestInLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public shouldRespectRequestedOrientationDueToOverride()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->isOverrideRespectRequestedOrientationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseDisplayLandscapeNaturalOrientation()Z
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xf4156bc

    .line 167
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 166
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method
