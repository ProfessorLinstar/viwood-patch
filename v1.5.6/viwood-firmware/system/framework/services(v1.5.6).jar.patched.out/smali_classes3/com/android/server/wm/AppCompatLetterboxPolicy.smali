.class public Lcom/android/server/wm/AppCompatLetterboxPolicy;
.super Ljava/lang/Object;
.source "AppCompatLetterboxPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

.field public mIsEligibleForFixedOrientationLetterbox:Z

.field public mLastShouldShowLetterboxUi:Z

.field public final mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$VIsnEAcb4wDCXFZKuW_zUlabbsk(Lcom/android/server/wm/AppCompatLetterboxPolicy;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->ieEligibleForRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smshouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mTmpRect:Landroid/graphics/Rect;

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 78
    new-instance v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;Lcom/android/server/wm/AppCompatLetterboxPolicy-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    .line 80
    new-instance v0, Lcom/android/server/wm/AppCompatRoundedCorners;

    new-instance v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/AppCompatRoundedCorners;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method

.method public static shouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 341
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz p0, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "areBoundsLetterboxed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isLetterboxRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 263
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 264
    invoke-static {v2, v0}, Lcom/android/server/wm/AppCompatUtils;->getLetterboxReasonString(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 267
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  letterboxBackgroundColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v3

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  letterboxBackgroundType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  letterboxCornerRadius="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isLetterboxWallpaperBlurSupported="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxWallpaperBlurSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxBackgroundWallpaperDarkScrimAlpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxBackgroundWallpaperBlurRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxDetails()Lcom/android/internal/statusbar/LetterboxDetails;
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 159
    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {v4, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->getLetterboxOuterBounds(Landroid/graphics/Rect;)V

    .line 162
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    new-instance p0, Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-direct {p0, v1, v3, v0}, Lcom/android/internal/statusbar/LetterboxDetails;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object p0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result p0

    return p0
.end method

.method public final ieEligibleForRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isFreeformActivityMatchParentAppBoundsHeight()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEligibleForLetterboxEducation()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsEducationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mIsEligibleForFixedOrientationLetterbox:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 147
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFreeformActivityMatchParentAppBoundsHeight()Z
    .locals 5

    .line 315
    sget-object v0, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 322
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v3, v4}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v2, p0

    .line 330
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    if-gt v2, p0, :cond_3

    return p0

    :cond_3
    return v1
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->isRunning()Z

    move-result p0

    return p0
.end method

.method public onMovedToDisplay(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->onMovedToDisplay(I)V

    return-void
.end method

.method public resetFixedOrientationLetterboxEligibility()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mIsEligibleForFixedOrientationLetterbox:Z

    return-void
.end method

.method public resolveFixedOrientationLetterboxEligibility(II)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 124
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mIsEligibleForFixedOrientationLetterbox:Z

    return p1
.end method

.method public shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOrientationOverrides;->getIsRelaunchingAfterRequestedOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    return p0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 220
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 221
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 228
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    return p1
.end method

.method public start(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 200
    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->updateRoundedCornersIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void

    .line 208
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->hide()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    invoke-interface {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->stop()V

    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicyState;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 195
    invoke-interface {v0, p1, v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicyState;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 286
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 294
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    move-result p1

    if-gtz p1, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 297
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    move-result p1

    if-lez p1, :cond_1

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxWallpaperBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 299
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->checkWallpaperBackgroundForLetterbox(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 300
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_3
    return-void
.end method
