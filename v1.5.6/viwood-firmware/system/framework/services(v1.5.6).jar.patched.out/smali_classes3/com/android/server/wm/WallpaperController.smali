.class public Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# instance fields
.field public mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

.field public mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

.field public mLargestDisplaySize:Landroid/graphics/Point;

.field public mLastFrozen:Z

.field public mLastWallpaperTimeoutTime:J

.field public mLastWallpaperZoomOut:F

.field public mMaxWallpaperScale:F

.field public mMinWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldOffsetWallpaperCenter:Z

.field public mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$Foys_2tpRO31MIGZTpXv0yRJ2NM(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hx8XkBssStE3IyUBABr4kxamAjk(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mGgSC2tR8xiTbib_tZYb3IIU2Ig(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 85
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 111
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 113
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 115
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 123
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 126
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 198
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 206
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 207
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 208
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050121

    .line 210
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    const p2, 0x1050120

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const p2, 0x1110204

    .line 212
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    return-void
.end method


# virtual methods
.method public addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustWallpaperWindows()V
    .locals 9

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 852
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 861
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_1

    .line 862
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 863
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 865
    :cond_1
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_2

    .line 866
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 867
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 869
    :cond_2
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3

    .line 870
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 872
    :cond_3
    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v6, :cond_4

    .line 873
    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v0, :cond_6

    .line 879
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v3

    .line 882
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v4, :cond_7

    .line 883
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v4

    goto :goto_2

    .line 884
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v4

    .line 881
    :goto_2
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(ZZ)V

    .line 886
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    :goto_3
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x66cfee6d654a358fL    # 1.736699569115551E187

    const/16 v6, 0x3d

    invoke-static {v2, v4, v5, v6, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    if-eqz v3, :cond_b

    .line 893
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v0, v2, :cond_b

    .line 894
    iput-boolean v2, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    if-eqz v2, :cond_a

    .line 896
    const-string v0, "android.wallpaper.freeze"

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_a
    const-string v0, "android.wallpaper.unfreeze"

    goto :goto_4

    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 895
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto :goto_6

    :cond_b
    move-object v2, p0

    .line 900
    :goto_6
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_c

    iget-object p0, v2, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v2, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x775400407b09c9a8L    # -6.783856069054106E-267

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .locals 1

    .line 993
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 997
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-nez p0, :cond_1

    .line 998
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_0

    .line 999
    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    .line 1005
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_2

    .line 1006
    const-string p0, "No visible wallpaper to screenshot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public clearLastWallpaperTimeoutTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 677
    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    return-void
.end method

.method public collectTopWallpapers(Lcom/android/server/wm/Transition;)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 746
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v0, :cond_2

    .line 748
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 750
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_3
    return-void
.end method

.method public final computeLastWallpaperZoomOut()V
    .locals 2

    const/4 v0, 0x0

    .line 1076
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1086
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1087
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperZoomOut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 1095
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    const-string v3, "mWallpaperX"

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1097
    const-string v2, "mWallpaperY"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1098
    const-string v2, "mWallpaperXStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1099
    const-string v2, "mWallpaperYStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1100
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    int-to-float v2, v2

    const-string v3, "mWallpaperDisplayOffsetX"

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1101
    iget v1, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    int-to-float v1, v1

    const-string v2, "mWallpaperDisplayOffsetY"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_0

    .line 1107
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NA"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final findWallpaperTarget()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 699
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v2, 0x5

    .line 700
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->findWallpapers()V

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v1, :cond_2

    .line 716
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result p0

    goto :goto_0

    .line 717
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    .line 715
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 714
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_3
    return-void
.end method

.method public final findWallpapers()V
    .locals 6

    .line 722
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 723
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 724
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->canShowWhenLocked()Z

    move-result v2

    .line 725
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 726
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 727
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    .line 728
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_1

    .line 729
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopShowWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 730
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_2

    .line 731
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopHideWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 516
    new-instance v2, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-object v2
.end method

.method public getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 671
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 672
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 670
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    .line 673
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1056
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 1057
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 1058
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1059
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 11

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 300
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 301
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, v10, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 306
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    .line 756
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez p0, :cond_0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p0, :cond_0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperVisible()Z
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)Z
    .locals 6

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v2, "Win "

    const-string v3, "WindowManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": isOnScreen="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDrawState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_3

    .line 143
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v4

    :goto_1
    iput-boolean v5, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    goto/16 :goto_2

    .line 145
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 146
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found keyguard as wallpaper target: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v1

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isInAodAppearTransition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found aod transition wallpaper target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v4

    .line 163
    :cond_9
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found back animation wallpaper target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v4

    .line 167
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 169
    :goto_3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found wallpaper target: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setIsWallpaperTargetForLetterbox(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 175
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": token animating, looking behind."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_e
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result p0

    if-eqz p0, :cond_f

    return v1

    :cond_f
    return v4

    :cond_10
    return v1
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 199
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    :cond_0
    return-void
.end method

.method public mirrorWallpaperSurface()Landroid/view/SurfaceControl;
    .locals 0

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1050
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onWallpaperTokenReordered()V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 987
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public processWallpaperDrawPendingTimeout()Z
    .locals 3

    .line 905
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 906
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 907
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLargestDisplay(Landroid/view/Display;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    :cond_0
    return-void
.end method

.method public screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 3

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1020
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 1024
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v2, 0x0

    .line 1025
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1028
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1027
    invoke-static {v0, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1031
    const-string p0, "WindowManager"

    const-string v0, "Failed to screenshot wallpaper"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1035
    :cond_1
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    .line 1034
    invoke-static {v0, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 9

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    .line 614
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendWindowWallpaperCommandUnchecked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    move-object p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    move p6, p7

    .line 606
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method public setMinWallpaperScale(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    return-void
.end method

.method public setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .locals 1

    .line 589
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_0

    .line 590
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    const/4 p2, 0x0

    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_0
    return-void
.end method

.method public setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .locals 1

    .line 578
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 580
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 581
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 582
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1

    .line 596
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 597
    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 598
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 599
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1

    .line 568
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 569
    :cond_1
    :goto_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 570
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 571
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 572
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 573
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 312
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 314
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    int-to-float v6, v4

    div-float v7, v5, v6

    .line 316
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 318
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    .line 358
    new-instance v4, Landroid/graphics/Point;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-direct {v4, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 360
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperWindowToken;->getCropHints()Landroid/util/SparseArray;

    move-result-object v9

    .line 361
    iget v10, v4, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_1

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v10

    .line 363
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v11

    .line 362
    invoke-static {v8, v10, v4, v9, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_1

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 364
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 365
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v8, v8

    int-to-float v9, v9

    div-float v10, v8, v9

    cmpl-float v10, v10, v7

    const/4 v11, 0x0

    if-ltz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    move v10, v11

    .line 372
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_3

    move v6, v14

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_4

    div-float/2addr v6, v9

    .line 373
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v6, v5

    goto :goto_3

    :cond_4
    div-float/2addr v5, v8

    .line 374
    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float v6, v5, v6

    :goto_3
    if-eqz v10, :cond_5

    mul-float v5, v9, v7

    goto :goto_4

    :cond_5
    move v5, v8

    :goto_4
    if-eqz v10, :cond_6

    move v7, v9

    goto :goto_5

    :cond_6
    div-float v7, v8, v7

    .line 381
    :goto_5
    iget v10, v4, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    sub-float v13, v6, v14

    mul-float v15, v13, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v10, v15

    .line 382
    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    mul-float/2addr v13, v7

    div-float v13, v13, v16

    float-to-int v13, v13

    add-int/2addr v4, v13

    sub-float/2addr v8, v5

    .line 385
    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v5

    float-to-int v5, v8

    sub-float/2addr v9, v7

    .line 386
    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v7

    float-to-int v7, v9

    .line 410
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    move v8, v14

    goto :goto_6

    :cond_7
    move v8, v9

    .line 415
    :goto_6
    iget v13, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    cmpl-float v15, v13, v9

    if-ltz v15, :cond_8

    move v8, v13

    .line 418
    :cond_8
    iget v13, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    cmpl-float v15, v13, v9

    const/high16 v16, -0x40800000    # -1.0f

    if-ltz v15, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v13, v16

    .line 424
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v15

    .line 423
    invoke-virtual {v0, v5, v2, v15}, Lcom/android/server/wm/WallpaperController;->getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I

    move-result v2

    sub-int/2addr v5, v2

    const/high16 v15, 0x3f000000    # 0.5f

    if-lez v5, :cond_a

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v15

    float-to-int v5, v5

    neg-int v5, v5

    :goto_8
    move/from16 v17, v9

    goto :goto_9

    :cond_a
    move v5, v11

    goto :goto_8

    .line 427
    :goto_9
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    const/16 v18, 0x1

    const/high16 v12, -0x80000000

    if-eq v9, v12, :cond_b

    add-int/2addr v5, v9

    goto :goto_a

    .line 431
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v9

    if-nez v9, :cond_c

    sub-int/2addr v5, v2

    :cond_c
    :goto_a
    int-to-float v2, v5

    int-to-float v5, v10

    .line 436
    iget v9, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 438
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_e

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v5, v5, v13

    if-eqz v5, :cond_d

    goto :goto_b

    :cond_d
    move v5, v11

    goto :goto_c

    .line 439
    :cond_e
    :goto_b
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 440
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v5, v18

    .line 444
    :goto_c
    iget v8, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    cmpl-float v9, v8, v17

    if-ltz v9, :cond_f

    goto :goto_d

    :cond_f
    move v8, v15

    .line 445
    :goto_d
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    cmpl-float v10, v9, v17

    if-ltz v10, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v9, v16

    :goto_e
    if-lez v7, :cond_11

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v7, v15

    float-to-int v7, v7

    neg-int v7, v7

    goto :goto_f

    :cond_11
    move v7, v11

    .line 447
    :goto_f
    iget v3, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    if-eq v3, v12, :cond_12

    add-int/2addr v7, v3

    :cond_12
    int-to-float v3, v7

    int-to-float v4, v4

    .line 450
    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 452
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_13

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_14

    .line 453
    :cond_13
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 454
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v5, v18

    .line 458
    :cond_14
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v7, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_15

    .line 459
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move/from16 v5, v18

    .line 462
    :cond_15
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v4, :cond_16

    .line 463
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v14

    :cond_16
    mul-float/2addr v14, v6

    .line 465
    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v2

    if-eqz v5, :cond_1d

    .line 467
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1d

    .line 470
    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_17

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report new wp offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " zoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz p2, :cond_18

    .line 475
    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 477
    :cond_18
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move/from16 v25, p2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    invoke-interface/range {v19 .. v25}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    if-eqz p2, :cond_1d

    .line 483
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1d

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 485
    iget-wide v5, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v5, v5, v3

    const/4 v6, 0x0

    if-gez v5, :cond_1c

    const-wide/16 v7, 0x96

    .line 488
    :try_start_1
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v5, v5, v18

    if-eqz v5, :cond_19

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x5f25f808633bc7f4L    # -1.988085530651E-150

    invoke-static {v5, v9, v10, v11, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 489
    :cond_19
    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    :catch_0
    :try_start_2
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v5, v5, v18

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x52cdf6d55098c638L    # -5.533716568926851E-91

    invoke-static {v5, v9, v10, v11, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1a
    add-long/2addr v7, v3

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gez v5, :cond_1c

    .line 494
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v5, v5, v18

    if-eqz v5, :cond_1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v7, 0x3a45415bfc1334bdL    # 5.365594543687691E-28

    invoke-static {v5, v7, v8, v11, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 497
    :cond_1b
    iput-wide v3, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 500
    :cond_1c
    iput-object v6, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1d
    return v2
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 624
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 625
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 632
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 635
    :cond_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2

    .line 636
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_0

    .line 637
    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    .line 638
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 640
    :cond_3
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    .line 641
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_1

    .line 642
    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_5

    .line 643
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 645
    :cond_5
    :goto_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_6

    .line 646
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 647
    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_7

    .line 648
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 650
    :cond_7
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_8

    .line 651
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 652
    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_9

    .line 653
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 655
    :cond_9
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_a

    .line 656
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_4

    .line 657
    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_b

    .line 658
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 660
    :cond_b
    :goto_4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_c

    .line 661
    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    goto :goto_5

    .line 662
    :cond_c
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_d

    .line 663
    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 665
    :cond_d
    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    return-void
.end method

.method public final updateWallpaperTokens(ZZ)V
    .locals 6

    .line 836
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x39249a0d81e31e2L

    const/16 v5, 0xf

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 840
    :cond_1
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p2

    .line 841
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    .line 842
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    if-eqz p1, :cond_2

    if-ne v2, p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 843
    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 12

    .line 763
    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 765
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    .line 781
    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, v9, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 784
    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 786
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 787
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 790
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_2
    if-eqz v0, :cond_f

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 798
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    .line 799
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    .line 800
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v10, v11, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    if-eqz v6, :cond_f

    if-nez v5, :cond_5

    goto/16 :goto_3

    .line 807
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    .line 811
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_7

    .line 812
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v4

    goto :goto_0

    :cond_7
    move v5, v3

    .line 813
    :goto_0
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_8

    .line 814
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    goto :goto_1

    :cond_8
    move v6, v3

    .line 816
    :goto_1
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v7, v10, v8, v11}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v10, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    const/16 v8, 0xcc

    invoke-static {v9, v10, v11, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 820
    :cond_9
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    .line 823
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x3c4cd0cffd3dc73cL    # -1.3823763990325996E18

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 826
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 829
    :cond_b
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return-void

    .line 768
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_d

    goto :goto_3

    .line 773
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p1

    if-nez p1, :cond_f

    .line 774
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_e

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    invoke-static {p1, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 775
    :cond_e
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 776
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_f
    :goto_3
    return-void
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 682
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 683
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 684
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 690
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 691
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 692
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public wallpaperTransitionReady()Z
    .locals 8

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x27

    const/4 v3, 0x0

    if-ltz v0, :cond_4

    .line 924
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 925
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 928
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v0, :cond_1

    .line 933
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 934
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 936
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    .line 935
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 940
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x4af7cbdd60b2c42bL    # -3.158724139617855E-53

    invoke-static {v0, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v1, :cond_5

    .line 947
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 948
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_5
    return v4
.end method

.method public final zoomOutToScale(F)F
    .locals 2

    .line 1082
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    iget p0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, p0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
