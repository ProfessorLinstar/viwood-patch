.class public Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;
.super Landroid/widget/LinearLayout;
.source "FocusEventDebugView.java"


# instance fields
.field public final mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method public static synthetic $r8$lambda$XW_ZGzYK77nQqvhUBkBbx8EKOpE(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->cleanUpPressedKeyViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 429
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x1

    .line 433
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 435
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v2, 0x2

    .line 436
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v2, 0x3

    .line 437
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const-wide/16 v2, 0x64

    .line 439
    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 440
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 442
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    .line 444
    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    .line 446
    :cond_0
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method


# virtual methods
.method public final cleanUpPressedKeyViews()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 472
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 473
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 474
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    .line 477
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 482
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public handleKeyPressed(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V
    .locals 2

    .line 451
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public handleKeyRelease(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V
    .locals 2

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p1, v0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    .line 461
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 462
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 464
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 465
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public handleKeyRepeat(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;)V
    .locals 0

    .line 0
    return-void
.end method
