.class public Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;
.super Ljava/lang/Object;
.source "TransitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNeedReport:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1651
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1658
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-static {v0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->-$$Nest$fgetmAtm(Lcom/android/server/wm/TransitionController$RemotePlayer;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 1660
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
