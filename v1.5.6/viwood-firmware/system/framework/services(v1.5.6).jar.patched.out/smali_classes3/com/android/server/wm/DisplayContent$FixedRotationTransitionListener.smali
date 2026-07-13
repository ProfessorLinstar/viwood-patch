.class public Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayContent.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .locals 0

    .line 6892
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 6893
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 1

    .line 6917
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6921
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6925
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    if-nez p0, :cond_1

    .line 6926
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    return-void

    .line 6927
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-nez p0, :cond_6

    .line 6928
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform()V

    return-void

    .line 6932
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 6936
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6937
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasAnimatingFixedRotationTransition()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 6944
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 6947
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    :goto_0
    return-void

    .line 6953
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    return-void
.end method

.method public shouldDeferRotation()Z
    .locals 3

    .line 6902
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6903
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasFixedRotationTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6904
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmFixedRotationLaunchingApp(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 6907
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6912
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v1
.end method
