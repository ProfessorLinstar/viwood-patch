.class public Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# instance fields
.field public mParentAppBoundsOverride:Landroid/graphics/Rect;

.field public mParentBoundsOverride:Landroid/graphics/Rect;

.field public mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mTmpOverrideConfigOrientation:I

.field public mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mUseOverrideInsetsForConfig:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetTmpOverrides()V
    .locals 1

    const/4 v0, 0x0

    .line 2409
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 2410
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    const/4 v0, 0x0

    .line 2411
    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    return-void
.end method

.method public resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V
    .locals 3

    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 2375
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2376
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    .line 2377
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2378
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 2379
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2380
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 2384
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lt p1, p2, :cond_2

    move v1, v2

    .line 2385
    :cond_2
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_7

    .line 2386
    :cond_3
    iget-boolean p4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz p4, :cond_a

    if-eqz p1, :cond_a

    iget-object p4, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2387
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p4

    invoke-static {p4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p4

    if-nez p4, :cond_a

    .line 2391
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_4

    if-nez p3, :cond_4

    .line 2393
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p2

    :cond_4
    if-eq p2, v2, :cond_6

    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move p3, v2

    :goto_3
    if-eqz p3, :cond_7

    .line 2396
    iget p4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_4

    :cond_7
    iget p4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_4
    if-eqz p3, :cond_8

    .line 2397
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_5

    :cond_8
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2398
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    .line 2399
    invoke-virtual {p1, p2, p4, p3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p1

    .line 2400
    iget-object p2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 2401
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p3, p2, :cond_9

    goto :goto_6

    :cond_9
    move v1, v2

    .line 2402
    :goto_6
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2403
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    .line 2405
    :cond_a
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method
