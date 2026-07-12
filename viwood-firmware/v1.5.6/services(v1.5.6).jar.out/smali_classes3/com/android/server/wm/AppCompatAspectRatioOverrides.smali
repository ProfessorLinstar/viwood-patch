.class public Lcom/android/server/wm/AppCompatAspectRatioOverrides;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public final mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 89
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 90
    iput-object p4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 91
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;-><init>(Lcom/android/server/wm/AppCompatAspectRatioOverrides-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 92
    iput-object p5, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 93
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 95
    const-string p4, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p4, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 98
    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 101
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public getAllowUserAspectRatioOverridePropertyValue()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getDefaultMinAspectRatio()F
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 308
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    move-result p0

    return p0

    .line 309
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getDefaultMinAspectRatioForUnresizableApps()F
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 295
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 296
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 298
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public getDisplaySizeMinAspectRatio()F
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    .line 260
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 261
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldUseSplitScreenAspectRatio(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getSplitScreenAspectRatio()F
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x105017e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    .line 227
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 229
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 230
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 232
    :cond_1
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 235
    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getUserMinAspectRatio()F
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/high16 p0, 0x3fc00000    # 1.5f

    return p0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected user min aspect ratio override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->-$$Nest$fgetmUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const p0, 0x3fe38e39

    return p0

    :cond_2
    const p0, 0x3faaaaab

    return p0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    move-result p0

    return p0

    .line 203
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0
.end method

.method public getUserMinAspectRatioOverrideCode()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->-$$Nest$mgetUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0
.end method

.method public hasFullscreenOverride()Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldIgnoreActivitySizeRestrictionsForDisplay()Z

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

.method public isSystemOverrideToFullscreenEnabled()Z
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0x1286aeb5

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUserFullscreenOverrideEnabled()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldApplyUserFullscreenOverride()Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isUserFullscreenOverrideEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public shouldApplyUserMinAspectRatioOverride()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public shouldEnableUserAspectRatioSettings()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 180
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldIgnoreActivitySizeRestrictionsForDisplay()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldOverrideMinAspectRatio()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xa5faf64

    .line 119
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 118
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method

.method public final shouldUseSplitScreenAspectRatio(Landroid/content/res/Configuration;)Z
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v1, 0x0

    .line 266
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    .line 267
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 268
    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 270
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 271
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v3

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 273
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v4

    .line 272
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    .line 274
    iget-object v5, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 275
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v5

    if-eqz v0, :cond_1

    if-nez p1, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 278
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 279
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public userPreferenceCompatibleWithNonResizability()Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
