.class public Lcom/android/server/wm/NavBarFadeAnimationController;
.super Lcom/android/server/wm/FadeAnimationController;
.source "NavBarFadeAnimationController.java"


# static fields
.field public static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public mFadeInAnimation:Landroid/view/animation/Animation;

.field public mFadeInParent:Landroid/view/SurfaceControl;

.field public mFadeOutAnimation:Landroid/view/animation/Animation;

.field public mFadeOutParent:Landroid/view/SurfaceControl;

.field public final mNavigationBar:Lcom/android/server/wm/WindowState;

.field public mPlaySequentially:Z


# direct methods
.method public static synthetic $r8$lambda$KSYs3yqTT0Il8dxY7XZLFA2UAz8(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController;->lambda$fadeWindowToken$0(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPlaySequentially(Lcom/android/server/wm/NavBarFadeAnimationController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/FadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mPlaySequentially:Z

    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 50
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x10a

    .line 51
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    iget-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x85

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    sget-object p1, Lcom/android/server/wm/NavBarFadeAnimationController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 7

    .line 72
    new-instance v0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;

    .line 73
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInParent:Landroid/view/SurfaceControl;

    :goto_0
    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v1

    move-object v1, p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutParent:Landroid/view/SurfaceControl;

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl;)V

    return-object v0
.end method

.method public fadeWindowToken(Z)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V

    if-nez v0, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AsyncRotationController;->hasFadeOperation(Lcom/android/server/wm/WindowToken;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AsyncRotationController;->setOnShowRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeInAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mFadeOutAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public final synthetic lambda$fadeWindowToken$0(Z)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V

    return-void
.end method
