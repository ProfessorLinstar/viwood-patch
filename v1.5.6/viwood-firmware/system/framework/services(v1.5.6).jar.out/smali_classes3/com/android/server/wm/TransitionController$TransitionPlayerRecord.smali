.class public Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;
.super Ljava/lang/Object;
.source "TransitionController.java"


# instance fields
.field public mDeath:Landroid/os/IBinder$DeathRecipient;

.field public final mPlayer:Landroid/window/ITransitionPlayer;

.field public mPlayerProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static synthetic $r8$lambda$gEZq8uiWirzpzHv9nqGklSU4lNU(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->lambda$linkToDeath$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPlayerProc(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TransitionController;Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1604
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    .line 1609
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 1610
    iput-object p3, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->linkToDeath()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1614
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to set transition player"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic lambda$linkToDeath$0()V
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 1624
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final linkToDeath()V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1621
    :cond_0
    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    .line 1626
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 3

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1632
    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Landroid/os/IBinder$DeathRecipient;

    :cond_1
    :goto_0
    return-void
.end method
