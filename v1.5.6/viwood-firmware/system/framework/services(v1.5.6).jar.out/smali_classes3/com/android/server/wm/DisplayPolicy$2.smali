.class public Lcom/android/server/wm/DisplayPolicy$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayPolicy.java"


# instance fields
.field public mAppTransitionCancelled:Ljava/lang/Runnable;

.field public mAppTransitionFinished:Ljava/lang/Runnable;

.field public mAppTransitionPending:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic val$displayId:I


# direct methods
.method public static synthetic $r8$lambda$CXhKWmWGy4Pshrr9kG2TtfP0hiw(Lcom/android/server/wm/DisplayPolicy$2;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy$2;->lambda$$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LNgePaZheD4TlU5IrmvA1klqhxA(Lcom/android/server/wm/DisplayPolicy$2;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy$2;->lambda$$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oCBJp-Ybw1Pg_ZtEZnsleQENV8(Lcom/android/server/wm/DisplayPolicy$2;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy$2;->lambda$onAppTransitionStartingLocked$3(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qveQftqQbx73evHdRr8UoP4AtdU(Lcom/android/server/wm/DisplayPolicy$2;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy$2;->lambda$$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;II)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$2;->val$displayId:I

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    .line 678
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    .line 685
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    .line 692
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy$2;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$$0(I)V
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 681
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$$1(I)V
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 688
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$$2(I)V
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 695
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onAppTransitionStartingLocked$3(JJ)V
    .locals 7

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 710
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    :cond_0
    return-void
.end method

.method public onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 719
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    .line 724
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionStartingLocked(JJ)I
    .locals 7

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$2;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method
