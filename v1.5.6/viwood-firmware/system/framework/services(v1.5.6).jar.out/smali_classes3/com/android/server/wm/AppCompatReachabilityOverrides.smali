.class public Lcom/android/server/wm/AppCompatReachabilityOverrides;
.super Ljava/lang/Object;
.source "AppCompatReachabilityOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 56
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 57
    iput-object p3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 58
    new-instance p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;-><init>(Lcom/android/server/wm/AppCompatReachabilityOverrides-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    return-void
.end method


# virtual methods
.method public allowHorizontalReachabilityForThinLetterbox()Z
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public allowVerticalReachabilityForThinLetterbox()Z
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFullScreenAndBookModeEnabled()Z

    move-result v0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    move-result p0

    return p0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxHorizontalPositionMultiplier(Z)F

    move-result p0

    return p0
.end method

.method public getLetterboxPositionForHorizontalReachability()I
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFullScreenAndBookModeEnabled()Z

    move-result v0

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxPositionForLogging()I
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 144
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->letterboxHorizontalReachabilityPositionToLetterboxPositionForLogging(I)I

    move-result p0

    return p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->letterboxVerticalReachabilityPositionToLetterboxPositionForLogging(I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public getLetterboxPositionForVerticalReachability()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 127
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v0

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getVerticalMultiplierForReachability(Z)F

    move-result p0

    return p0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxVerticalPositionMultiplier(Z)F

    move-result p0

    return p0
.end method

.method public isDoubleTapEvent()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->-$$Nest$fgetmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;)Z

    move-result p0

    return p0
.end method

.method public isFromDoubleTap()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->isFromDoubleTap()Z

    move-result p0

    return p0
.end method

.method public final isFullScreenAndBookModeEnabled()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsAutomaticReachabilityInBookModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isHorizontalReachabilityEnabled()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public final isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowHorizontalReachabilityForThinLetterbox()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParentAppBoundsOverride()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 279
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TransparentPolicy;->getFirstOpaqueActivity()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;-><init>()V

    .line 280
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 281
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 282
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsHorizontalReachabilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 283
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt p0, v3, :cond_2

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le p0, v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public isHorizontalThinLetterboxed()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getThinLetterboxWidthPx()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 207
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr v2, p0

    .line 206
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-gt p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public isLetterboxDoubleTapEducationEnabled()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

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

.method public isVerticalReachabilityEnabled()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public final isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowVerticalReachabilityForThinLetterbox()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParentAppBoundsOverride()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 310
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TransparentPolicy;->getFirstOpaqueActivity()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;-><init>()V

    .line 311
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 312
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 313
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsVerticalReachabilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 314
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt p0, v3, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le p0, v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public isVerticalThinLetterboxed()Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getThinLetterboxHeightPx()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 190
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v2, p0

    .line 189
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-gt p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final letterboxHorizontalReachabilityPositionToLetterboxPositionForLogging(I)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox horizontal reachability position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public final letterboxVerticalReachabilityPositionToLetterboxPositionForLogging(I)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x6

    return p0

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox vertical reachability position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method public setDoubleTapEvent()V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->-$$Nest$fputmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;Z)V

    return-void
.end method
