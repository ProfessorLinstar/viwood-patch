.class public Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
.super Ljava/lang/Object;
.source "MagnificationThumbnail.java"


# instance fields
.field public final mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFadingIn:Z

.field public mThumbnailAnimator:Landroid/animation/ObjectAnimator;

.field public mThumbnailHeight:I

.field public mThumbnailLayout:Landroid/widget/FrameLayout;

.field public mThumbnailView:Landroid/view/View;

.field public mThumbnailWidth:I

.field public mVisible:Z

.field public mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$1nWNX5bVLPaEfrFIFFmnm-_LZNY(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->hideThumbnailMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$I-4gBgrQ0cM2UVSC7KLnPPkal38(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->createThumbnailLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$L2CEXki1l_vjX--KmHCsZbLoBH8(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;FFF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->lambda$updateThumbnail$1(FFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$vF66b_YC5QttXZZCbw93bIkfI4A(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Landroid/graphics/Rect;FFF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->lambda$setThumbnailBounds$0(Landroid/graphics/Rect;FFF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmVisible(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)Landroid/view/WindowManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmVisible(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 78
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 80
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 83
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 84
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 85
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final animateThumbnail(Z)V
    .locals 5

    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    if-ne p1, v1, :cond_1

    return-void

    .line 186
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    if-eqz p1, :cond_2

    .line 188
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-nez v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 199
    :goto_0
    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 196
    const-string v2, "alpha"

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_5
    const-wide/16 v1, 0x3e8

    .line 201
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 305
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x18

    const/4 v5, -0x2

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7eb

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 p0, 0x1

    .line 312
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const/16 p0, 0x53

    .line 313
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method public final createThumbnailLayout()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090174

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    const v1, 0x10201c3

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    return-void
.end method

.method public final getMagnificationThumbnailPadding(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 319
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 320
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050016

    .line 321
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 322
    iput p0, p1, Landroid/graphics/Point;->x:I

    .line 323
    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public hideThumbnail()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideThumbnailMainThread()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->animateThumbnail(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$setThumbnailBounds$0(Landroid/graphics/Rect;FFF)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->refreshBackgroundBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnailMainThread(FFF)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$updateThumbnail$1(FFF)V
    .locals 0

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnailMainThread(FFF)V

    return-void
.end method

.method public final refreshBackgroundBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 116
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 118
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->getMagnificationThumbnailPadding(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 121
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 122
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 123
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 126
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 128
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setThumbnailBounds(Landroid/graphics/Rect;FFF)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Landroid/graphics/Rect;FFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showThumbnail()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->animateThumbnail(Z)V

    return-void
.end method

.method public updateThumbnail(FFF)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;FFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateThumbnailMainThread(FFF)V
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->showThumbnail()V

    .line 273
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 274
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 276
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 279
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    if-lez p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    const v0, 0x3e124925

    mul-float/2addr p2, v0

    .line 286
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    add-float/2addr v1, p1

    sub-float/2addr p2, v1

    mul-float/2addr p3, v0

    .line 287
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    sub-float/2addr p3, v0

    .line 299
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 300
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
