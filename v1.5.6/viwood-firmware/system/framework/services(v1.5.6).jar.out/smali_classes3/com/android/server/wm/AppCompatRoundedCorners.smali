.class public Lcom/android/server/wm/AppCompatRoundedCorners;
.super Ljava/lang/Object;
.source "AppCompatRoundedCorners.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mRoundedCornersWindowCondition:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Predicate;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    return-void
.end method

.method public static getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 3

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne p0, v2, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq p0, v2, :cond_2

    :cond_1
    return-object v1

    .line 87
    :cond_2
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 89
    iget p0, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_3

    .line 91
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    :cond_3
    const/4 p0, 0x0

    .line 97
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method public getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .locals 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-ltz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result p0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    const/4 v0, 0x3

    .line 122
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v0

    const/4 v1, 0x2

    .line 123
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result p0

    .line 121
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 126
    :goto_0
    iget p1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :cond_2
    return p0
.end method

.method public final requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 139
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxActivityCornersRounded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateRoundedCornersIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    :goto_0
    return-void
.end method
