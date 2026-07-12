.class public Lcom/android/server/display/RampAnimator$DualRampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fgetmFirst(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    .line 295
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fgetmSecond(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/RampAnimator;->performNextAnimationStep(J)V

    .line 296
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 302
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->-$$Nest$fputmAwaitingCallback(Lcom/android/server/display/RampAnimator$DualRampAnimator;Z)V

    return-void
.end method
