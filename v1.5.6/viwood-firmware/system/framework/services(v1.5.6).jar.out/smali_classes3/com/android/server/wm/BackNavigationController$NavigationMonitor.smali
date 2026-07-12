.class Lcom/android/server/wm/BackNavigationController$NavigationMonitor;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mNavigatingWindow:Lcom/android/server/wm/WindowState;

.field public mObserver:Landroid/os/RemoteCallback;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public static bridge synthetic -$$Nest$mcancelBackNavigating(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFocusWindowChanged(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->onFocusWindowChanged(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance p1, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor$1;-><init>(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final atSameDisplay(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 831
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    if-eqz p1, :cond_2

    .line 835
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelBackNavigating(Ljava/lang/String;)V
    .locals 1

    .line 839
    invoke-static {p1}, Lcom/android/server/wm/EventLogTags;->writeWmBackNaviCanceled(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 841
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$mcanCancelAnimations(Lcom/android/server/wm/BackNavigationController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 844
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 846
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$mcancelPendingAnimation(Lcom/android/server/wm/BackNavigationController;)V

    return-void
.end method

.method public isMonitorAnimationOrTransition()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmComposed(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController;->-$$Nest$fgetmAnimationHandler(Lcom/android/server/wm/BackNavigationController;)Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$fgetmWaitTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isMonitorForRemote()Z
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 822
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 826
    const-string v0, "TouchGestureTransferred"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 827
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onFocusWindowChanged(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->atSameDisplay(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorForRemote()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_2

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_2

    .line 812
    :cond_1
    const-string p1, "focusWindowChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startMonitor(Lcom/android/server/wm/WindowState;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 764
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 766
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 769
    :catch_0
    const-string p0, "CoreBackPreview"

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMonitorForRemote()V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Landroid/os/RemoteCallback;->getInterface()Landroid/os/IRemoteCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 778
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    return-void
.end method

.method public stopMonitorTransition()V
    .locals 1

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    return-void
.end method
