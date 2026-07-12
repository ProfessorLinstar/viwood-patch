.class public Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# instance fields
.field public final mAnimationCallback:Ljava/lang/Runnable;

.field public mAwaitingCallback:Z

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFirst:Lcom/android/server/display/RampAnimator;

.field public mListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mSecond:Lcom/android/server/display/RampAnimator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Landroid/view/Choreographer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFirst(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecond(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAwaitingCallback(Lcom/android/server/display/RampAnimator$DualRampAnimator;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 221
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 222
    new-instance v0, Lcom/android/server/display/RampAnimator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 223
    new-instance p2, Lcom/android/server/display/RampAnimator;

    invoke-direct {p2, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    return-void
.end method


# virtual methods
.method public animateTo(FFFZ)Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFZ)Z

    move-result p1

    .line 255
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFZ)Z

    move-result p2

    or-int/2addr p1, p2

    .line 257
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p2

    .line 259
    iget-boolean p3, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    if-eq p2, p3, :cond_1

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    .line 261
    iput-boolean p4, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->postAnimationCallback()V

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 264
    iget-object p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p3, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 266
    iput-boolean p2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    :cond_1
    return p1
.end method

.method public isAnimating()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final postAnimationCallback()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationTimeLimits(JJ)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 233
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
