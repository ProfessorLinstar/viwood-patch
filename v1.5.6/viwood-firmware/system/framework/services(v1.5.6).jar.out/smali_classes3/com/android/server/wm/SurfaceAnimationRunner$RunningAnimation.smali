.class public final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# instance fields
.field public mAnim:Landroid/animation/ValueAnimator;

.field public final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field public mCancelled:Z

.field public final mFinishCallback:Ljava/lang/Runnable;

.field public final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCancelled(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 296
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 297
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method
