.class public Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;
.super Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.source "NavBarFadeAnimationController.java"


# instance fields
.field public mParent:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/server/wm/NavBarFadeAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 126
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    .line 127
    iput-object p6, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/NavBarFadeAnimationController;->-$$Nest$fgetmPlaySequentially(Lcom/android/server/wm/NavBarFadeAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean p1, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    if-nez p1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 134
    iget-object p3, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->mParent:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const p0, 0x7fffffff

    .line 138
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method
