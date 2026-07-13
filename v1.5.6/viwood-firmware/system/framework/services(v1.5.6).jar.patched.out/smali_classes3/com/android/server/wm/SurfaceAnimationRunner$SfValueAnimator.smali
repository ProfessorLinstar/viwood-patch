.class public Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "SurfaceAnimationRunner.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    .line 312
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->-$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;

    move-result-object p0

    return-object p0
.end method
